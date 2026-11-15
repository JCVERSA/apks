package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.provider.Settings;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.extractor.OpusUtil;
import java.util.Arrays;
import java.util.Iterator;

public final class rh {
    private static final sh c = nm1.a();
    public static final rh d = new rh(new int[]{2}, 8);
    private static final rh e = new rh(new int[]{2, 5, 6}, 8);
    private static final lk0<Integer, Integer> f = new lk0.a().a(5, 6).a(17, 6).a(7, 6).a(18, 6).a(6, 8).a(8, 8).a(14, 8).a();
    private final int[] a;
    private final int b;

    public rh(@Nullable int[] iArr, int i) {
        if (iArr != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.a = iArrCopyOf;
            Arrays.sort(iArrCopyOf);
        } else {
            this.a = new int[0];
        }
        this.b = i;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rh)) {
            return false;
        }
        rh rhVar = (rh) obj;
        return Arrays.equals(this.a, rhVar.a) && this.b == rhVar.b;
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.a) * 31) + this.b;
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.b + ", supportedEncodings=" + Arrays.toString(this.a) + "]";
    }

    public static rh a(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        int i = f92.a;
        if (i >= 17) {
            sh shVar = c;
            String strA = shVar.a();
            String str = f92.c;
            if ((strA.equals(str) || shVar.c().equals(str)) && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
                return e;
            }
        }
        if (i < 29 || (!f92.d(context) && (i < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")))) {
            return (intentRegisterReceiver == null || intentRegisterReceiver.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? d : new rh(intentRegisterReceiver.getIntArrayExtra("android.media.extra.ENCODINGS"), intentRegisterReceiver.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        return new rh(a.a(), 8);
    }

    @RequiresApi(29)
    public static final class a {
        private static final AudioAttributes a = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

        @DoNotInline
        public static int a(int i, int i2) {
            for (int i3 = 8; i3 > 0; i3--) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(f92.a(i3)).build(), a)) {
                    return i3;
                }
            }
            return 0;
        }

        @DoNotInline
        public static int[] a() {
            int i = kk0.d;
            kk0.a aVar = new kk0.a();
            Iterator it = rh.f.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(num.intValue()).setSampleRate(OpusUtil.SAMPLE_RATE).build(), a)) {
                    aVar.b(num);
                }
            }
            aVar.b((Object) 2);
            return hq0.a(aVar.a());
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x008a  */
    @Nullable
    public final Pair<Integer, Integer> a(jc0 jc0Var) {
        String str = jc0Var.m;
        str.getClass();
        int iB = w01.b(str, jc0Var.j);
        lk0<Integer, Integer> lk0Var = f;
        if (!lk0Var.containsKey(Integer.valueOf(iB))) {
            return null;
        }
        int i = 6;
        if (iB == 18 && Arrays.binarySearch(this.a, 18) < 0) {
            iB = 6;
        } else if (iB == 8 && Arrays.binarySearch(this.a, 8) < 0) {
            iB = 7;
        }
        if (Arrays.binarySearch(this.a, iB) < 0) {
            return null;
        }
        int iIntValue = jc0Var.z;
        if (iIntValue != -1 && iB != 18) {
            if (iIntValue > this.b) {
                return null;
            }
        } else {
            int i2 = jc0Var.A;
            if (i2 == -1) {
                i2 = OpusUtil.SAMPLE_RATE;
            }
            if (f92.a >= 29) {
                iIntValue = a.a(iB, i2);
            } else {
                Integer num = lk0Var.get(Integer.valueOf(iB));
                iIntValue = (num != null ? num : 0).intValue();
            }
        }
        int i3 = f92.a;
        if (i3 > 28) {
            i = iIntValue;
        } else if (iIntValue == 7) {
            i = 8;
        } else if (iIntValue != 3 && iIntValue != 4 && iIntValue != 5) {
            i = iIntValue;
        }
        if (i3 <= 26 && c.b().equals(f92.b) && i == 1) {
            i = 2;
        }
        int iA = f92.a(i);
        if (iA == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iB), Integer.valueOf(iA));
    }
}
