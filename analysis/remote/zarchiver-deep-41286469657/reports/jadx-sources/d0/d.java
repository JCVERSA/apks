package d0;

import java.text.DateFormat;
import ru.zdevs.zarchiver.media.MimeLib;

public class d {

    public static final DateFormat f537i = DateFormat.getDateInstance(3);

    public static final DateFormat f538j = DateFormat.getTimeInstance(3);

    public String f539a;

    public final String f540b;

    public final long f541c;

    public final long f542d;

    public byte f543e;

    public byte f544f;

    public boolean f545g;

    public Object f546h;

    public d(String str, byte b2) {
        this.f539a = str;
        this.f540b = null;
        this.f543e = b2;
        this.f544f = (byte) 0;
        this.f541c = -1L;
        this.f542d = 0L;
        this.f545g = false;
        this.f546h = null;
    }

    public final void a(String str) {
        byte bCGetType;
        byte bD = d();
        byte b2 = this.f544f;
        if (bD == -2 || b2 == -1) {
            byte b3 = 0;
            try {
                bCGetType = (byte) MimeLib.cGetType(str + this.f539a);
            } catch (UnsatisfiedLinkError unused) {
                bCGetType = 0;
            }
            if (bD == -2) {
                bD = bCGetType;
            }
            if (bCGetType != 0) {
                b3 = b2 == -1 ? (byte) 30 : (byte) 29;
            }
            this.f543e = bD;
            if (this.f544f <= 0) {
                this.f544f = b3;
            }
        }
    }

    public final long b() {
        long j2 = this.f541c;
        if (j2 < 0) {
            return 0L;
        }
        return j2;
    }

    public final String c(boolean z2) {
        String str = "";
        if (g()) {
            return "";
        }
        long j2 = this.f542d;
        if (j2 == -2) {
            return "<LINK>";
        }
        if (z2) {
            z2 = this.f546h != null;
        }
        if (this.f543e == 4) {
            return z2 ? this.f546h.toString() : "<DIR>";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(v0.h.b(j2, 0, null));
        if (z2) {
            str = "  \t•\t" + this.f546h;
        }
        sb.append(str);
        return sb.toString();
    }

    public final byte d() {
        if (this.f543e == -1) {
            byte bE = a0.c.E(this.f539a);
            this.f543e = bE;
            if (bE == 0) {
                if (this.f542d > 200) {
                    this.f543e = (byte) -2;
                }
            } else if (this.f544f == 0) {
                if (bE == 23 || bE == 25 || bE == 15) {
                    this.f544f = (byte) -1;
                }
            }
        }
        return this.f543e;
    }

    public final int e(h0.h hVar) {
        return ((f() ? 2566 : (int) this.f542d) << 16) ^ (this.f539a.hashCode() + hVar.hashCode());
    }

    public final boolean f() {
        byte b2 = this.f543e;
        return b2 == 4 || b2 == 3;
    }

    public final boolean g() {
        return this.f543e == 3;
    }

    public final boolean h() {
        return this.f543e != 3;
    }

    public d(String str, byte b2, byte b3, long j2, long j3) {
        this.f539a = str;
        this.f540b = null;
        this.f543e = b2;
        this.f544f = b3;
        this.f541c = j2;
        this.f542d = j3;
        this.f545g = false;
        this.f546h = null;
    }

    public d(String str, String str2, byte b2, byte b3, long j2, long j3) {
        this.f539a = str;
        this.f540b = str2;
        this.f543e = b2;
        this.f544f = b3;
        this.f541c = j2;
        this.f542d = j3;
        this.f545g = false;
        this.f546h = null;
    }
}
