package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.provider.Settings;
import android.util.Pair;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.r4;
import com.google.common.primitives.Ints;
import java.util.Arrays;

public final class f {

    public static final f f23968c = new f(new int[]{2}, 8);

    private static final f f23969d = new f(new int[]{2, 5, 6}, 8);

    private static final ImmutableMap f23970e = new ImmutableMap.b().h(5, 6).h(17, 6).h(7, 6).h(18, 6).h(6, 8).h(8, 8).h(14, 8).d();

    private final int[] f23971a;

    private final int f23972b;

    private static final class a {

        private static final AudioAttributes f23973a = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

        public static int[] a() {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            r4 it = f.f23970e.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(num.intValue()).setSampleRate(48000).build(), f23973a)) {
                    aVarBuilder.a(num);
                }
            }
            aVarBuilder.a(2);
            return Ints.o(aVarBuilder.e());
        }

        public static int b(int i10, int i11) {
            for (int i12 = 8; i12 > 0; i12--) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i10).setSampleRate(i11).setChannelMask(p0.G(i12)).build(), f23973a)) {
                    return i12;
                }
            }
            return 0;
        }
    }

    public f(int[] iArr, int i10) {
        if (iArr != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.f23971a = iArrCopyOf;
            Arrays.sort(iArrCopyOf);
        } else {
            this.f23971a = new int[0];
        }
        this.f23972b = i10;
    }

    private static boolean b() {
        if (p0.f26854a >= 17) {
            String str = p0.f26856c;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static f c(Context context) {
        return d(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    static f d(Context context, Intent intent) {
        if (b() && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
            return f23969d;
        }
        if (p0.f26854a < 29 || !(p0.x0(context) || p0.s0(context))) {
            return (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? f23968c : new f(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        return new f(a.a(), 8);
    }

    private static int e(int i10) {
        int i11 = p0.f26854a;
        if (i11 <= 28) {
            if (i10 == 7) {
                i10 = 8;
            } else if (i10 == 3 || i10 == 4 || i10 == 5) {
                i10 = 6;
            }
        }
        if (i11 <= 26 && "fugu".equals(p0.f26855b) && i10 == 1) {
            i10 = 2;
        }
        return p0.G(i10);
    }

    private static int g(int i10, int i11) {
        return p0.f26854a >= 29 ? a.b(i10, i11) : ((Integer) com.google.android.exoplayer2.util.a.e((Integer) f23970e.getOrDefault(Integer.valueOf(i10), 0))).intValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Arrays.equals(this.f23971a, fVar.f23971a) && this.f23972b == fVar.f23972b;
    }

    public Pair f(p1 p1Var) {
        int iF = com.google.android.exoplayer2.util.w.f((String) com.google.android.exoplayer2.util.a.e(p1Var.f24901l), p1Var.f24898i);
        if (!f23970e.containsKey(Integer.valueOf(iF))) {
            return null;
        }
        if (iF == 18 && !i(18)) {
            iF = 6;
        } else if (iF == 8 && !i(8)) {
            iF = 7;
        }
        if (!i(iF)) {
            return null;
        }
        int iG = p1Var.f24914y;
        if (iG == -1 || iF == 18) {
            int i10 = p1Var.f24915z;
            if (i10 == -1) {
                i10 = 48000;
            }
            iG = g(iF, i10);
        } else if (iG > this.f23972b) {
            return null;
        }
        int iE = e(iG);
        if (iE == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iF), Integer.valueOf(iE));
    }

    public boolean h(p1 p1Var) {
        return f(p1Var) != null;
    }

    public int hashCode() {
        return this.f23972b + (Arrays.hashCode(this.f23971a) * 31);
    }

    public boolean i(int i10) {
        return Arrays.binarySearch(this.f23971a, i10) >= 0;
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f23972b + ", supportedEncodings=" + Arrays.toString(this.f23971a) + "]";
    }
}
