package defpackage;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.athena.data.Track;
import com.transsion.athena.ehatna.athena;
import com.transsion.ga.AthenaAnalytics;
import java.io.FileInputStream;
import java.io.IOException;
import org.json.JSONObject;

public class a4d {
    public static volatile a4d f;
    public athena a;
    public String b;
    public boolean c;
    public long d = -1;
    public volatile boolean e;

    public static a4d f() {
        if (f == null) {
            synchronized (a4d.class) {
                try {
                    if (f == null) {
                        f = new a4d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    public long a(long j, long j2) {
        if (!this.c) {
            return j;
        }
        athena athenaVar = this.a;
        return (athenaVar.a + j2) - athenaVar.b;
    }

    public String b() {
        return this.b;
    }

    public void c(Track track) {
        if (!this.c) {
            if (TextUtils.isEmpty(this.b)) {
                return;
            }
            track.setBootId(this.b);
        } else {
            long trackErTs = this.a.a + (track.getTrackErTs() - this.a.b);
            if (trackErTs < 1633017600000L) {
                trackErTs = track.getTrackTs();
            }
            track.setTrackTs(trackErTs);
        }
    }

    public void d(boolean z) {
        this.e = z;
        if (z) {
            this.d = SystemClock.elapsedRealtime();
        }
    }

    public boolean e(long j) {
        this.e = false;
        this.d = -1L;
        if (j > 1633017600000L) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.a = new athena(j, SystemClock.elapsedRealtime(), this.b);
            if (Math.abs(jCurrentTimeMillis - j) > 600000) {
                this.c = true;
            }
            try {
                if (!TextUtils.isEmpty(this.b)) {
                    e4d e4dVarA = e4d.a(AthenaAnalytics.I());
                    athena athenaVar = this.a;
                    athenaVar.getClass();
                    e4dVarA.g("base_time", new JSONObject().put("serverTime", athenaVar.a).put("elapsedRealtime", athenaVar.b).put("bootId", athenaVar.c).toString());
                }
            } catch (Exception e) {
                c4d.d(Log.getStackTraceString(e));
            }
        } else {
            this.a = new athena(System.currentTimeMillis(), SystemClock.elapsedRealtime(), this.b);
            this.c = false;
        }
        return this.c;
    }

    public long g() {
        athena athenaVar = this.a;
        if (athenaVar != null) {
            return athenaVar.a - athenaVar.b;
        }
        return 0L;
    }

    public void h() {
        FileInputStream fileInputStream;
        String strTrim;
        try {
            String strI = e4d.a(AthenaAnalytics.I()).i("base_time");
            c4d.b("baseTimeJs = " + strI);
            if (!TextUtils.isEmpty(strI)) {
                this.a = new athena(strI);
            }
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream("/proc/sys/kernel/random/boot_id");
            try {
                byte[] bArr = new byte[1024];
                int i = fileInputStream.read(bArr);
                if (i > 0) {
                    strTrim = new String(bArr, 0, i).trim();
                    try {
                        fileInputStream.close();
                    } catch (IOException unused) {
                    }
                } else {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused2) {
                    }
                    strTrim = null;
                }
            } catch (Exception unused3) {
                if (fileInputStream != null) {
                }
                strTrim = null;
                this.b = strTrim;
                if (this.a != null) {
                    return;
                } else {
                    return;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        this.b = strTrim;
        if (this.a != null || TextUtils.isEmpty(strTrim)) {
            return;
        }
        if (!this.b.equals(this.a.c)) {
            this.a = null;
            e4d.a(AthenaAnalytics.I()).g("base_time", "");
        } else {
            if (Math.abs((this.a.a + (SystemClock.elapsedRealtime() - this.a.b)) - System.currentTimeMillis()) > 600000) {
                this.c = true;
            }
        }
    }

    public boolean i() {
        return this.e;
    }

    public boolean j() {
        if (this.d > 0 && SystemClock.elapsedRealtime() - this.d > 60000) {
            return false;
        }
        athena athenaVar = this.a;
        return athenaVar == null || !TextUtils.equals(athenaVar.c, this.b);
    }
}
