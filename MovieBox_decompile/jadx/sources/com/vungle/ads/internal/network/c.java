package com.vungle.ads.internal.network;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.m1;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.v0;
import kotlinx.serialization.internal.w1;

public final class c {
    public static final b Companion = new b(null);
    private final String body;
    private final Map<String, String> headers;
    private final HttpMethod method;
    private int retryAttempt;
    private int retryCount;
    private String tpatKey;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.network.FailedTpat", aVar, 6);
            pluginGeneratedSerialDescriptor.l("method", true);
            pluginGeneratedSerialDescriptor.l("headers", true);
            pluginGeneratedSerialDescriptor.l(TtmlNode.TAG_BODY, true);
            pluginGeneratedSerialDescriptor.l("retryAttempt", true);
            pluginGeneratedSerialDescriptor.l("retryCount", false);
            pluginGeneratedSerialDescriptor.l("tpatKey", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            b2 b2Var = b2.f65143a;
            kotlinx.serialization.b bVarS = ry.a.s(new v0(b2Var, b2Var));
            kotlinx.serialization.b bVarS2 = ry.a.s(b2Var);
            kotlinx.serialization.b bVarS3 = ry.a.s(b2Var);
            r0 r0Var = r0.f65223a;
            return new kotlinx.serialization.b[]{HttpMethod.a.INSTANCE, bVarS, bVarS2, r0Var, r0Var, bVarS3};
        }

        @Override
        public c deserialize(sy.e decoder) {
            int i10;
            Object objN;
            Object objN2;
            Object objN3;
            int i11;
            int i12;
            Object objY;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.c cVarB = decoder.b(descriptor2);
            int i13 = 5;
            if (cVarB.p()) {
                objY = cVarB.y(descriptor2, 0, HttpMethod.a.INSTANCE, null);
                b2 b2Var = b2.f65143a;
                objN = cVarB.n(descriptor2, 1, new v0(b2Var, b2Var), null);
                objN2 = cVarB.n(descriptor2, 2, b2Var, null);
                int i14 = cVarB.i(descriptor2, 3);
                int i15 = cVarB.i(descriptor2, 4);
                objN3 = cVarB.n(descriptor2, 5, b2Var, null);
                i12 = i14;
                i11 = i15;
                i10 = 63;
            } else {
                boolean z10 = true;
                int i16 = 0;
                int i17 = 0;
                Object objY2 = null;
                Object objN4 = null;
                Object objN5 = null;
                Object objN6 = null;
                int i18 = 0;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    switch (iO) {
                        case -1:
                            z10 = false;
                            continue;
                        case 0:
                            objY2 = cVarB.y(descriptor2, 0, HttpMethod.a.INSTANCE, objY2);
                            i17 |= 1;
                            i13 = 5;
                            continue;
                        case 1:
                            b2 b2Var2 = b2.f65143a;
                            objN4 = cVarB.n(descriptor2, 1, new v0(b2Var2, b2Var2), objN4);
                            i17 |= 2;
                            i13 = 5;
                            break;
                        case 2:
                            objN5 = cVarB.n(descriptor2, 2, b2.f65143a, objN5);
                            i17 |= 4;
                            break;
                        case 3:
                            i16 = cVarB.i(descriptor2, 3);
                            i17 |= 8;
                            break;
                        case 4:
                            i18 = cVarB.i(descriptor2, 4);
                            i17 |= 16;
                            break;
                        case 5:
                            objN6 = cVarB.n(descriptor2, i13, b2.f65143a, objN6);
                            i17 |= 32;
                            break;
                        default:
                            throw new UnknownFieldException(iO);
                    }
                }
                i10 = i17;
                objN = objN4;
                objN2 = objN5;
                objN3 = objN6;
                i11 = i18;
                i12 = i16;
                objY = objY2;
            }
            cVarB.c(descriptor2);
            return new c(i10, (HttpMethod) objY, (Map) objN, (String) objN2, i12, i11, (String) objN3, (w1) null);
        }

        @Override
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override
        public void serialize(sy.f encoder, c value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.d dVarB = encoder.b(descriptor2);
            c.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }

        @Override
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return a.INSTANCE;
        }

        private b() {
        }
    }

    @Deprecated
    public c(int i10, HttpMethod httpMethod, Map map, String str, int i11, int i12, String str2, w1 w1Var) {
        if (16 != (i10 & 16)) {
            m1.a(i10, 16, a.INSTANCE.getDescriptor());
        }
        this.method = (i10 & 1) == 0 ? HttpMethod.GET : httpMethod;
        if ((i10 & 2) == 0) {
            this.headers = null;
        } else {
            this.headers = map;
        }
        if ((i10 & 4) == 0) {
            this.body = null;
        } else {
            this.body = str;
        }
        if ((i10 & 8) == 0) {
            this.retryAttempt = 0;
        } else {
            this.retryAttempt = i11;
        }
        this.retryCount = i12;
        if ((i10 & 32) == 0) {
            this.tpatKey = null;
        } else {
            this.tpatKey = str2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static c copy$default(c cVar, HttpMethod httpMethod, Map map, String str, int i10, int i11, String str2, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            httpMethod = cVar.method;
        }
        if ((i12 & 2) != 0) {
            map = cVar.headers;
        }
        Map map2 = map;
        if ((i12 & 4) != 0) {
            str = cVar.body;
        }
        String str3 = str;
        if ((i12 & 8) != 0) {
            i10 = cVar.retryAttempt;
        }
        int i13 = i10;
        if ((i12 & 16) != 0) {
            i11 = cVar.retryCount;
        }
        int i14 = i11;
        if ((i12 & 32) != 0) {
            str2 = cVar.tpatKey;
        }
        return cVar.copy(httpMethod, map2, str3, i13, i14, str2);
    }

    @JvmStatic
    public static final void write$Self(c self, sy.d output, kotlinx.serialization.descriptors.f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.method != HttpMethod.GET) {
            output.C(serialDesc, 0, HttpMethod.a.INSTANCE, self.method);
        }
        if (output.z(serialDesc, 1) || self.headers != null) {
            b2 b2Var = b2.f65143a;
            output.i(serialDesc, 1, new v0(b2Var, b2Var), self.headers);
        }
        if (output.z(serialDesc, 2) || self.body != null) {
            output.i(serialDesc, 2, b2.f65143a, self.body);
        }
        if (output.z(serialDesc, 3) || self.retryAttempt != 0) {
            output.w(serialDesc, 3, self.retryAttempt);
        }
        output.w(serialDesc, 4, self.retryCount);
        if (!output.z(serialDesc, 5) && self.tpatKey == null) {
            return;
        }
        output.i(serialDesc, 5, b2.f65143a, self.tpatKey);
    }

    public final HttpMethod component1() {
        return this.method;
    }

    public final Map<String, String> component2() {
        return this.headers;
    }

    public final String component3() {
        return this.body;
    }

    public final int component4() {
        return this.retryAttempt;
    }

    public final int component5() {
        return this.retryCount;
    }

    public final String component6() {
        return this.tpatKey;
    }

    public final c copy(HttpMethod method, Map<String, String> map, String str, int i10, int i11, String str2) {
        Intrinsics.h(method, "method");
        return new c(method, map, str, i10, i11, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.method == cVar.method && Intrinsics.c(this.headers, cVar.headers) && Intrinsics.c(this.body, cVar.body) && this.retryAttempt == cVar.retryAttempt && this.retryCount == cVar.retryCount && Intrinsics.c(this.tpatKey, cVar.tpatKey);
    }

    public final String getBody() {
        return this.body;
    }

    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    public final HttpMethod getMethod() {
        return this.method;
    }

    public final int getRetryAttempt() {
        return this.retryAttempt;
    }

    public final int getRetryCount() {
        return this.retryCount;
    }

    public final String getTpatKey() {
        return this.tpatKey;
    }

    public int hashCode() {
        int iHashCode = this.method.hashCode() * 31;
        Map<String, String> map = this.headers;
        int iHashCode2 = (iHashCode + (map == null ? 0 : map.hashCode())) * 31;
        String str = this.body;
        int iHashCode3 = (((((iHashCode2 + (str == null ? 0 : str.hashCode())) * 31) + this.retryAttempt) * 31) + this.retryCount) * 31;
        String str2 = this.tpatKey;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setRetryAttempt(int i10) {
        this.retryAttempt = i10;
    }

    public final void setRetryCount(int i10) {
        this.retryCount = i10;
    }

    public final void setTpatKey(String str) {
        this.tpatKey = str;
    }

    public String toString() {
        return "FailedTpat(method=" + this.method + ", headers=" + this.headers + ", body=" + this.body + ", retryAttempt=" + this.retryAttempt + ", retryCount=" + this.retryCount + ", tpatKey=" + this.tpatKey + ')';
    }

    public c(HttpMethod method, Map<String, String> map, String str, int i10, int i11, String str2) {
        Intrinsics.h(method, "method");
        this.method = method;
        this.headers = map;
        this.body = str;
        this.retryAttempt = i10;
        this.retryCount = i11;
        this.tpatKey = str2;
    }

    public c(HttpMethod httpMethod, Map map, String str, int i10, int i11, String str2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? HttpMethod.GET : httpMethod, (i12 & 2) != 0 ? null : map, (i12 & 4) != 0 ? null : str, (i12 & 8) != 0 ? 0 : i10, i11, (i12 & 32) != 0 ? null : str2);
    }
}
