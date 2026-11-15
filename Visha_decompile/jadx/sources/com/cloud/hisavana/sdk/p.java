package com.cloud.hisavana.sdk;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import defpackage.db3;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class p {
    public static final a e = new a(null);
    public final int a;
    public final String b;
    public final b c;
    public final Throwable d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final p a() {
            return new p(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_UNAVAILABLE, "ExoPlayer is not available, video ad skipped", b.PLAYER_UNAVAILABLE, null, 8, null);
        }

        public a() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/cloud/hisavana/sdk/p$b;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "c", "d", "e", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public enum b {
        IO,
        DECODING,
        DRM,
        PLAYER_UNAVAILABLE,
        UNKNOWN;

        private static final db3 g = kotlin.enums.a.a(a());
    }

    public p(int i, String str, b bVar, Throwable th) {
        y45.j(str, "errorMessage");
        y45.j(bVar, "errorType");
        this.a = i;
        this.b = str;
        this.c = bVar;
        this.d = th;
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.a == pVar.a && y45.e(this.b, pVar.b) && this.c == pVar.c && y45.e(this.d, pVar.d);
    }

    public int hashCode() {
        int iHashCode = ((((Integer.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31;
        Throwable th = this.d;
        return iHashCode + (th == null ? 0 : th.hashCode());
    }

    public String toString() {
        return "AdVideoError(errorCode=" + this.a + ", errorMessage=" + this.b + ", errorType=" + this.c + ", cause=" + this.d + ')';
    }

    public p(int i, String str, b bVar, Throwable th, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, (i2 & 4) != 0 ? b.UNKNOWN : bVar, (i2 & 8) != 0 ? null : th);
    }
}
