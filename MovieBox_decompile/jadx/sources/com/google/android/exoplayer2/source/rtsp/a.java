package com.google.android.exoplayer2.source.rtsp;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableMap;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.HashMap;
import java.util.Map;

final class a {

    public final String f25645a;

    public final int f25646b;

    public final String f25647c;

    public final int f25648d;

    public final int f25649e;

    public final String f25650f;

    public final String f25651g;

    public final String f25652h;

    public final ImmutableMap f25653i;

    public final c f25654j;

    public static final class b {

        private final String f25655a;

        private final int f25656b;

        private final String f25657c;

        private final int f25658d;

        private final HashMap f25659e = new HashMap();

        private int f25660f = -1;

        private String f25661g;

        private String f25662h;

        private String f25663i;

        public b(String str, int i10, String str2, int i11) {
            this.f25655a = str;
            this.f25656b = i10;
            this.f25657c = str2;
            this.f25658d = i11;
        }

        private static String k(int i10, String str, int i11, int i12) {
            return p0.C("%d %s/%d/%d", Integer.valueOf(i10), str, Integer.valueOf(i11), Integer.valueOf(i12));
        }

        private static String l(int i10) {
            com.google.android.exoplayer2.util.a.a(i10 < 96);
            if (i10 == 0) {
                return k(0, "PCMU", 8000, 1);
            }
            if (i10 == 8) {
                return k(8, "PCMA", 8000, 1);
            }
            if (i10 == 10) {
                return k(10, "L16", RecorderConstants.RECORD_SAMPLE_RATE_44100, 2);
            }
            if (i10 == 11) {
                return k(11, "L16", RecorderConstants.RECORD_SAMPLE_RATE_44100, 1);
            }
            throw new IllegalStateException("Unsupported static paylod type " + i10);
        }

        public b i(String str, String str2) {
            this.f25659e.put(str, str2);
            return this;
        }

        public a j() {
            try {
                return new a(this, ImmutableMap.copyOf((Map) this.f25659e), this.f25659e.containsKey("rtpmap") ? c.a((String) p0.j((String) this.f25659e.get("rtpmap"))) : c.a(l(this.f25658d)));
            } catch (ParserException e10) {
                throw new IllegalStateException(e10);
            }
        }

        public b m(int i10) {
            this.f25660f = i10;
            return this;
        }

        public b n(String str) {
            this.f25662h = str;
            return this;
        }

        public b o(String str) {
            this.f25663i = str;
            return this;
        }

        public b p(String str) {
            this.f25661g = str;
            return this;
        }
    }

    public static final class c {

        public final int f25664a;

        public final String f25665b;

        public final int f25666c;

        public final int f25667d;

        private c(int i10, String str, int i11, int i12) {
            this.f25664a = i10;
            this.f25665b = str;
            this.f25666c = i11;
            this.f25667d = i12;
        }

        public static c a(String str) {
            String[] strArrT0 = p0.T0(str, " ");
            com.google.android.exoplayer2.util.a.a(strArrT0.length == 2);
            int iH = y.h(strArrT0[0]);
            String[] strArrS0 = p0.S0(strArrT0[1].trim(), "/");
            com.google.android.exoplayer2.util.a.a(strArrS0.length >= 2);
            return new c(iH, strArrS0[0], y.h(strArrS0[1]), strArrS0.length == 3 ? y.h(strArrS0[2]) : -1);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return this.f25664a == cVar.f25664a && this.f25665b.equals(cVar.f25665b) && this.f25666c == cVar.f25666c && this.f25667d == cVar.f25667d;
        }

        public int hashCode() {
            return ((((((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f25664a) * 31) + this.f25665b.hashCode()) * 31) + this.f25666c) * 31) + this.f25667d;
        }
    }

    public ImmutableMap a() {
        String str = (String) this.f25653i.get("fmtp");
        if (str == null) {
            return ImmutableMap.of();
        }
        String[] strArrT0 = p0.T0(str, " ");
        com.google.android.exoplayer2.util.a.b(strArrT0.length == 2, str);
        String[] strArrSplit = strArrT0[1].split(";\\s?", 0);
        ImmutableMap.b bVar = new ImmutableMap.b();
        for (String str2 : strArrSplit) {
            String[] strArrT1 = p0.T0(str2, UrlUtils.EQUAL_MARK);
            bVar.h(strArrT1[0], strArrT1[1]);
        }
        return bVar.d();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f25645a.equals(aVar.f25645a) && this.f25646b == aVar.f25646b && this.f25647c.equals(aVar.f25647c) && this.f25648d == aVar.f25648d && this.f25649e == aVar.f25649e && this.f25653i.equals(aVar.f25653i) && this.f25654j.equals(aVar.f25654j) && p0.c(this.f25650f, aVar.f25650f) && p0.c(this.f25651g, aVar.f25651g) && p0.c(this.f25652h, aVar.f25652h);
    }

    public int hashCode() {
        int iHashCode = (((((((((((((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f25645a.hashCode()) * 31) + this.f25646b) * 31) + this.f25647c.hashCode()) * 31) + this.f25648d) * 31) + this.f25649e) * 31) + this.f25653i.hashCode()) * 31) + this.f25654j.hashCode()) * 31;
        String str = this.f25650f;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f25651g;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f25652h;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    private a(b bVar, ImmutableMap immutableMap, c cVar) {
        this.f25645a = bVar.f25655a;
        this.f25646b = bVar.f25656b;
        this.f25647c = bVar.f25657c;
        this.f25648d = bVar.f25658d;
        this.f25650f = bVar.f25661g;
        this.f25651g = bVar.f25662h;
        this.f25649e = bVar.f25660f;
        this.f25652h = bVar.f25663i;
        this.f25653i = immutableMap;
        this.f25654j = cVar;
    }
}
