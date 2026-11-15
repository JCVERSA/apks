package defpackage;

public interface qq5 {
    void debug(String str);

    void error(String str);

    void error(String str, Throwable th);

    String getName();

    void info(String str);

    void warn(String str);

    void warn(String str, Object obj);

    void warn(String str, Object obj, Object obj2);

    void warn(String str, Throwable th);
}
