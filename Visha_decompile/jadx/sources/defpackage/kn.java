package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.provider.Settings;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.media3.extractor.OpusUtil;
import com.google.android.exoplayer2.k;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.primitives.Ints;
import java.util.Arrays;

public final class kn {
    public static final kn c = new kn(new int[]{2}, 8);
    public static final kn d = new kn(new int[]{2, 5, 6}, 8);
    public static final ImmutableMap e = new ImmutableMap.b().h(5, 6).h(17, 6).h(7, 6).h(18, 6).h(6, 8).h(8, 8).h(14, 8).d();
    public final int[] a;
    public final int b;

    public static final class a {
        public static final AudioAttributes a = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

        @DoNotInline
        public static int[] a() {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            dgb it = kn.e.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(num.intValue()).setSampleRate(OpusUtil.SAMPLE_RATE).build(), a)) {
                    aVarBuilder.a(num);
                }
            }
            aVarBuilder.a(2);
            return Ints.o(aVarBuilder.e());
        }

        @DoNotInline
        public static int b(int i, int i2) {
            for (int i3 = 8; i3 > 0; i3--) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(blb.D(i3)).build(), a)) {
                    return i3;
                }
            }
            return 0;
        }
    }

    public kn(int[] iArr, int i) {
        if (iArr != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.a = iArrCopyOf;
            Arrays.sort(iArrCopyOf);
        } else {
            this.a = new int[0];
        }
        this.b = i;
    }

    public static boolean b() {
        if (blb.a >= 17) {
            String str = blb.c;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static kn c(Context context) {
        return d(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    public static kn d(Context context, Intent intent) {
        if (b() && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
            return d;
        }
        if (blb.a < 29 || !(blb.p0(context) || blb.k0(context))) {
            return (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? c : new kn(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        return new kn(a.a(), 8);
    }

    public static int e(int i) {
        int i2 = blb.a;
        if (i2 <= 28) {
            if (i == 7) {
                i = 8;
            } else if (i == 3 || i == 4 || i == 5) {
                i = 6;
            }
        }
        if (i2 <= 26 && "fugu".equals(blb.b) && i == 1) {
            i = 2;
        }
        return blb.D(i);
    }

    public static int g(int i, int i2) {
        return blb.a >= 29 ? a.b(i, i2) : ((Integer) zi.e((Integer) e.getOrDefault(Integer.valueOf(i), 0))).intValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kn)) {
            return false;
        }
        kn knVar = (kn) obj;
        return Arrays.equals(this.a, knVar.a) && this.b == knVar.b;
    }

    public Pair f(k kVar) {
        int iB = qp6.b((String) zi.e(kVar.m), kVar.j);
        if (!e.containsKey(Integer.valueOf(iB))) {
            return null;
        }
        if (iB == 18 && !i(18)) {
            iB = 6;
        } else if (iB == 8 && !i(8)) {
            iB = 7;
        }
        if (!i(iB)) {
            return null;
        }
        int iG = kVar.z;
        if (iG == -1 || iB == 18) {
            int i = kVar.A;
            if (i == -1) {
                i = OpusUtil.SAMPLE_RATE;
            }
            iG = g(iB, i);
        } else if (iG > this.b) {
            return null;
        }
        int iE = e(iG);
        if (iE == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iB), Integer.valueOf(iE));
    }

    public boolean h(k kVar) {
        return f(kVar) != null;
    }

    public int hashCode() {
        return this.b + (Arrays.hashCode(this.a) * 31);
    }

    public boolean i(int i) {
        return Arrays.binarySearch(this.a, i) >= 0;
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.b + ", supportedEncodings=" + Arrays.toString(this.a) + "]";
    }
}
