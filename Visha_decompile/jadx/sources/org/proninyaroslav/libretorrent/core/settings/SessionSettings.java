package org.proninyaroslav.libretorrent.core.settings;

import java.util.Random;
import org.libtorrent4j.Pair;

public class SessionSettings {
    public static final EncryptMode R = EncryptMode.ENABLED;
    public static final ProxyType S = ProxyType.NONE;
    public static final boolean T = false;
    public boolean A;
    public boolean B;
    public String C;
    public String D;
    public boolean E;
    public boolean F;
    public boolean G;
    public int H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public boolean M;
    public boolean N;
    public String[] O;
    public boolean P;
    public boolean Q;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;
    public EncryptMode u;
    public boolean v;
    public String w;
    public ProxyType x;
    public String y;
    public int z;

    public enum EncryptMode {
        ENABLED(0),
        FORCED(1),
        DISABLED(2);

        private final int val;

        EncryptMode(int i) {
            this.val = i;
        }

        public static EncryptMode fromValue(int i) {
            for (EncryptMode encryptMode : (EncryptMode[]) EncryptMode.class.getEnumConstants()) {
                if (encryptMode.value() == i) {
                    return encryptMode;
                }
            }
            throw new IllegalArgumentException("Invalid value");
        }

        public int value() {
            return this.val;
        }
    }

    public enum ProxyType {
        NONE(0),
        SOCKS4(1),
        SOCKS5(2),
        HTTP(3);

        private final int value;

        ProxyType(int i) {
            this.value = i;
        }

        public static ProxyType fromValue(int i) {
            for (ProxyType proxyType : (ProxyType[]) ProxyType.class.getEnumConstants()) {
                if (proxyType.value() == i) {
                    return proxyType;
                }
            }
            return NONE;
        }

        public int value() {
            return this.value;
        }
    }

    public SessionSettings() {
        this.a = 4;
        this.b = 4;
        this.c = 200;
        this.d = 1000;
        this.e = 60;
        this.f = 200;
        this.g = 40;
        this.h = 4;
        this.i = 6;
        this.j = 37000;
        this.k = 57010;
        this.l = 0;
        this.m = 0;
        this.n = true;
        this.o = true;
        this.p = true;
        this.q = true;
        this.r = true;
        this.s = true;
        this.t = true;
        this.u = R;
        this.v = false;
        this.w = "0.0.0.0";
        this.x = S;
        this.y = "";
        this.z = 8080;
        this.A = true;
        this.B = false;
        this.C = "";
        this.D = "";
        this.E = false;
        this.F = true;
        this.G = T;
        this.H = 10000;
        this.I = false;
        this.J = true;
        this.K = true;
        this.L = true;
        this.M = true;
        this.N = true;
        this.O = new String[0];
        this.P = true;
        this.Q = false;
    }

    public static Pair a() {
        int iNextInt = new Random().nextInt(20000);
        return new Pair(Integer.valueOf(37000 + iNextInt), Integer.valueOf(iNextInt + 37010));
    }

    public SessionSettings(SessionSettings sessionSettings) {
        this.a = 4;
        this.b = 4;
        this.c = 200;
        this.d = 1000;
        this.e = 60;
        this.f = 200;
        this.g = 40;
        this.h = 4;
        this.i = 6;
        this.j = 37000;
        this.k = 57010;
        this.l = 0;
        this.m = 0;
        this.n = true;
        this.o = true;
        this.p = true;
        this.q = true;
        this.r = true;
        this.s = true;
        this.t = true;
        this.u = R;
        this.v = false;
        this.w = "0.0.0.0";
        this.x = S;
        this.y = "";
        this.z = 8080;
        this.A = true;
        this.B = false;
        this.C = "";
        this.D = "";
        this.E = false;
        this.F = true;
        this.G = T;
        this.H = 10000;
        this.I = false;
        this.J = true;
        this.K = true;
        this.L = true;
        this.M = true;
        this.N = true;
        this.O = new String[0];
        this.P = true;
        this.Q = false;
        this.a = sessionSettings.a;
        this.b = sessionSettings.b;
        this.c = sessionSettings.c;
        this.d = sessionSettings.d;
        this.e = sessionSettings.e;
        this.f = sessionSettings.f;
        this.g = sessionSettings.g;
        this.h = sessionSettings.h;
        this.i = sessionSettings.i;
        this.j = sessionSettings.j;
        this.k = sessionSettings.k;
        this.l = sessionSettings.l;
        this.m = sessionSettings.m;
        this.n = sessionSettings.n;
        this.o = sessionSettings.o;
        this.p = sessionSettings.p;
        this.q = sessionSettings.q;
        this.r = sessionSettings.r;
        this.s = sessionSettings.s;
        this.t = sessionSettings.t;
        this.u = sessionSettings.u;
        this.v = sessionSettings.v;
        this.w = sessionSettings.w;
        this.x = sessionSettings.x;
        this.y = sessionSettings.y;
        this.z = sessionSettings.z;
        this.A = sessionSettings.A;
        this.B = sessionSettings.B;
        this.C = sessionSettings.C;
        this.D = sessionSettings.D;
        this.E = sessionSettings.E;
        this.F = sessionSettings.F;
        this.G = sessionSettings.G;
        this.H = sessionSettings.H;
        this.I = sessionSettings.I;
        this.J = sessionSettings.J;
        this.K = sessionSettings.K;
        this.L = sessionSettings.L;
        this.M = sessionSettings.M;
        this.N = sessionSettings.N;
        this.O = sessionSettings.O;
        this.P = sessionSettings.P;
        this.Q = sessionSettings.Q;
    }
}
