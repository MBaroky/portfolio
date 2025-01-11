CREATE MIGRATION m1suvxdb7dxtvyfxoxtbojmdmprwqjhmk34fiwrzcozll3tdncsxoa
    ONTO m16hm3iw3qgy4gakrtxzskbdbrauv7qpcbfps6yrreafi45effktta
{
  ALTER TYPE default::Movie {
      DROP LINK actors;
  };
  ALTER TYPE default::Movie RENAME TO default::BlogPost;
  ALTER TYPE default::BlogPost {
      CREATE REQUIRED PROPERTY content: std::str {
          SET default := '';
      };
  };
  DROP TYPE default::Person;
};
