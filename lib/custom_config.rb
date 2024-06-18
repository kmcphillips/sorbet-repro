# typed: strict
class CustomConfig
  extend T::Sig

  sig { params(config_class: T.class_of(Parent)).void }
  attr_writer :config_class

  sig { returns(T.class_of(Parent)) }
  def config_class
    @config_class ||= T.let(Child, T.nilable(T.class_of(Parent)))
  end
end
