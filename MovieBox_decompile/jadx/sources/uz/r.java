package uz;

import com.vungle.ads.internal.protos.Sdk$SDKError;

public class r extends y {

    static int[] f73370a;

    static int[] f73371b;

    static int f73372c;

    static String f73373d;

    public r() {
        f73370a = new int[]{2, 570425344, 0, 4096, 458752, 3, 0, 0, 1030, 1280, 0, 0, 0, 0, 0, 0, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306};
        f73371b = new int[]{Sdk$SDKError.Reason.AD_EXPIRED_VALUE, 286331153, 572662306, 1091653905, 303173905, 287445265};
        f73373d = "ISO-2022-JP";
        f73372c = 8;
    }

    @Override
    public int[] a() {
        return f73370a;
    }

    @Override
    public String b() {
        return f73373d;
    }

    @Override
    public boolean d() {
        return false;
    }

    @Override
    public int e() {
        return f73372c;
    }

    @Override
    public int[] f() {
        return f73371b;
    }
}
