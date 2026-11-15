package com.transsion.dbdata.beans.onlinevideo;

import android.os.Build;
import com.blankj.utilcode.util.b;
import com.hisavana.common.tracking.TrackingKey;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import defpackage.az8;
import defpackage.la3;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.util.Locale;
import okhttp3.FormBody;
import okhttp3.RequestBody;

public abstract class RecommendBean {

    public static class Mango extends RecommendBean {
        public static final String MID = "517788";
        public static final String SID = "91581";
        public static final String TOKEN = "c3d01486660ed4ef4ca2f60023878e0e";
        public String androididMd5;
        public String currId;
        public String reqId;
        public String sid = SID;
        public String mid = MID;
        public String ts = String.valueOf(System.currentTimeMillis());
        public String sign = la3.e("91581|" + this.ts + "|" + TOKEN).toLowerCase(Locale.ROOT);
        public String androidid = az8.a().e("visha_gaid", "132465169519198");
        public String ip = "10.153.64.85";
        public String device = ConstantDeviceInfo.APP_PLATFORM;
        public String osVersion = String.valueOf(Build.VERSION.SDK_INT);
        public String appVersion = b.d();
        public String mod = Build.MODEL;
        public String mf = Build.BOARD;
        public String ua = "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.220 Safari/535.1";
        public int allowRc = 1;
        public String paySupport = "1";

        public Mango create(String str, String str2) {
            this.currId = str;
            this.ip = str2;
            return this;
        }

        @Override
        public RequestBody getRequestBody() {
            FormBody.Builder builder = new FormBody.Builder();
            builder.add("sid", this.sid);
            builder.add("mid", this.mid);
            builder.add(TrackingKey.TS, this.ts);
            builder.add("sign", this.sign);
            builder.add("androidid", this.androidid);
            builder.add("ip", this.ip);
            builder.add("device", this.device);
            builder.add("osVersion", this.osVersion);
            builder.add("appVersion", this.appVersion);
            builder.add(DownloadFacadeEnum.USER_MOD, this.mod);
            builder.add(DownloadFacadeEnum.USER_MF, this.mf);
            builder.add(DownloadFacadeEnum.USER_UA, this.ua);
            builder.add("paySupport", this.paySupport);
            return builder.build();
        }

        public String toString() {
            return "Mango{sid='" + this.sid + "', mid='" + this.mid + "', ts='" + this.ts + "', sign='" + this.sign + "', androidid='" + this.androidid + "', androididMd5='" + this.androididMd5 + "', ip='" + this.ip + "', device='" + this.device + "', osVersion='" + this.osVersion + "', appVersion='" + this.appVersion + "', mod='" + this.mod + "', mf='" + this.mf + "', ua='" + this.ua + "', allowRc=" + this.allowRc + ", currId='" + this.currId + "', reqId='" + this.reqId + "', paySupport='" + this.paySupport + "'}";
        }
    }

    public abstract RequestBody getRequestBody();
}
