
            extern crate bar as the_bar;

            pub fn bar() { the_bar::baz(); }

            #[test]
            fn foo() { bar(); }
        