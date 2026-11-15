package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

abstract class h0 {

    private static final Pattern f25758a = Pattern.compile("([a-z])=\\s?(.+)");

    private static final Pattern f25759b = Pattern.compile("([\\x21\\x23-\\x27\\x2a\\x2b\\x2d\\x2e\\x30-\\x39\\x41-\\x5a\\x5e-\\x7e]+)(?::(.*))?");

    private static final Pattern f25760c = Pattern.compile("(\\S+)\\s(\\S+)\\s(\\S+)\\s(\\S+)");

    private static void a(g0.b bVar, a.b bVar2) throws ParserException {
        try {
            bVar.n(bVar2.j());
        } catch (IllegalArgumentException | IllegalStateException e10) {
            throw ParserException.createForMalformedManifest(null, e10);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:57:0x00e9  */
    public static g0 b(String str) throws ParserException {
        byte b10;
        g0.b bVar = new g0.b();
        a.b bVarC = null;
        for (String str2 : y.s(str)) {
            if (!"".equals(str2)) {
                Matcher matcher = f25758a.matcher(str2);
                if (!matcher.matches()) {
                    throw ParserException.createForMalformedManifest("Malformed SDP line: " + str2, null);
                }
                String str3 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
                String str4 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(2));
                switch (str3.hashCode()) {
                    case 97:
                        if (str3.equals("a")) {
                            b10 = 11;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case 98:
                        if (str3.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                            b10 = 8;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case 99:
                        if (str3.equals("c")) {
                            b10 = 7;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case 100:
                    case 102:
                    case 103:
                    case 104:
                    case 106:
                    case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY:
                    case 110:
                    case 113:
                    case JSON_ENCODE_ERROR_VALUE:
                    case 120:
                    case TPAT_ERROR_VALUE:
                    default:
                        b10 = -1;
                        break;
                    case 101:
                        if (str3.equals("e")) {
                            b10 = 5;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case 105:
                        if (str3.equals("i")) {
                            b10 = 3;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case 107:
                        if (str3.equals(CampaignEx.JSON_KEY_AD_K)) {
                            b10 = 10;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case 109:
                        if (str3.equals("m")) {
                            b10 = 12;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case 111:
                        if (str3.equals("o")) {
                            b10 = 1;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case 112:
                        if (str3.equals(TtmlNode.TAG_P)) {
                            b10 = 6;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case ASSET_WRITE_ERROR_VALUE:
                        if (str3.equals(CampaignEx.JSON_KEY_AD_R)) {
                            b10 = 13;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case INVALID_INDEX_URL_VALUE:
                        if (str3.equals("s")) {
                            b10 = 2;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case GZIP_ENCODE_ERROR_VALUE:
                        if (str3.equals("t")) {
                            b10 = 9;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case ASSET_FAILED_STATUS_CODE_VALUE:
                        if (str3.equals(TmcStartParams.KEY_URL_SHORT)) {
                            b10 = 4;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                        if (str3.equals("v")) {
                            b10 = 0;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case INVALID_ADS_ENDPOINT_VALUE:
                        if (str3.equals("z")) {
                            b10 = 14;
                        } else {
                            b10 = -1;
                        }
                        break;
                }
                switch (b10) {
                    case 0:
                        if (!"0".equals(str4)) {
                            throw ParserException.createForMalformedManifest(String.format("SDP version %s is not supported.", str4), null);
                        }
                        break;
                        break;
                    case 1:
                        bVar.t(str4);
                        break;
                    case 2:
                        bVar.w(str4);
                        break;
                    case 3:
                        if (bVarC == null) {
                            bVar.v(str4);
                        } else {
                            bVarC.p(str4);
                        }
                        break;
                    case 4:
                        bVar.y(Uri.parse(str4));
                        break;
                    case 5:
                        bVar.r(str4);
                        break;
                    case 6:
                        bVar.u(str4);
                        break;
                    case 7:
                        if (bVarC == null) {
                            bVar.q(str4);
                        } else {
                            bVarC.n(str4);
                        }
                        break;
                    case 8:
                        String[] strArrS0 = p0.S0(str4, ":\\s?");
                        com.google.android.exoplayer2.util.a.a(strArrS0.length == 2);
                        int i10 = Integer.parseInt(strArrS0[1]);
                        if (bVarC == null) {
                            bVar.p(i10 * 1000);
                        } else {
                            bVarC.m(i10 * 1000);
                        }
                        break;
                    case 9:
                        bVar.x(str4);
                        break;
                    case 10:
                        if (bVarC == null) {
                            bVar.s(str4);
                        } else {
                            bVarC.o(str4);
                        }
                        break;
                    case 11:
                        Matcher matcher2 = f25759b.matcher(str4);
                        if (!matcher2.matches()) {
                            throw ParserException.createForMalformedManifest("Malformed Attribute line: " + str2, null);
                        }
                        String str5 = (String) com.google.android.exoplayer2.util.a.e(matcher2.group(1));
                        String strE = com.google.common.base.p.e(matcher2.group(2));
                        if (bVarC == null) {
                            bVar.m(str5, strE);
                        } else {
                            bVarC.i(str5, strE);
                        }
                        break;
                        break;
                    case 12:
                        if (bVarC != null) {
                            a(bVar, bVarC);
                        }
                        bVarC = c(str4);
                        break;
                }
            }
        }
        if (bVarC != null) {
            a(bVar, bVarC);
        }
        try {
            return bVar.o();
        } catch (IllegalArgumentException | IllegalStateException e10) {
            throw ParserException.createForMalformedManifest(null, e10);
        }
    }

    private static a.b c(String str) throws ParserException {
        Matcher matcher = f25760c.matcher(str);
        if (!matcher.matches()) {
            throw ParserException.createForMalformedManifest("Malformed SDP media description line: " + str, null);
        }
        try {
            return new a.b((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)), Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))), (String) com.google.android.exoplayer2.util.a.e(matcher.group(3)), Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(4))));
        } catch (NumberFormatException e10) {
            throw ParserException.createForMalformedManifest("Malformed SDP media description line: " + str, e10);
        }
    }
}
