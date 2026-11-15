package og;

import javax.security.auth.callback.Callback;

public interface b extends Callback {
    void a(String str);

    void b(String str, Throwable th2);

    void onCompleted(String str);
}
