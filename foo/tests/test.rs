
            extern crate foo as the_foo;
use std::env;
            #[test]
            fn foo() { 
                println!("{:?}", env::var("LD_LIBRARY_PATH"));
                the_foo::bar(); 
                //assert!(false);
                }
        