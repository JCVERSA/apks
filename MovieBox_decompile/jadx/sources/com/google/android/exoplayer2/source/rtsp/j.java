package com.google.android.exoplayer2.source.rtsp;

import com.google.android.exoplayer2.p1;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Map;
import org.mvel2.ast.ASTNode;

public final class j {

    public final int f25771a;

    public final int f25772b;

    public final p1 f25773c;

    public final ImmutableMap f25774d;

    public j(p1 p1Var, int i10, int i11, Map map) {
        this.f25771a = i10;
        this.f25772b = i11;
        this.f25773c = p1Var;
        this.f25774d = ImmutableMap.copyOf(map);
    }

    public static String a(String str) {
        String strG = com.google.common.base.a.g(str);
        strG.hashCode();
        switch (strG) {
            case "MPEG4-GENERIC":
                return MimeTypes.AUDIO_AAC;
            case "L8":
            case "L16":
                return MimeTypes.AUDIO_RAW;
            case "AC3":
                return MimeTypes.AUDIO_AC3;
            case "AMR":
                return MimeTypes.AUDIO_AMR_NB;
            case "VP8":
                return MimeTypes.VIDEO_VP8;
            case "VP9":
                return MimeTypes.VIDEO_VP9;
            case "H264":
                return MimeTypes.VIDEO_H264;
            case "H265":
                return MimeTypes.VIDEO_H265;
            case "OPUS":
                return MimeTypes.AUDIO_OPUS;
            case "PCMA":
                return MimeTypes.AUDIO_ALAW;
            case "PCMU":
                return MimeTypes.AUDIO_MLAW;
            case "AMR-WB":
                return MimeTypes.AUDIO_AMR_WB;
            case "MP4V-ES":
                return MimeTypes.VIDEO_MP4V;
            case "H263-1998":
            case "H263-2000":
                return MimeTypes.VIDEO_H263;
            default:
                throw new IllegalArgumentException(str);
        }
    }

    public static int b(String str) {
        com.google.android.exoplayer2.util.a.a(str.equals("L8") || str.equals("L16"));
        if (str.equals("L8")) {
            return 3;
        }
        return ASTNode.DEOP;
    }

    public static boolean c(a aVar) {
        String strG = com.google.common.base.a.g(aVar.f25654j.f25665b);
        strG.hashCode();
        switch (strG) {
            case "MPEG4-GENERIC":
            case "L8":
            case "AC3":
            case "AMR":
            case "L16":
            case "VP8":
            case "VP9":
            case "H264":
            case "H265":
            case "OPUS":
            case "PCMA":
            case "PCMU":
            case "AMR-WB":
            case "MP4V-ES":
            case "H263-1998":
            case "H263-2000":
                return true;
            default:
                return false;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f25771a == jVar.f25771a && this.f25772b == jVar.f25772b && this.f25773c.equals(jVar.f25773c) && this.f25774d.equals(jVar.f25774d);
    }

    public int hashCode() {
        return ((((((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f25771a) * 31) + this.f25772b) * 31) + this.f25773c.hashCode()) * 31) + this.f25774d.hashCode();
    }
}
