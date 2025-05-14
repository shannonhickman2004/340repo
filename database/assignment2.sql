-- Task 1: Insert Tony Stark
INSERT INTO public.account (
        account_firstname,
        account_lastname,
        account_email,
        account_password
    )
VALUES (
        'Tony',
        'Stark',
        'tony@starkent.com',
        'Iam1ronM@n'
    );

-- Task 2: Update Tony Stark's account_type to Admin
UPDATE public.account
SET account_type = 'Admin'
WHERE account_email = 'tony@starkent.com';

-- Task 3: Delete Tony Stark from the account table
DELETE FROM public.account
WHERE account_email = 'tony@starkent.com';

-- Task 4: Update GM Hummer description to say "a huge interior" instead of "small interiors"
UPDATE public.inventory
SET inv_description = REPLACE(
        inv_description,
        'small interiors',
        'a huge interior'
    )
WHERE inv_make = 'GM'
    AND inv_model = 'Hummer';

-- Task 5: Use an INNER JOIN to get make, model, and classification_name for Sport vehicles
SELECT i.inv_make,
    i.inv_model,
    c.classification_name
FROM public.inventory i
    INNER JOIN public.classification c ON i.classification_id = c.classification_id
WHERE c.classification_name = 'Sport';

-- Task 6: Update image paths to include '/vehicles/' in inv_image and inv_thumbnail
UPDATE public.inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');