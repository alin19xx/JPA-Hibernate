package entities;

import entities.Sheetmusic;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-05-08T17:55:42")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> password;
    public static volatile CollectionAttribute<User, Sheetmusic> sheetmusicCollection;
    public static volatile SingularAttribute<User, String> favourite;
    public static volatile SingularAttribute<User, String> username;

}