using app.elearning from '../db/data-model';

service eLearning {
    entity Categories as projection on elearning.Categories;
    entity Courses as projection on elearning.Courses;
}