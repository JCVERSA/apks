package freemarker.template;

final class TrueTemplateBooleanModel implements SerializableTemplateBooleanModel {
    private Object readResolve() {
        return a.z6;
    }

    @Override
    public boolean getAsBoolean() {
        return true;
    }
}
