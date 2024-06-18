# Repro for Sorbet bug

```ruby
$ bin/rails c
Loading development environment (Rails 7.1.3.4)
irb(main):001> Rails.configuration.custom.config_class
=> Child
irb(main):002> Rails.configuration.custom.config_class = Parent
=> Parent
irb(main):003> Rails.application.reloader.reload!
=> nil
irb(main):004> Rails.configuration.custom.config_class
=> Parent
irb(main):005> Rails.configuration.custom.config_class = Parent
(irb):5:in `<main>': Parameter 'config_class': Expected type T.class_of(Parent), got Parent (TypeError)
Caller: (irb):5
Definition: /private/tmp/test1/lib/custom_config.rb:6 (CustomConfig#config_class=)
```
