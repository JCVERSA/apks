package androidx.media3.exoplayer.audio;

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
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.r4;
import com.google.common.primitives.Ints;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class e {

    public static final e f10850c = new e(ImmutableList.of(C0088e.f10855d));

    private static final ImmutableList f10851d = ImmutableList.of(2, 5, 6);

    static final ImmutableMap f10852e = new ImmutableMap.b().h(5, 6).h(17, 6).h(7, 6).h(30, 10).h(18, 6).h(6, 8).h(8, 8).h(14, 8).d();

    private final SparseArray f10853a;

    private final int f10854b;

    private static final class b {
        private static ImmutableSet a() {
            ImmutableSet.a aVarK = new ImmutableSet.a().k(8, 7);
            int i10 = androidx.media3.common.util.a1.f10038a;
            if (i10 >= 31) {
                aVarK.k(26, 27);
            }
            if (i10 >= 33) {
                aVarK.a(30);
            }
            return aVarK.e();
        }

        public static boolean b(AudioManager audioManager, j jVar) {
            AudioDeviceInfo[] devices = jVar == null ? ((AudioManager) androidx.media3.common.util.a.e(audioManager)).getDevices(2) : new AudioDeviceInfo[]{jVar.f10884a};
            ImmutableSet immutableSetA = a();
            for (AudioDeviceInfo audioDeviceInfo : devices) {
                if (immutableSetA.contains(Integer.valueOf(audioDeviceInfo.getType()))) {
                    return true;
                }
            }
            return false;
        }
    }

    private static final class c {
        public static ImmutableList a(androidx.media3.common.c cVar) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            r4 it = e.f10852e.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int iIntValue = num.intValue();
                if (androidx.media3.common.util.a1.f10038a >= androidx.media3.common.util.a1.K(iIntValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), cVar.a().f9607a)) {
                    aVarBuilder.a(num);
                }
            }
            aVarBuilder.a(2);
            return aVarBuilder.e();
        }

        public static int b(int i10, int i11, androidx.media3.common.c cVar) {
            for (int i12 = 10; i12 > 0; i12--) {
                int iM = androidx.media3.common.util.a1.M(i12);
                if (iM != 0 && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i10).setSampleRate(i11).setChannelMask(iM).build(), cVar.a().f9607a)) {
                    return i12;
                }
            }
            return 0;
        }
    }

    private static final class d {
        public static e a(AudioManager audioManager, androidx.media3.common.c cVar) {
            return new e(e.c(audioManager.getDirectProfilesForAttributes(cVar.a().f9607a)));
        }

        public static j b(AudioManager audioManager, androidx.media3.common.c cVar) {
            try {
                List audioDevicesForAttributes = ((AudioManager) androidx.media3.common.util.a.e(audioManager)).getAudioDevicesForAttributes(cVar.a().f9607a);
                if (audioDevicesForAttributes.isEmpty()) {
                    return null;
                }
                return new j((AudioDeviceInfo) audioDevicesForAttributes.get(0));
            } catch (RuntimeException unused) {
                return null;
            }
        }
    }

    private static boolean b() {
        String str = Build.MANUFACTURER;
        return str.equals("Amazon") || str.equals("Xiaomi");
    }

    public static ImmutableList c(List list) {
        HashMap map = new HashMap();
        map.put(2, new HashSet(Ints.c(12)));
        for (int i10 = 0; i10 < list.size(); i10++) {
            AudioProfile audioProfileA = androidx.media3.exoplayer.audio.a.a(list.get(i10));
            if (audioProfileA.getEncapsulationType() != 1) {
                int format = audioProfileA.getFormat();
                if (androidx.media3.common.util.a1.G0(format) || f10852e.containsKey(Integer.valueOf(format))) {
                    if (map.containsKey(Integer.valueOf(format))) {
                        ((Set) androidx.media3.common.util.a.e((Set) map.get(Integer.valueOf(format)))).addAll(Ints.c(audioProfileA.getChannelMasks()));
                    } else {
                        map.put(Integer.valueOf(format), new HashSet(Ints.c(audioProfileA.getChannelMasks())));
                    }
                }
            }
        }
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (Map.Entry entry : map.entrySet()) {
            aVarBuilder.a(new C0088e(((Integer) entry.getKey()).intValue(), (Set) entry.getValue()));
        }
        return aVarBuilder.e();
    }

    private static ImmutableList d(int[] iArr, int i10) {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        if (iArr == null) {
            iArr = new int[0];
        }
        for (int i11 : iArr) {
            aVarBuilder.a(new C0088e(i11, i10));
        }
        return aVarBuilder.e();
    }

    static e e(Context context, Intent intent, androidx.media3.common.c cVar, j jVar) {
        AudioManager audioManagerC = t1.m.c(context);
        if (jVar == null) {
            jVar = androidx.media3.common.util.a1.f10038a >= 33 ? d.b(audioManagerC, cVar) : null;
        }
        int i10 = androidx.media3.common.util.a1.f10038a;
        if (i10 >= 33 && (androidx.media3.common.util.a1.K0(context) || androidx.media3.common.util.a1.D0(context))) {
            return d.a(audioManagerC, cVar);
        }
        if (i10 >= 23 && b.b(audioManagerC, jVar)) {
            return f10850c;
        }
        ImmutableSet.a aVar = new ImmutableSet.a();
        aVar.a(2);
        if (i10 >= 29 && (androidx.media3.common.util.a1.K0(context) || androidx.media3.common.util.a1.D0(context))) {
            aVar.l(c.a(cVar));
            return new e(d(Ints.o(aVar.e()), 10));
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z10 = Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1;
        if ((z10 || b()) && Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            aVar.l(f10851d);
        }
        if (intent == null || z10 || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            return new e(d(Ints.o(aVar.e()), 10));
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            aVar.l(Ints.c(intArrayExtra));
        }
        return new e(d(Ints.o(aVar.e()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)));
    }

    static e f(Context context, androidx.media3.common.c cVar, j jVar) {
        return e(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), cVar, jVar);
    }

    private static int g(int i10) {
        int i11 = androidx.media3.common.util.a1.f10038a;
        if (i11 <= 28) {
            if (i10 == 7) {
                i10 = 8;
            } else if (i10 == 3 || i10 == 4 || i10 == 5) {
                i10 = 6;
            }
        }
        if (i11 <= 26 && "fugu".equals(Build.DEVICE) && i10 == 1) {
            i10 = 2;
        }
        return androidx.media3.common.util.a1.M(i10);
    }

    static Uri i() {
        if (b()) {
            return Settings.Global.getUriFor("external_surround_sound_enabled");
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return androidx.media3.common.util.a1.t(this.f10853a, eVar.f10853a) && this.f10854b == eVar.f10854b;
    }

    public Pair h(androidx.media3.common.r rVar, androidx.media3.common.c cVar) {
        int iF = androidx.media3.common.y.f((String) androidx.media3.common.util.a.e(rVar.f9849o), rVar.f9845k);
        if (!f10852e.containsKey(Integer.valueOf(iF))) {
            return null;
        }
        if (iF == 18 && !k(18)) {
            iF = 6;
        } else if ((iF == 8 && !k(8)) || (iF == 30 && !k(30))) {
            iF = 7;
        }
        if (!k(iF)) {
            return null;
        }
        C0088e c0088e = (C0088e) androidx.media3.common.util.a.e((C0088e) this.f10853a.get(iF));
        int iB = rVar.E;
        if (iB == -1 || iF == 18) {
            int i10 = rVar.F;
            if (i10 == -1) {
                i10 = 48000;
            }
            iB = c0088e.b(i10, cVar);
        } else if (!rVar.f9849o.equals("audio/vnd.dts.uhd;profile=p2") || androidx.media3.common.util.a1.f10038a >= 33) {
            if (!c0088e.c(iB)) {
                return null;
            }
        } else if (iB > 10) {
            return null;
        }
        int iG = g(iB);
        if (iG == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iF), Integer.valueOf(iG));
    }

    public int hashCode() {
        return this.f10854b + (androidx.media3.common.util.a1.u(this.f10853a) * 31);
    }

    public boolean j(androidx.media3.common.r rVar, androidx.media3.common.c cVar) {
        return h(rVar, cVar) != null;
    }

    public boolean k(int i10) {
        return androidx.media3.common.util.a1.r(this.f10853a, i10);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f10854b + ", audioProfiles=" + this.f10853a + "]";
    }

    private e(List list) {
        this.f10853a = new SparseArray();
        for (int i10 = 0; i10 < list.size(); i10++) {
            C0088e c0088e = (C0088e) list.get(i10);
            this.f10853a.put(c0088e.f10856a, c0088e);
        }
        int iMax = 0;
        for (int i11 = 0; i11 < this.f10853a.size(); i11++) {
            iMax = Math.max(iMax, ((C0088e) this.f10853a.valueAt(i11)).f10857b);
        }
        this.f10854b = iMax;
    }

    private static final class C0088e {

        public static final C0088e f10855d;

        public final int f10856a;

        public final int f10857b;

        private final ImmutableSet f10858c;

        static {
            f10855d = androidx.media3.common.util.a1.f10038a >= 33 ? new C0088e(2, a(10)) : new C0088e(2, 10);
        }

        public C0088e(int i10, Set set) {
            this.f10856a = i10;
            ImmutableSet immutableSetCopyOf = ImmutableSet.copyOf((Collection) set);
            this.f10858c = immutableSetCopyOf;
            r4 it = immutableSetCopyOf.iterator();
            int iMax = 0;
            while (it.hasNext()) {
                iMax = Math.max(iMax, Integer.bitCount(((Integer) it.next()).intValue()));
            }
            this.f10857b = iMax;
        }

        private static ImmutableSet a(int i10) {
            ImmutableSet.a aVar = new ImmutableSet.a();
            for (int i11 = 1; i11 <= i10; i11++) {
                aVar.a(Integer.valueOf(androidx.media3.common.util.a1.M(i11)));
            }
            return aVar.e();
        }

        public int b(int i10, androidx.media3.common.c cVar) {
            if (this.f10858c != null) {
                return this.f10857b;
            }
            return androidx.media3.common.util.a1.f10038a >= 29 ? c.b(this.f10856a, i10, cVar) : ((Integer) androidx.media3.common.util.a.e((Integer) e.f10852e.getOrDefault(Integer.valueOf(this.f10856a), 0))).intValue();
        }

        public boolean c(int i10) {
            if (this.f10858c == null) {
                return i10 <= this.f10857b;
            }
            int iM = androidx.media3.common.util.a1.M(i10);
            if (iM == 0) {
                return false;
            }
            return this.f10858c.contains(Integer.valueOf(iM));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0088e)) {
                return false;
            }
            C0088e c0088e = (C0088e) obj;
            return this.f10856a == c0088e.f10856a && this.f10857b == c0088e.f10857b && Objects.equals(this.f10858c, c0088e.f10858c);
        }

        public int hashCode() {
            int i10 = ((this.f10856a * 31) + this.f10857b) * 31;
            ImmutableSet immutableSet = this.f10858c;
            return i10 + (immutableSet == null ? 0 : immutableSet.hashCode());
        }

        public String toString() {
            return "AudioProfile[format=" + this.f10856a + ", maxChannelCount=" + this.f10857b + ", channelMasks=" + this.f10858c + "]";
        }

        public C0088e(int i10, int i11) {
            this.f10856a = i10;
            this.f10857b = i11;
            this.f10858c = null;
        }
    }
}
