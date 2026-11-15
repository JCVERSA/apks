package defpackage;

import android.util.Log;
import com.transsion.hubsdk.api.media.TranAudioManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class mw2 {
    public static a a;
    public static lw2 b;
    public static boolean c;

    public static class a {
        public TranAudioManager a = new TranAudioManager();

        public boolean a() {
            try {
                return Boolean.TRUE.equals(Boolean.valueOf(this.a.getDsOn()));
            } catch (Throwable th) {
                Log.e("DolbyAudioSetting", "getDsOn failed", th);
                return false;
            }
        }

        public void b(int[] iArr) {
            Log.d("DolbyAudioSetting", "setGeqBandGains:" + Arrays.toString(iArr));
            this.a.setGeqBandGains(iArr);
        }
    }

    public static void a() {
        a aVar = a;
        if (aVar == null) {
            return;
        }
        try {
            boolean zA = aVar.a();
            c = zA;
            if (zA) {
                a.b(lw2.d);
            }
        } catch (Throwable th) {
            Log.e("DolbyAudioSetting", "end getDsOn failed", th);
            c = false;
        }
    }

    public static int b() {
        lw2 lw2Var = b;
        if (lw2Var != null) {
            return lw2Var.c.length;
        }
        return 0;
    }

    public static int c(int i, int i2) {
        List list;
        lw2 lw2Var;
        int[] iArr;
        int[] iArrF;
        int i3;
        try {
            lw2 lw2Var2 = b;
            if (lw2Var2 != null && (list = lw2Var2.b) != null && i >= 0 && i < list.size() && (iArr = (lw2Var = b).c) != null && i2 >= 0 && i2 < iArr.length && (iArrF = f(lw2Var.b.get(i))) != null && (i3 = b.c[i2]) < iArrF.length) {
                return iArrF[i3];
            }
            Log.e("DolbyAudioSetting", "Invalid parameters for getPresetBandGains, which: " + i + ", index: " + i2);
            return 0;
        } catch (Exception e) {
            Log.i("DolbyAudioSetting", "set eq getBandLevel Exception:" + e.getMessage());
            return 0;
        }
    }

    public static lw2 d() {
        if (b == null) {
            lw2 lw2VarC = lw2.c();
            b = lw2VarC;
            if (lw2VarC == null) {
                b = new lw2();
                Log.e("DolbyAudioSetting", "getValues NULL");
            }
        }
        return b;
    }

    public static void e() {
        try {
            b = d();
            a aVar = new a();
            a = aVar;
            c = aVar.a();
            lc3.h.postValue(Boolean.valueOf(c));
            if (c) {
                g(b.a() == -1 ? 0 : b.a());
            }
        } catch (Exception e) {
            Log.e("DolbyAudioSetting", "EqSetting exception " + e);
        }
    }

    public static int[] f(Object obj) {
        if (obj == null) {
            Log.e("DolbyAudioSetting", "Object is null in safeGetIntArray");
            return null;
        }
        if (obj instanceof int[]) {
            return (int[]) obj;
        }
        if (!(obj instanceof ArrayList)) {
            Log.e("DolbyAudioSetting", "Unsupported object type in safeGetIntArray: " + obj.getClass().getSimpleName());
            return null;
        }
        try {
            ArrayList arrayList = (ArrayList) obj;
            int size = arrayList.size();
            int[] iArr = new int[size];
            for (int i = 0; i < arrayList.size(); i++) {
                Object obj2 = arrayList.get(i);
                if (!(obj2 instanceof Number)) {
                    Log.e("DolbyAudioSetting", "Non-numeric item in ArrayList at index " + i + ": " + obj2);
                    return null;
                }
                iArr[i] = ((Number) obj2).intValue();
            }
            Log.d("DolbyAudioSetting", "Successfully converted ArrayList to int[] with size: " + size);
            return iArr;
        } catch (Exception e) {
            Log.e("DolbyAudioSetting", "Failed to convert ArrayList to int[]: " + e.getMessage());
            return null;
        }
    }

    public static void g(int i) {
        List list;
        try {
            lw2 lw2Var = b;
            if (lw2Var == null || (list = lw2Var.b) == null || i < 0 || i >= list.size()) {
                Log.e("DolbyAudioSetting", "Invalid parameters for setGeqBandGains, index: " + i);
            } else {
                int[] iArrF = f(b.b.get(i));
                if (iArrF != null) {
                    a.b(iArrF);
                    b.m(i);
                } else {
                    Log.e("DolbyAudioSetting", "Failed to get valid gains array for index: " + i);
                }
            }
        } catch (Exception e) {
            Log.e("DolbyAudioSetting", "set eq setBandLevel Exception: " + e.getMessage());
        }
    }

    public static void h() {
        a aVar = a;
        if (aVar == null) {
            return;
        }
        try {
            c = aVar.a();
            lc3.h.postValue(Boolean.valueOf(c));
            if (c) {
                g(b.a() == -1 ? 0 : b.a());
            }
        } catch (Throwable th) {
            Log.e("DolbyAudioSetting", "start getDsOn failed", th);
            c = false;
        }
    }
}
