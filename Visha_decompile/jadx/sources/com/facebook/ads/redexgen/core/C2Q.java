package com.facebook.ads.redexgen.core;

import android.net.Uri;
import com.facebook.ads.androidx.media3.common.MediaItem;
import com.facebook.ads.androidx.media3.common.StreamKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class C2Q {
    public static byte[] A09;
    public static String[] A0A = {"x4YClL2ZysfVPCFZjhpW4oP0jWiK4Q3l", "qTcDzMP2wLEx15nCuEUhgp4TY7vV", "SIpQOLlqDgpshhwjhc8D2jgDkVzbvCX7", "J0RaUpvVzbbvSqSgIYK8O25JdvitlZZ4", "cm5jE18fh6qtcHu4S6QHstxeiM", "n", "LQDJUPwAzqbXUo9Li69tSY6YDGIQDwU", "wUCT9e8FTOqtQKr8s0xzb6XHsL6fqF1p"};
    public final Uri A00;
    public final C2H A01;
    public final C2M A02;
    public final Object A03;
    public final String A04;
    public final String A05;
    public final List<StreamKey> A06;
    public final List<MediaItem.SubtitleConfiguration> A07;

    @Deprecated
    public final List<MediaItem.Subtitle> A08;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A09 = new byte[]{14, 25, 5, 0, 8, 57, 28, 3, 2, 113, 120, 106, 113, 90, 118, 125, 124};
    }

    static {
        A01();
    }

    public C2Q(Uri uri, String str, C2M c2m, C2H c2h, List<StreamKey> streamKeys, String str2, List<MediaItem.SubtitleConfiguration> subtitleConfigurations, Object obj) {
        this.A00 = uri;
        this.A05 = str;
        this.A02 = c2m;
        this.A01 = c2h;
        this.A06 = streamKeys;
        this.A04 = str2;
        this.A07 = subtitleConfigurations;
        LinkedList linkedList = new LinkedList();
        if (0 < subtitleConfigurations.size()) {
            subtitleConfigurations.get(0);
            throw new NullPointerException(A00(0, 9, 35));
        }
        List<MediaItem.Subtitle> subtitles = new ArrayList<>(linkedList);
        this.A08 = subtitles;
        this.A03 = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2Q)) {
            return false;
        }
        C2Q c2q = (C2Q) obj;
        if (this.A00.equals(c2q.A00) && AbstractC06244a.A1E(this.A05, c2q.A05) && AbstractC06244a.A1E(this.A02, c2q.A02)) {
            if (A0A[7].charAt(13) == 'I') {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[3] = "SNoZAEbl0aNlH2coBrY7ADFEuEiuIdsk";
            strArr[0] = "hNPU4lA8QZuNoOME96TtOhTBwniZIKf2";
            if (AbstractC06244a.A1E(null, null) && this.A06.equals(c2q.A06) && AbstractC06244a.A1E(this.A04, c2q.A04) && this.A07.equals(c2q.A07) && AbstractC06244a.A1E(this.A03, c2q.A03)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A00.hashCode();
        int i = result * 31;
        int result2 = this.A05 == null ? 0 : this.A05.hashCode();
        int result3 = (((i + result2) * 31) + (this.A02 == null ? 0 : this.A02.hashCode())) * 31;
        if (0 == 0) {
            int result4 = (((result3 + 0) * 31) + this.A06.hashCode()) * 31;
            int result5 = this.A04 == null ? 0 : this.A04.hashCode();
            return ((((result4 + result5) * 31) + this.A07.hashCode()) * 31) + (this.A03 != null ? this.A03.hashCode() : 0);
        }
        throw new NullPointerException(A00(9, 8, 86));
    }
}
