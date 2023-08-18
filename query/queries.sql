-- @block 5.1 Count of listing per category
SELECT c.categoryName,
    COUNT(l.listingID) AS listingCount
FROM listing l
    LEFT JOIN category c ON c.categoryId = l.categoryId
GROUP BY c.categoryId
ORDER BY listingCount DESC;
-- BREAK
-- @block 5.2 Count of saved listings per user
SELECT u.userName,
    COUNT(s.listingID) AS savedListingCount
FROM savedListing s
    LEFT JOIN user u ON u.userID = s.userID
GROUP BY u.userID
ORDER BY savedListingCount DESC;
-- BREAK
-- @block 5.3 Count of active listings per seller
SELECT u.userName,
    COUNT(l.listingID) AS activeListingCount
FROM listing l
    INNER JOIN user u ON u.userID = l.sellerID
WHERE l.status = 'A'
GROUP BY l.sellerID
ORDER BY activeListingCount DESC;
-- BREAK
-- @block 5.4	Average number of messages exchanged per category  
SELECT c.categoryName,
    AVG(m.messageCount) AS averageMessageCount
FROM category c
    LEFT JOIN (
        SELECT l.categoryID,
            l.listingID,
            COUNT(m.messageID) AS messageCount
        FROM listing l
            LEFT JOIN message m ON m.listingID = l.listingID
        GROUP BY l.listingID
    ) m ON m.categoryID = c.categoryID
GROUP BY c.categoryID
ORDER BY averageMessageCount DESC;
-- BREAK
-- @block 5.8 Query product listing by title and location
SELECT listing.listingID,
    title,
    description,
    price,
    status,
    datePosted,
    category.categoryName,
    location.city,
    user.userName
FROM listing
    INNER JOIN location ON location.locationID = listing.locationID
    INNER JOIN category ON category.categoryID = listing.categoryID
    INNER JOIN user ON user.userID = listing.sellerID
WHERE title LIKE '%Canon%'
    AND location.city LIKE '%Bai%';
-- BREAK
-- @block 5.9 Number of searches by keyword
SELECT query,
    COUNT(searchID) AS searchCount
FROM search
WHERE query LIKE '%{keyword}%'
GROUP BY query
ORDER BY searchCount DESC;
-- BREAK
-- @block 5.10 Number of listings per month by category and growth rate
SELECT currentMonth.categoryID,
    currentMonth.categoryName,
    MONTHNAME(
        STR_TO_DATE(
            CONCAT('2023-', currentMonth.month, '-01'),
            "%Y-%m-%d"
        )
    ) as month,
    currentMonth.listingCount,
    IFNULL(
        (
            (
                currentMonth.listingCount - previousMonth.listingCount
            ) / previousMonth.listingCount
        ),
        0
    ) AS MoM_Growth_Rate
FROM (
        SELECT c.categoryID,
            c.categoryName,
            MONTH(l.datePosted) AS month,
            COUNT(l.listingID) AS listingCount
        FROM listing l
            LEFT JOIN category c ON c.categoryID = l.categoryID
        GROUP BY c.categoryID,
            c.categoryName,
            MONTH(l.datePosted)
    ) AS currentMonth
    LEFT JOIN (
        SELECT c.categoryID,
            c.categoryName,
            MONTH(l.datePosted) AS month,
            COUNT(l.listingID) AS listingCount
        FROM listing l
            LEFT JOIN category c ON c.categoryID = l.categoryID
        GROUP BY c.categoryID,
            c.categoryName,
            MONTH(l.datePosted)
    ) AS previousMonth ON currentMonth.categoryID = previousMonth.categoryID
    AND currentMonth.month = previousMonth.month + 1
ORDER BY currentMonth.categoryID ASC,
    currentMonth.month ASC,
    currentMonth.listingCount DESC;
-- BREAK
-- @block 5.11 Rank sellers by the total number of their listings in each location
SELECT loc.city,
    u.userName,
    COUNT(l.listingID) AS listingCount
FROM listing l
    INNER JOIN user u ON u.userID = l.sellerID
    INNER JOIN location loc ON loc.locationID = l.locationID
GROUP BY u.userID,
    l.locationID
ORDER BY listingCount DESC,
    city ASC;
-- BREAK
-- @block 5.12 Number of unique buyers per seller per listing
SELECT u.userID,
    l.listingID,
    u.userName,
    COUNT(DISTINCT m.receiverID) AS uniqueBuyerCount
FROM listing l
    INNER JOIN user u ON u.userID = l.sellerID
    INNER JOIN message m ON m.listingID = l.listingID
GROUP BY u.userID,
    l.listingID
ORDER BY u.userID ASC,
    l.listingID ASC,
    uniqueBuyerCount DESC;
-- BREAK