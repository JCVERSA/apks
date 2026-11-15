package of;

import kotlin.jvm.internal.Intrinsics;

public final class a implements b.InterfaceC0829b {

    private final String f67816c = "HttpLogger";

    @Override
    public void log(String message) {
        Intrinsics.h(message, "message");
        Intrinsics.q("log: ->> ", message);
    }
}
