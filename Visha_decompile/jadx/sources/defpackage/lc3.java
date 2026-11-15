package defpackage;

import android.content.Context;
import android.media.audiofx.BassBoost;
import android.media.audiofx.Equalizer;
import android.media.audiofx.PresetReverb;
import android.media.audiofx.Virtualizer;
import android.os.SystemClock;
import android.util.Log;
import androidx.p004lifecycle.MutableLiveData;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.hubsdk.api.media.TranAudioManager;
import java.util.ArrayList;
import java.util.List;

public abstract class lc3 {
    public static int a;
    public static Equalizer b;
    public static BassBoost c;
    public static PresetReverb d;
    public static Virtualizer e;
    public static mc3 f;
    public static final List g = new ArrayList();
    public static MutableLiveData h = new MutableLiveData();
    public static volatile Boolean i;
    public static volatile long j;

    public static void a(short s) {
        try {
            f.b = s;
            short s2 = 0;
            if (s != 0) {
                while (s2 < b.getNumberOfBands()) {
                    b.setBandLevel(s2, ((short[]) g.get(f.b - 1))[s2]);
                    s2 = (short) (s2 + 1);
                }
            } else {
                while (s2 < e()) {
                    b.setBandLevel(s2, f.c[s2]);
                    s2 = (short) (s2 + 1);
                }
            }
        } catch (Exception e2) {
            Log.i("EqSetting", "set eq equalizerPreset Exception:" + e2.getMessage());
        }
    }

    public static short b(short s) {
        try {
            return b.getBandLevel(s);
        } catch (Exception e2) {
            Log.i("EqSetting", "set eq getBandLevel Exception:" + e2.getMessage());
            return (short) 0;
        }
    }

    public static boolean c(Context context) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Boolean bool = i;
        if (i(bool, j, jElapsedRealtime, 2000L)) {
            return bool.booleanValue();
        }
        try {
            boolean zEquals = Boolean.TRUE.equals(Boolean.valueOf(new TranAudioManager().getDsOn()));
            i = Boolean.valueOf(zEquals);
            j = jElapsedRealtime;
            return zEquals;
        } catch (Throwable th) {
            Log.e("EqSetting", "getDsOn Exception:" + th);
            return false;
        }
    }

    public static boolean d() {
        mc3 mc3Var = f;
        return mc3Var != null && mc3Var.a;
    }

    public static short e() {
        try {
            return b.getNumberOfBands();
        } catch (Exception e2) {
            Log.i("EqSetting", "set eq getNumberOfBands Exception:" + e2.getMessage());
            return (short) 0;
        }
    }

    public static mc3 f() {
        if (f == null) {
            mc3 mc3VarA = mc3.a();
            f = mc3VarA;
            if (mc3VarA == null) {
                f = new mc3();
                Log.e("EqSetting", "getValues NULL");
            }
        }
        return f;
    }

    public static void g(int i2) {
        if (pp3.u) {
            mw2.e();
            return;
        }
        Log.i("EqSetting", "init: audioSession=" + i2);
        a = i2;
        try {
            b = new Equalizer(0, a);
            c = new BassBoost(0, a);
            d = new PresetReverb(0, a);
            e = new Virtualizer(0, a);
            List list = g;
            list.clear();
            list.add(new short[]{-100, -200, 500, 300, 500});
            list.add(new short[]{250, 150, -50, 150, 250});
            list.add(new short[]{-50, 100, 250, 50, -100});
            list.add(new short[]{250, 150, 0, 50, 150});
            list.add(new short[]{250, 150, -100, 200, 200});
            list.add(new short[]{300, 0, 100, 200, 50});
            list.add(new short[]{0, 0, 0, 0, 0});
            list.add(new short[]{200, 100, -100, 100, 250});
            list.add(new short[]{200, 50, 450, 150, 0});
            list.add(new short[]{150, 0, 0, 100, -50});
            mc3 mc3VarF = f();
            f = mc3VarF;
            if (mc3VarF.b > 0) {
                for (short s = 0; s < b.getNumberOfBands(); s = (short) (s + 1)) {
                    b.setBandLevel(s, ((short[]) g.get(f.b - 1))[s]);
                }
            } else {
                for (short s2 = 0; s2 < b.getNumberOfBands(); s2 = (short) (s2 + 1)) {
                    b.setBandLevel(s2, f.c[s2]);
                }
            }
            c.setStrength((short) 0);
            d.setPreset(f.d);
            e.setStrength(f.f);
            m(f.a);
        } catch (Exception e2) {
            Log.e("EqSetting", "EqSetting exception " + e2);
        }
    }

    public static void h() {
        i = null;
    }

    public static boolean i(Boolean bool, long j2, long j3, long j4) {
        return bool != null && j3 >= j2 && j3 - j2 < j4;
    }

    public static void j() {
        Log.i("EqSetting", "release");
        Equalizer equalizer = b;
        if (equalizer != null) {
            equalizer.release();
            b = null;
        }
        BassBoost bassBoost = c;
        if (bassBoost != null) {
            bassBoost.release();
            c = null;
        }
        PresetReverb presetReverb = d;
        if (presetReverb != null) {
            presetReverb.release();
            d = null;
        }
        Virtualizer virtualizer = e;
        if (virtualizer != null) {
            virtualizer.release();
            e = null;
        }
    }

    public static void k(short s, short s2) {
        try {
            b.setBandLevel(s, s2);
            f.c[s] = s2;
        } catch (Exception e2) {
            Log.i("EqSetting", "set eq setBandLevel Exception:" + e2.getMessage());
        }
    }

    public static void l(short s) {
        try {
            f.e = s;
            c.setStrength(s);
        } catch (Exception e2) {
            Log.i("EqSetting", "set eq setBassBoost Exception:" + e2.getMessage());
        }
    }

    public static void m(boolean z) {
        try {
            if (b == null || c == null || d == null || e == null) {
                Log.e("EqSetting", "setEnable equalizer == null");
                g(a);
            }
            int enabled = b.setEnabled(z);
            int enabled2 = c.setEnabled(z);
            int enabled3 = d.setEnabled(z);
            int enabled4 = e.setEnabled(z);
            f.a = z;
            LogUtils.w("EqSetting", "set eq value Enable:", Boolean.valueOf(z), Integer.valueOf(enabled), Integer.valueOf(enabled2), Integer.valueOf(enabled3), Integer.valueOf(enabled4));
        } catch (Exception e2) {
            Log.i("EqSetting", "set eq enable Exception:" + e2.getMessage());
        }
        h.postValue(Boolean.valueOf(f.a));
    }

    public static void n(short s) {
        try {
            f.d = s;
            d.setPreset(s);
        } catch (Exception e2) {
            Log.i("EqSetting", "set eq setPresetReverb Exception:" + e2.getMessage());
        }
    }

    public static void o(short s) {
        try {
            f.f = s;
            e.setStrength(s);
        } catch (Exception e2) {
            Log.i("EqSetting", "set eq setVirtualizer Exception:" + e2.getMessage());
        }
    }
}
