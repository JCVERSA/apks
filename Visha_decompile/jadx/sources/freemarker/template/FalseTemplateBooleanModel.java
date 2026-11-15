package freemarker.template;

final class FalseTemplateBooleanModel implements SerializableTemplateBooleanModel {
    private Object readResolve() {
        return a.y6;
    }

    @Override
    public boolean getAsBoolean() {
        return false;
    }
}
