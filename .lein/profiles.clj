{:user 
 {:plugins 
  ;;zprint style code formatting
    [[lein-zprint "0.5.3"]
  ;;cljfmt style code formatting
     [lein-cljfmt "0.6.5"]
  ;;a task-re-runner
     [lein-auto "0.1.3"]]

  :dependencies
    ;;use kondo linting 
    [[clj-kondo "RELEASE"]]
  :aliases 
    {"clj-kondo" ["run" "-m" "clj-kondo.main"]}}}
        
