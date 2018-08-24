
--------------------------------------------------Unfinished---------------------------------------------
8. Make sure that every `vendor_sweet` association record **MUST** include a sweet and a comment.
  I would include validations for the presence of a sweet & comment in the vendor model

9. Make sure the flatiron staff cannot add more than one of the same sweets to a vendor.
  I would add a validation for numericality and greater than or equal to 1

10. After submitting this form we should end up in the same view we were just on, but this time we should be able to see the sweet along with its comment.
redirect to vendor show page

### Hints / Tips

+ Remember we want to be RESTful. What URL should show info about a particular vendor? What URL should create the vendor_sweet association? What controller actions are associated?

+ When creating the vendor_sweet association think about the various ways [Rails allows us to define associations between models](http://guides.rubyonrails.org/association_basics.html))
+ Read through this documentation if your having a bit of trouble figuring out how to make the [dropdown](http://guides.rubyonrails.org/form_helpers.html#making-select-boxes-with-ease)

+ Also remember that [Validations are very important](http://guides.rubyonrails.org/active_record_validations.html)
