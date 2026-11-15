package androidx.datastore.preferences.protobuf;

class u implements m0 {

    private static final u f8600a = new u();

    private u() {
    }

    public static u a() {
        return f8600a;
    }

    @Override
    public boolean isSupported(Class cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }

    @Override
    public l0 messageInfoFor(Class cls) {
        if (!GeneratedMessageLite.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
        }
        try {
            return (l0) GeneratedMessageLite.t(cls.asSubclass(GeneratedMessageLite.class)).i();
        } catch (Exception e10) {
            throw new RuntimeException("Unable to get message info for " + cls.getName(), e10);
        }
    }
}
