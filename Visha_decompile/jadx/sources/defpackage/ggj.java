package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioProfile;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.OpusUtil;
import com.google.android.gms.internal.ads.l7;
import com.google.android.gms.internal.ads.m7;
import com.google.android.gms.internal.ads.s7;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzfwz;
import com.google.android.gms.internal.ads.zzfxb;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class ggj {
    public static final ggj c = new ggj(zzfww.zzo(egj.d));
    public static final zzfww d = zzfww.zzq(2, 5, 6);
    public static final zzfwz e;
    public final SparseArray a = new SparseArray();
    public final int b;

    static {
        l7 l7Var = new l7();
        l7Var.a(5, 6);
        l7Var.a(17, 6);
        l7Var.a(7, 6);
        l7Var.a(30, 10);
        l7Var.a(18, 6);
        l7Var.a(6, 8);
        l7Var.a(8, 8);
        l7Var.a(14, 8);
        e = l7Var.c();
    }

    public ggj(List list) {
        for (int i = 0; i < list.size(); i++) {
            egj egjVar = (egj) list.get(i);
            this.a.put(egjVar.a, egjVar);
        }
        int iMax = 0;
        for (int i2 = 0; i2 < this.a.size(); i2++) {
            iMax = Math.max(iMax, ((egj) this.a.valueAt(i2)).b);
        }
        this.b = iMax;
    }

    public static Uri a() {
        if (f()) {
            return Settings.Global.getUriFor("external_surround_sound_enabled");
        }
        return null;
    }

    public static ggj c(Context context, hvg hvgVar, sgj sgjVar) {
        return d(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), hvgVar, sgjVar);
    }

    public static ggj d(Context context, Intent intent, hvg hvgVar, sgj sgjVar) {
        AudioManager audioManagerC = fnf.c(context);
        if (sgjVar == null) {
            sgj sgjVar2 = null;
            if (kfh.a >= 33) {
                try {
                    List audioDevicesForAttributes = audioManagerC.getAudioDevicesForAttributes(hvgVar.a().a);
                    if (!audioDevicesForAttributes.isEmpty()) {
                        sgjVar2 = new sgj((AudioDeviceInfo) audioDevicesForAttributes.get(0));
                    }
                } catch (RuntimeException unused) {
                }
            }
            sgjVar = sgjVar2;
        }
        int i = kfh.a;
        if (i >= 33 && (kfh.n(context) || kfh.j(context))) {
            List directProfilesForAttributes = audioManagerC.getDirectProfilesForAttributes(hvgVar.a().a);
            HashMap map = new HashMap();
            map.put(2, new HashSet(s7.h(12)));
            for (int i2 = 0; i2 < directProfilesForAttributes.size(); i2++) {
                AudioProfile audioProfileA = gn.a(directProfilesForAttributes.get(i2));
                if (audioProfileA.getEncapsulationType() != 1) {
                    int format = audioProfileA.getFormat();
                    if (kfh.k(format) || e.containsKey(Integer.valueOf(format))) {
                        Integer numValueOf = Integer.valueOf(format);
                        if (map.containsKey(numValueOf)) {
                            Set set = (Set) map.get(numValueOf);
                            set.getClass();
                            set.addAll(s7.h(audioProfileA.getChannelMasks()));
                        } else {
                            map.put(numValueOf, new HashSet(s7.h(audioProfileA.getChannelMasks())));
                        }
                    }
                }
            }
            int i3 = zzfww.zzd;
            l4i l4iVar = new l4i();
            for (Map.Entry entry : map.entrySet()) {
                l4iVar.g(new egj(((Integer) entry.getKey()).intValue(), (Set) entry.getValue()));
            }
            return new ggj(l4iVar.j());
        }
        AudioDeviceInfo[] devices = sgjVar == null ? audioManagerC.getDevices(2) : new AudioDeviceInfo[]{sgjVar.a};
        m7 m7Var = new m7();
        m7Var.h(8, 7);
        if (i >= 31) {
            m7Var.h(26, 27);
        }
        if (i >= 33) {
            m7Var.g(30);
        }
        zzfxb zzfxbVarJ = m7Var.j();
        for (AudioDeviceInfo audioDeviceInfo : devices) {
            if (zzfxbVarJ.contains(Integer.valueOf(audioDeviceInfo.getType()))) {
                return c;
            }
        }
        m7 m7Var2 = new m7();
        m7Var2.g(2);
        if (i >= 29 && (kfh.n(context) || kfh.j(context))) {
            int i4 = zzfww.zzd;
            l4i l4iVar2 = new l4i();
            x5i it = e.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int iIntValue = num.intValue();
                if (i >= kfh.C(iIntValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(OpusUtil.SAMPLE_RATE).build(), hvgVar.a().a)) {
                    l4iVar2.g(num);
                }
            }
            l4iVar2.g(2);
            m7Var2.i(l4iVar2.j());
            return new ggj(e(s7.i(m7Var2.j()), 10));
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z = Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1;
        if ((z || f()) && Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            m7Var2.i(d);
        }
        if (intent == null || z || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            return new ggj(e(s7.i(m7Var2.j()), 10));
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            m7Var2.i(s7.h(intArrayExtra));
        }
        return new ggj(e(s7.i(m7Var2.j()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)));
    }

    public static zzfww e(int[] iArr, int i) {
        int i2 = zzfww.zzd;
        l4i l4iVar = new l4i();
        for (int i3 : iArr) {
            l4iVar.g(new egj(i3, i));
        }
        return l4iVar.j();
    }

    public static boolean f() {
        String str = Build.MANUFACTURER;
        return str.equals("Amazon") || str.equals("Xiaomi");
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002e  */
    /* JADX WARN: Code duplicated, block: B:14:0x0036  */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003a A[PHI: r1
      0x003a: PHI (r1v3 int) = (r1v2 int), (r1v7 int) binds: [B:11:0x002c, B:14:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:18:0x003e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0099  */
    public final Pair b(erj erjVar, hvg hvgVar) {
        String str = erjVar.o;
        str.getClass();
        int iA = bue.a(str, erjVar.k);
        if (!e.containsKey(Integer.valueOf(iA))) {
            return null;
        }
        int i = 8;
        if (iA != 18) {
            if (iA != 8) {
                if (iA == 30 && !kfh.h(this.a, 30)) {
                    iA = 7;
                }
            } else if (kfh.h(this.a, 8)) {
                iA = 8;
                if (iA == 30) {
                    iA = 7;
                }
            } else {
                iA = 7;
            }
        } else if (kfh.h(this.a, 18)) {
            iA = 18;
            if (iA != 8) {
                if (iA == 30) {
                    iA = 7;
                }
            } else if (kfh.h(this.a, 8)) {
                iA = 8;
                if (iA == 30) {
                    iA = 7;
                }
            } else {
                iA = 7;
            }
        } else {
            iA = 6;
        }
        SparseArray sparseArray = this.a;
        if (!kfh.h(sparseArray, iA)) {
            return null;
        }
        egj egjVar = (egj) sparseArray.get(iA);
        egjVar.getClass();
        int iA2 = erjVar.E;
        if (iA2 == -1 || iA == 18) {
            int i2 = erjVar.F;
            if (i2 == -1) {
                i2 = OpusUtil.SAMPLE_RATE;
            }
            iA2 = egjVar.a(i2, hvgVar);
        } else if (!str.equals(MimeTypes.AUDIO_DTS_X) || kfh.a >= 33) {
            if (!egjVar.b(iA2)) {
                return null;
            }
        } else if (iA2 > 10) {
            return null;
        }
        int i3 = kfh.a;
        if (i3 > 28) {
            i = iA2;
        } else if (iA2 != 7) {
            if (iA2 == 3 || iA2 == 4 || iA2 == 5) {
                i = 6;
            } else {
                i = iA2;
            }
        }
        if (i3 <= 26 && "fugu".equals(Build.DEVICE) && i == 1) {
            i = 2;
        }
        int iD = kfh.D(i);
        if (iD != 0) {
            return Pair.create(Integer.valueOf(iA), Integer.valueOf(iD));
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0045 A[RETURN] */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ggj)) {
            return false;
        }
        ggj ggjVar = (ggj) obj;
        SparseArray sparseArray = this.a;
        SparseArray sparseArray2 = ggjVar.a;
        if (kfh.a < 31) {
            int size = sparseArray.size();
            if (size == sparseArray2.size()) {
                for (int i = 0; i < size; i++) {
                    if (Objects.equals(sparseArray.valueAt(i), sparseArray2.get(sparseArray.keyAt(i)))) {
                    }
                }
                if (this.b == ggjVar.b) {
                    return true;
                }
            }
        } else if (sparseArray.contentEquals(sparseArray2)) {
            if (this.b == ggjVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iContentHashCode;
        int i = kfh.a;
        SparseArray sparseArray = this.a;
        if (i >= 31) {
            iContentHashCode = sparseArray.contentHashCode();
        } else {
            int iKeyAt = 17;
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                iKeyAt = (((iKeyAt * 31) + sparseArray.keyAt(i2)) * 31) + Objects.hashCode(sparseArray.valueAt(i2));
            }
            iContentHashCode = iKeyAt;
        }
        return this.b + (iContentHashCode * 31);
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.b + ", audioProfiles=" + this.a.toString() + "]";
    }
}
