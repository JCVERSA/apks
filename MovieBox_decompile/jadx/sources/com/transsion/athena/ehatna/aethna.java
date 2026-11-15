package com.transsion.athena.ehatna;

import android.annotation.SuppressLint;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.athena.data.Track;
import com.transsion.ga.AthenaAnalytics;
import java.io.FileInputStream;
import java.io.IOException;
import m4.a;
import org.json.JSONObject;

public class aethna {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile aethna f41582a;

    private athena f41583b;

    private String f41584c;

    private boolean f41585d;

    private long f41586e = -1;

    private volatile boolean f41587f;

    private aethna() {
    }

    public static aethna b() {
        if (f41582a == null) {
            synchronized (aethna.class) {
                try {
                    if (f41582a == null) {
                        f41582a = new aethna();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f41582a;
    }

    public void a(Track track) {
        if (!this.f41585d) {
            if (TextUtils.isEmpty(this.f41584c)) {
                return;
            }
            track.setBootId(this.f41584c);
        } else {
            long trackErTs = this.f41583b.f41588a + (track.getTrackErTs() - this.f41583b.f41589b);
            if (trackErTs < 1633017600000L) {
                trackErTs = track.getTrackTs();
            }
            track.setTrackTs(trackErTs);
        }
    }

    public long c() {
        athena athenaVar = this.f41583b;
        if (athenaVar != null) {
            return athenaVar.f41588a - athenaVar.f41589b;
        }
        return 0L;
    }

    public void d() {
        FileInputStream fileInputStream;
        String strTrim;
        try {
            String strI = a.a(AthenaAnalytics.J()).i("base_time");
            com.transsion.athena.taaneh.aethna.a("baseTimeJs = " + strI);
            if (!TextUtils.isEmpty(strI)) {
                this.f41583b = new athena(strI);
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream("/proc/sys/kernel/random/boot_id");
            try {
                byte[] bArr = new byte[1024];
                int i10 = fileInputStream.read(bArr);
                if (i10 > 0) {
                    strTrim = new String(bArr, 0, i10).trim();
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
                this.f41584c = strTrim;
                if (this.f41583b != null) {
                    return;
                } else {
                    return;
                }
            } catch (Throwable th2) {
                th = th2;
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
        } catch (Throwable th3) {
            th = th3;
        }
        this.f41584c = strTrim;
        if (this.f41583b != null || TextUtils.isEmpty(strTrim)) {
            return;
        }
        if (!this.f41584c.equals(this.f41583b.f41590c)) {
            this.f41583b = null;
            a.a(AthenaAnalytics.J()).g("base_time", "");
        } else {
            if (Math.abs((this.f41583b.f41588a + (SystemClock.elapsedRealtime() - this.f41583b.f41589b)) - System.currentTimeMillis()) > 600000) {
                this.f41585d = true;
            }
        }
    }

    public boolean e() {
        return this.f41587f;
    }

    public boolean f() {
        if (this.f41586e > 0 && SystemClock.elapsedRealtime() - this.f41586e > 60000) {
            return false;
        }
        athena athenaVar = this.f41583b;
        return athenaVar == null || !TextUtils.equals(athenaVar.f41590c, this.f41584c);
    }

    public long a(long j10, long j11) {
        if (!this.f41585d) {
            return j10;
        }
        athena athenaVar = this.f41583b;
        return (athenaVar.f41588a + j11) - athenaVar.f41589b;
    }

    public String a() {
        return this.f41584c;
    }

    public void a(boolean z10) {
        this.f41587f = z10;
        if (z10) {
            this.f41586e = SystemClock.elapsedRealtime();
        }
    }

    public boolean a(long j10) {
        this.f41587f = false;
        this.f41586e = -1L;
        if (j10 > 1633017600000L) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f41583b = new athena(j10, SystemClock.elapsedRealtime(), this.f41584c);
            if (Math.abs(jCurrentTimeMillis - j10) > 600000) {
                this.f41585d = true;
            }
            try {
                if (!TextUtils.isEmpty(this.f41584c)) {
                    a aVarA = a.a(AthenaAnalytics.J());
                    athena athenaVar = this.f41583b;
                    athenaVar.getClass();
                    aVarA.g("base_time", new JSONObject().put("serverTime", athenaVar.f41588a).put("elapsedRealtime", athenaVar.f41589b).put("bootId", athenaVar.f41590c).toString());
                }
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            }
        } else {
            this.f41583b = new athena(System.currentTimeMillis(), SystemClock.elapsedRealtime(), this.f41584c);
            this.f41585d = false;
        }
        return this.f41585d;
    }
}
