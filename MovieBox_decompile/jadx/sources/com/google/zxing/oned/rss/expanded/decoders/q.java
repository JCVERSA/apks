package com.google.zxing.oned.rss.expanded.decoders;

import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.zxing.NotFoundException;
import com.transsion.push.bean.MsgShowStatus;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.HashMap;
import java.util.Map;

abstract class q {

    private static final Map f32114a;

    private static final Map f32115b;

    private static final Map f32116c;

    private static final Map f32117d;

    private static final class a {

        final boolean f32118a;

        final int f32119b;

        private a(boolean z10, int i10) {
            this.f32118a = z10;
            this.f32119b = i10;
        }

        static a a(int i10) {
            return new a(false, i10);
        }

        static a b(int i10) {
            return new a(true, i10);
        }
    }

    static {
        HashMap map = new HashMap();
        f32114a = map;
        map.put("00", a.a(18));
        map.put("01", a.a(14));
        map.put("02", a.a(14));
        map.put("10", a.b(20));
        map.put(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY, a.a(6));
        map.put("12", a.a(6));
        map.put(PrepareException.ERROR_WARMUP_DOWNLOAD_EXCEPTION, a.a(6));
        map.put(PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION, a.a(6));
        map.put("17", a.a(6));
        map.put("20", a.a(2));
        map.put(ChainPoint.ROUTE_PAGE, a.b(20));
        map.put("22", a.b(29));
        map.put("30", a.b(8));
        map.put("37", a.b(8));
        for (int i10 = 90; i10 <= 99; i10++) {
            f32114a.put(String.valueOf(i10), a.b(30));
        }
        HashMap map2 = new HashMap();
        f32115b = map2;
        map2.put("240", a.b(30));
        map2.put("241", a.b(30));
        map2.put("242", a.b(6));
        map2.put("250", a.b(30));
        map2.put("251", a.b(30));
        map2.put("253", a.b(17));
        map2.put("254", a.b(20));
        map2.put("400", a.b(30));
        map2.put(MsgShowStatus.STATUS_NOTIFY_CLOSE, a.b(30));
        map2.put(MsgShowStatus.STATUS_APP_ERROR, a.a(17));
        map2.put("403", a.b(30));
        map2.put("410", a.a(13));
        map2.put("411", a.a(13));
        map2.put("412", a.a(13));
        map2.put("413", a.a(13));
        map2.put("414", a.a(13));
        map2.put("420", a.b(20));
        map2.put("421", a.b(15));
        map2.put("422", a.a(3));
        map2.put("423", a.b(15));
        map2.put("424", a.a(3));
        map2.put("425", a.a(3));
        map2.put("426", a.a(3));
        f32116c = new HashMap();
        for (int i11 = Sdk$SDKError.Reason.AD_HTML_FAILED_TO_LOAD_VALUE; i11 <= 316; i11++) {
            f32116c.put(String.valueOf(i11), a.a(6));
        }
        for (int i12 = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE; i12 <= 336; i12++) {
            f32116c.put(String.valueOf(i12), a.a(6));
        }
        for (int i13 = 340; i13 <= 357; i13++) {
            f32116c.put(String.valueOf(i13), a.a(6));
        }
        for (int i14 = 360; i14 <= 369; i14++) {
            f32116c.put(String.valueOf(i14), a.a(6));
        }
        Map map3 = f32116c;
        map3.put("390", a.b(15));
        map3.put("391", a.b(18));
        map3.put("392", a.b(15));
        map3.put("393", a.b(18));
        map3.put("703", a.b(30));
        HashMap map4 = new HashMap();
        f32117d = map4;
        map4.put("7001", a.a(13));
        map4.put("7002", a.b(30));
        map4.put("7003", a.a(10));
        map4.put("8001", a.a(14));
        map4.put("8002", a.b(20));
        map4.put("8003", a.b(30));
        map4.put("8004", a.b(30));
        map4.put("8005", a.a(6));
        map4.put("8006", a.a(18));
        map4.put("8007", a.b(30));
        map4.put("8008", a.b(12));
        map4.put("8018", a.a(18));
        map4.put("8020", a.b(25));
        map4.put("8100", a.a(6));
        map4.put("8101", a.a(10));
        map4.put("8102", a.a(2));
        map4.put("8110", a.b(70));
        map4.put("8200", a.b(70));
    }

    static String a(String str) throws NotFoundException {
        if (str.isEmpty()) {
            return null;
        }
        if (str.length() < 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        a aVar = (a) f32114a.get(str.substring(0, 2));
        if (aVar != null) {
            return aVar.f32118a ? c(2, aVar.f32119b, str) : b(2, aVar.f32119b, str);
        }
        if (str.length() < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        String strSubstring = str.substring(0, 3);
        a aVar2 = (a) f32115b.get(strSubstring);
        if (aVar2 != null) {
            return aVar2.f32118a ? c(3, aVar2.f32119b, str) : b(3, aVar2.f32119b, str);
        }
        if (str.length() < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        a aVar3 = (a) f32116c.get(strSubstring);
        if (aVar3 != null) {
            return aVar3.f32118a ? c(4, aVar3.f32119b, str) : b(4, aVar3.f32119b, str);
        }
        a aVar4 = (a) f32117d.get(str.substring(0, 4));
        if (aVar4 != null) {
            return aVar4.f32118a ? c(4, aVar4.f32119b, str) : b(4, aVar4.f32119b, str);
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static String b(int i10, int i11, String str) throws NotFoundException {
        if (str.length() < i10) {
            throw NotFoundException.getNotFoundInstance();
        }
        String strSubstring = str.substring(0, i10);
        int i12 = i11 + i10;
        if (str.length() < i12) {
            throw NotFoundException.getNotFoundInstance();
        }
        String strSubstring2 = str.substring(i10, i12);
        String str2 = '(' + strSubstring + ')' + strSubstring2;
        String strA = a(str.substring(i12));
        if (strA == null) {
            return str2;
        }
        return str2 + strA;
    }

    private static String c(int i10, int i11, String str) throws NotFoundException {
        String strSubstring = str.substring(0, i10);
        int iMin = Math.min(str.length(), i11 + i10);
        String strSubstring2 = str.substring(i10, iMin);
        String str2 = '(' + strSubstring + ')' + strSubstring2;
        String strA = a(str.substring(iMin));
        if (strA == null) {
            return str2;
        }
        return str2 + strA;
    }
}
