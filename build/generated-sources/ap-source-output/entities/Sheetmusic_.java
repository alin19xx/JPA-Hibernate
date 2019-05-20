package entities;

import entities.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-05-08T17:55:42")
@StaticMetamodel(Sheetmusic.class)
public class Sheetmusic_ { 

    public static volatile SingularAttribute<Sheetmusic, String> difficulty;
    public static volatile SingularAttribute<Sheetmusic, User> owner;
    public static volatile SingularAttribute<Sheetmusic, Boolean> printed;
    public static volatile SingularAttribute<Sheetmusic, Integer> idsheetmusic;
    public static volatile SingularAttribute<Sheetmusic, String> artist;
    public static volatile SingularAttribute<Sheetmusic, String> genre;
    public static volatile SingularAttribute<Sheetmusic, String> instrument;
    public static volatile SingularAttribute<Sheetmusic, String> title;

}