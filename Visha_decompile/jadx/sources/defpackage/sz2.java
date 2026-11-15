package defpackage;

public interface sz2 {
    void a(String str);

    default void b(int i) {
    }

    void onFail(String str);

    default void onStart() {
    }
}
