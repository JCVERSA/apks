package defpackage;

import android.media.audiofx.BassBoost;
import android.media.audiofx.Equalizer;
import android.media.audiofx.PresetReverb;
import android.media.audiofx.Virtualizer;
import android.util.Log;
import androidx.p004lifecycle.MutableLiveData;
import com.blankj.utilcode.util.LogUtils;

public abstract class jrb {
    public static int a;
    public static Equalizer b;
    public static BassBoost c;
    public static PresetReverb d;
    public static Virtualizer e;
    public static krb f;
    public static MutableLiveData g = new MutableLiveData();

    public static void a(short s) {
        try {
            f.b = s;
            if (s != 0) {
                b.usePreset((short) (s - 1));
                return;
            }
            for (short s2 = 0; s2 < d(); s2 = (short) (s2 + 1)) {
                b.setBandLevel(s2, f.c[s2]);
            }
        } catch (Exception e2) {
            Log.i("EqSetting_Video", "set eq equalizerPreset Exception:" + e2.getMessage());
        }
    }

    public static short b(short s) {
        try {
            return b.getBandLevel(s);
        } catch (Exception e2) {
            Log.i("EqSetting_Video", "set eq getBandLevel Exception:" + e2.getMessage());
            return (short) 0;
        }
    }

    public static boolean c() {
        krb krbVar = f;
        return krbVar != null && krbVar.a;
    }

    public static short d() {
        try {
            return b.getNumberOfBands();
        } catch (Exception e2) {
            Log.i("EqSetting_Video", "set eq getNumberOfBands Exception:" + e2.getMessage());
            return (short) 0;
        }
    }

    public static krb e() {
        if (f == null) {
            krb krbVarA = krb.a();
            f = krbVarA;
            if (krbVarA == null) {
                f = new krb();
                Log.e("EqSetting_Video", "getValues NULL");
            }
        }
        return f;
    }

    public static void f(int i) {
        Log.i("EqSetting_Video", "init:" + i);
        a = i;
        try {
            b = new Equalizer(0, a);
            c = new BassBoost(0, a);
            d = new PresetReverb(0, a);
            e = new Virtualizer(0, a);
            krb krbVarE = e();
            f = krbVarE;
            short s = krbVarE.b;
            if (s > 0) {
                b.usePreset((short) (s - 1));
            } else {
                for (short s2 = 0; s2 < b.getNumberOfBands(); s2 = (short) (s2 + 1)) {
                    b.setBandLevel(s2, f.c[s2]);
                }
            }
            c.setStrength(f.e);
            d.setPreset(f.d);
            e.setStrength(f.f);
            i(f.a);
        } catch (Exception e2) {
            Log.e("EqSetting_Video", "EqSetting exception " + e2);
        }
    }

    public static void g(short s, short s2) {
        try {
            b.setBandLevel(s, s2);
            f.c[s] = s2;
        } catch (Exception e2) {
            Log.i("EqSetting_Video", "set eq setBandLevel Exception:" + e2.getMessage());
        }
    }

    public static void h(short s) {
        try {
            f.e = s;
            c.setStrength(s);
        } catch (Exception e2) {
            Log.i("EqSetting_Video", "set eq setBassBoost Exception:" + e2.getMessage());
        }
    }

    public static void i(boolean z) {
        try {
            if (b == null || c == null || d == null || e == null) {
                Log.e("EqSetting_Video", "setEnable equalizer == null");
                f(a);
            }
            Equalizer equalizer = b;
            if (equalizer != null && c != null && d != null && e != null) {
                LogUtils.w("EqSetting_Video", "set eq value Enable:", Boolean.valueOf(z), Integer.valueOf(equalizer.setEnabled(z)), Integer.valueOf(c.setEnabled(z)), Integer.valueOf(d.setEnabled(z)), Integer.valueOf(e.setEnabled(z)));
            }
            f.a = z;
        } catch (IllegalStateException e2) {
            Log.i("EqSetting_Video", "set eq enable Exception:" + e2.getMessage());
        }
        g.postValue(Boolean.valueOf(f.a));
    }

    public static void j(short s) {
        try {
            f.f = s;
            e.setStrength(s);
        } catch (Exception e2) {
            Log.i("EqSetting_Video", "set eq setVirtualizer Exception:" + e2.getMessage());
        }
    }
}
