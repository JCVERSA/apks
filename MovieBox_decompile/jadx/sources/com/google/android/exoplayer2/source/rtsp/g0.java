package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.HashMap;
import java.util.Map;

final class g0 {

    public final ImmutableMap f25734a;

    public final ImmutableList f25735b;

    public final String f25736c;

    public final String f25737d;

    public final String f25738e;

    public final int f25739f;

    public final Uri f25740g;

    public final String f25741h;

    public final String f25742i;

    public final String f25743j;

    public final String f25744k;

    public final String f25745l;

    public static final class b {

        private final HashMap f25746a = new HashMap();

        private final ImmutableList.a f25747b = new ImmutableList.a();

        private int f25748c = -1;

        private String f25749d;

        private String f25750e;

        private String f25751f;

        private Uri f25752g;

        private String f25753h;

        private String f25754i;

        private String f25755j;

        private String f25756k;

        private String f25757l;

        public b m(String str, String str2) {
            this.f25746a.put(str, str2);
            return this;
        }

        public b n(com.google.android.exoplayer2.source.rtsp.a aVar) {
            this.f25747b.a(aVar);
            return this;
        }

        public g0 o() {
            return new g0(this);
        }

        public b p(int i10) {
            this.f25748c = i10;
            return this;
        }

        public b q(String str) {
            this.f25753h = str;
            return this;
        }

        public b r(String str) {
            this.f25756k = str;
            return this;
        }

        public b s(String str) {
            this.f25754i = str;
            return this;
        }

        public b t(String str) {
            this.f25750e = str;
            return this;
        }

        public b u(String str) {
            this.f25757l = str;
            return this;
        }

        public b v(String str) {
            this.f25755j = str;
            return this;
        }

        public b w(String str) {
            this.f25749d = str;
            return this;
        }

        public b x(String str) {
            this.f25751f = str;
            return this;
        }

        public b y(Uri uri) {
            this.f25752g = uri;
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g0.class != obj.getClass()) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return this.f25739f == g0Var.f25739f && this.f25734a.equals(g0Var.f25734a) && this.f25735b.equals(g0Var.f25735b) && p0.c(this.f25737d, g0Var.f25737d) && p0.c(this.f25736c, g0Var.f25736c) && p0.c(this.f25738e, g0Var.f25738e) && p0.c(this.f25745l, g0Var.f25745l) && p0.c(this.f25740g, g0Var.f25740g) && p0.c(this.f25743j, g0Var.f25743j) && p0.c(this.f25744k, g0Var.f25744k) && p0.c(this.f25741h, g0Var.f25741h) && p0.c(this.f25742i, g0Var.f25742i);
    }

    public int hashCode() {
        int iHashCode = (((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f25734a.hashCode()) * 31) + this.f25735b.hashCode()) * 31;
        String str = this.f25737d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f25736c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f25738e;
        int iHashCode4 = (((iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f25739f) * 31;
        String str4 = this.f25745l;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Uri uri = this.f25740g;
        int iHashCode6 = (iHashCode5 + (uri == null ? 0 : uri.hashCode())) * 31;
        String str5 = this.f25743j;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f25744k;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f25741h;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f25742i;
        return iHashCode9 + (str8 != null ? str8.hashCode() : 0);
    }

    private g0(b bVar) {
        this.f25734a = ImmutableMap.copyOf((Map) bVar.f25746a);
        this.f25735b = bVar.f25747b.e();
        this.f25736c = (String) p0.j(bVar.f25749d);
        this.f25737d = (String) p0.j(bVar.f25750e);
        this.f25738e = (String) p0.j(bVar.f25751f);
        this.f25740g = bVar.f25752g;
        this.f25741h = bVar.f25753h;
        this.f25739f = bVar.f25748c;
        this.f25742i = bVar.f25754i;
        this.f25743j = bVar.f25756k;
        this.f25744k = bVar.f25757l;
        this.f25745l = bVar.f25755j;
    }
}
