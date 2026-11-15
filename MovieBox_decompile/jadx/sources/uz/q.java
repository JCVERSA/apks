package uz;

import com.vungle.ads.internal.protos.Sdk$SDKError;

public class q extends y {

    static int[] f73366a;

    static int[] f73367b;

    static int f73368c;

    static String f73369d;

    public q() {
        f73366a = new int[]{2, 0, 0, 4096, 0, 48, 0, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306};
        f73367b = new int[]{Sdk$SDKError.Reason.AD_EXPIRED_VALUE, 286331152, 572662289, 336663074, 286335249, 286331237, 286335249, 18944273};
        f73369d = "ISO-2022-CN";
        f73368c = 9;
    }

    @Override
    public int[] a() {
        return f73366a;
    }

    @Override
    public String b() {
        return f73369d;
    }

    @Override
    public boolean d() {
        return false;
    }

    @Override
    public int e() {
        return f73368c;
    }

    @Override
    public int[] f() {
        return f73367b;
    }
}
