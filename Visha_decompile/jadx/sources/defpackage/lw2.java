package defpackage;

import android.util.Log;
import com.tencent.mmkv.MMKV;
import com.transsion.gslb.NetResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class lw2 {
    public static final int[] d = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    public int a = 1;
    public List b = new ArrayList();
    public int[] c = {0, 2, 6, 12, 18};

    public lw2() {
        d();
    }

    public static int b(int i, int i2) {
        return (i - i2) / 4;
    }

    public static lw2 c() {
        lw2 lw2Var = (lw2) fi1.b(MMKV.p().m("dolby_audio_eq_value", NetResponse.EMPTY_RESPONSE), lw2.class);
        if (lw2Var != null && lw2Var.f()) {
            lw2Var.j();
        }
        return lw2Var;
    }

    public static int g(int i) {
        return i;
    }

    public static void l(lw2 lw2Var) {
        MMKV.p().w("dolby_audio_eq_value", fi1.e(lw2Var));
    }

    public int a() {
        return this.a;
    }

    public void d() {
        this.b.clear();
        this.b.add(new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0});
        e();
    }

    public final void e() {
        this.b.add(new int[]{-10, -10, -14, -16, -18, -20, -1, 16, 33, 50, 45, 40, 35, 30, 35, 40, 45, 50, 50, 50});
        this.b.add(new int[]{25, 25, 21, 19, 17, 15, 10, 5, 0, -5, 0, 5, 10, 15, 19, 21, 23, 25, 25, 25});
        this.b.add(new int[]{-5, -5, 1, 4, 7, 10, 16, 19, 22, 25, 20, 15, 10, 5, -1, -4, -7, -10, -10, -10});
        this.b.add(new int[]{25, 25, 21, 19, 17, 15, 9, 6, 3, 0, 2, 3, 4, 5, 9, 11, 13, 15, 15, 15});
        this.b.add(new int[]{25, 25, 21, 19, 17, 15, 8, 2, -4, -10, -1, 6, 13, 20, 20, 20, 20, 20, 20, 20});
        this.b.add(new int[]{30, 30, 21, 14, 7, 0, 4, 6, 8, 10, 14, 16, 18, 20, 14, 11, 8, 5, 5, 5});
        this.b.add(new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0});
        this.b.add(new int[]{20, 20, 16, 14, 12, 10, 5, 0, -5, -10, -5, 0, 5, 10, 16, 19, 22, 25, 25, 25});
        this.b.add(new int[]{20, 20, 14, 11, 8, 5, 15, 25, 35, 45, 36, 29, 22, 15, 9, 6, 3, 0, 0, 0});
        this.b.add(new int[]{15, 15, 9, 6, 3, 0, 0, 0, 0, 0, 4, 6, 8, 10, 4, 1, -2, -5, -5, -5});
    }

    public boolean f() {
        int[] iArrK;
        try {
            List list = this.b;
            if (list != null && list.size() > 1 && (iArrK = k(this.b.get(1))) != null && iArrK.length > 1) {
                return iArrK[1] == 0;
            }
            Log.e("DolbyAudioEqValue", "Invalid preset structure in isOldPreset");
            return false;
        } catch (Exception e) {
            Log.e("DolbyAudioEqValue", "Exception in isOldPreset: " + e.getMessage());
        }
    }

    public void h(int[] iArr, int[] iArr2, int i) {
        if (iArr == null || iArr.length != 20 || iArr2 == null || iArr2.length != 20) {
            Log.e("DolbyAudioEqValue", "mappingBandGain: invalid param");
            return;
        }
        int[] iArr3 = this.c;
        int i2 = iArr3[i];
        if (i == 0) {
            iArr[i] = iArr2[i2];
            int i3 = i + 1;
            iArr[i3] = iArr2[i2];
            int iB = b(iArr2[i2], iArr2[iArr3[i3]]);
            iArr[i + 2] = iArr2[i2] - iB;
            iArr[i + 3] = iArr2[i2] - (iB * 2);
            iArr[i + 4] = iArr2[i2] - (iB * 3);
            return;
        }
        if (i == 4) {
            int iB2 = b(iArr2[iArr3[i - 1]], iArr2[i2]);
            int i4 = i * 4;
            iArr[i4 - 2] = iArr2[i2] + (iB2 * 3);
            iArr[i4 - 1] = iArr2[i2] + (iB2 * 2);
            iArr[i4] = iArr2[i2] + iB2;
            iArr[i4 + 1] = iArr2[i2];
            iArr[i4 + 2] = iArr2[i2];
            iArr[i4 + 3] = iArr2[i2];
            return;
        }
        int iB3 = b(iArr2[iArr3[i - 1]], iArr2[i2]);
        int i5 = i * 4;
        iArr[i5 - 2] = iArr2[i2] + (iB3 * 3);
        iArr[i5 - 1] = iArr2[i2] + (iB3 * 2);
        iArr[i5] = iArr2[i2] + iB3;
        int iB4 = b(iArr2[i2], iArr2[this.c[i + 1]]);
        iArr[i5 + 1] = iArr2[i2];
        iArr[i5 + 2] = iArr2[i2] - iB4;
        iArr[i5 + 3] = iArr2[i2] - (iB4 * 2);
        iArr[i5 + 4] = (iArr2[i2] - iB4) * 3;
    }

    public final int[] i(int[] iArr) {
        int[] iArr2 = new int[20];
        for (int i = 0; i < this.c.length; i++) {
            h(iArr2, iArr, i);
        }
        Log.d("DolbyAudioEqValue", "BandGains mapping before:" + Arrays.toString(iArr) + "\n\rBandGains mapping after:" + Arrays.toString(iArr2));
        return iArr2;
    }

    public void j() {
        try {
            List list = this.b;
            if (list != null && !list.isEmpty()) {
                int[] iArrK = k(this.b.get(0));
                if (iArrK == null) {
                    Log.e("DolbyAudioEqValue", "Failed to get custom gains in resetPreset");
                    d();
                    return;
                } else {
                    int[] iArrI = i(iArrK);
                    this.b.clear();
                    this.b.add(iArrI);
                    e();
                    return;
                }
            }
            Log.e("DolbyAudioEqValue", "preset is null or empty in resetPreset");
        } catch (Exception e) {
            Log.e("DolbyAudioEqValue", "Exception in resetPreset: " + e.getMessage());
            d();
        }
    }

    public final int[] k(Object obj) {
        if (obj == null) {
            Log.e("DolbyAudioEqValue", "Object is null in safeGetIntArray");
            return null;
        }
        if (obj instanceof int[]) {
            return (int[]) obj;
        }
        if (!(obj instanceof ArrayList)) {
            Log.e("DolbyAudioEqValue", "Unsupported object type in safeGetIntArray: " + obj.getClass().getSimpleName());
            return null;
        }
        try {
            ArrayList arrayList = (ArrayList) obj;
            int size = arrayList.size();
            int[] iArr = new int[size];
            for (int i = 0; i < arrayList.size(); i++) {
                Object obj2 = arrayList.get(i);
                if (!(obj2 instanceof Number)) {
                    Log.e("DolbyAudioEqValue", "Non-numeric item in ArrayList at index " + i + ": " + obj2);
                    return null;
                }
                iArr[i] = ((Number) obj2).intValue();
            }
            Log.d("DolbyAudioEqValue", "Successfully converted ArrayList to int[] with size: " + size);
            return iArr;
        } catch (Exception e) {
            Log.e("DolbyAudioEqValue", "Failed to convert ArrayList to int[]: " + e.getMessage());
            return null;
        }
    }

    public void m(int i) {
        this.a = i;
    }
}
