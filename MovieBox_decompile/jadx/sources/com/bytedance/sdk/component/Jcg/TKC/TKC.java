package com.bytedance.sdk.component.Jcg.TKC;

public class TKC {
    private Sj Sj;
    private sP sP;

    public enum Sj {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    private static class C0195TKC {
        private static final TKC Sj = new TKC();
    }

    public interface sP {
    }

    public static void Sj(Sj sj2) {
        synchronized (TKC.class) {
            C0195TKC.Sj.Sj = sj2;
        }
    }

    private TKC() {
        this.Sj = Sj.OFF;
        this.sP = new com.bytedance.sdk.component.Jcg.TKC.sP();
    }
}
