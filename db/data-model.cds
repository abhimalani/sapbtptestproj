namespace app.elearning;

using {
    Language,
    managed
} from '@sap/cds/common';

type string50 : String(50);

@odata.draft.enabled
entity Categories {
    key ID          : UUID;
        name        : string50;
        description : String(100);
        courses     : Association to many Courses
                          on courses.category = $self;
}

@odata.draft.enabled
entity Courses : managed {
    key category    : Association to Categories;
    key course_id   : UUID;
        course_name : string50;
        price       : String(10);
        language    : Language;
}
