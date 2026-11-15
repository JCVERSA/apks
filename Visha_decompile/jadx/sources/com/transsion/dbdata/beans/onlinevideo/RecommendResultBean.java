package com.transsion.dbdata.beans.onlinevideo;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.xuanniao.account.model.data.CloudItem;
import java.util.ArrayList;

@Keep
public abstract class RecommendResultBean {

    @Keep
    public static class MangoResult extends RecommendResultBean {

        @SerializedName(TrackingKey.CODE)
        public int code;

        @SerializedName("data")
        public Data data;

        @SerializedName(NotificationCompat.CATEGORY_MESSAGE)
        public String msg;

        @Keep
        public static class Data {

            @SerializedName("items")
            public Result[] items;
        }

        @Keep
        public static class Result {
            public static final int FREE = 0;
            public static final int PAY = 1;

            @SerializedName(CmcdConfiguration.KEY_CONTENT_ID)
            public String cid;

            @SerializedName("clks")
            public Clks[] clks;

            @SerializedName("duration")
            public int duration;

            @SerializedName("global")
            public Global[] global;

            @SerializedName(TtmlNode.ATTR_ID)
            public String id;

            @SerializedName("imgX")
            public String imgX;

            @SerializedName("imgY")
            public String imgY;

            @SerializedName("imps")
            public Imps[] imps;

            @SerializedName("isPay")
            public int isPay;

            @SerializedName("name")
            public String name;

            @SerializedName("subTitle")
            public String subTitle;

            @Keep
            public static class Clks {

                @SerializedName("data")
                public String data;

                @SerializedName("method")
                public String method;

                @SerializedName("url")
                public String url;
            }

            @Keep
            public static class Global {

                @SerializedName("abroad")
                public int abroad;

                @SerializedName(CloudItem.KEY_CATEGORY)
                public String category;

                @SerializedName("name")
                public String name;

                @SerializedName("subTitle")
                public String subTitle;
            }

            @Keep
            public static class Imps {

                @SerializedName("data")
                public String data;

                @SerializedName("method")
                public String method;

                @SerializedName("url")
                public String url;
            }

            public boolean isFree() {
                return this.isPay == 0;
            }
        }

        @Override
        public SimpleMediaBeans getSimpleMediaBean() {
            Result[] resultArr;
            SimpleMediaBeans simpleMediaBeans = new SimpleMediaBeans();
            if (this.code != 0) {
                simpleMediaBeans.resultState = SimpleMediaBeans.State.ERROR;
                simpleMediaBeans.errMsg = this.msg;
                return simpleMediaBeans;
            }
            Data data = this.data;
            if (data == null || (resultArr = data.items) == null || resultArr.length == 0) {
                simpleMediaBeans.resultState = SimpleMediaBeans.State.EMPTY;
                simpleMediaBeans.errMsg = "";
                return simpleMediaBeans;
            }
            simpleMediaBeans.resultState = SimpleMediaBeans.State.SUCESS;
            simpleMediaBeans.data = new ArrayList(this.data.items.length);
            for (Result result : this.data.items) {
                SimpleMediaBean simpleMediaBeanConvert = SimpleMediaBean.convert(result);
                if (simpleMediaBeanConvert.flag) {
                    simpleMediaBeans.addFirst(simpleMediaBeanConvert);
                } else {
                    simpleMediaBeans.addLast(simpleMediaBeanConvert);
                }
            }
            return simpleMediaBeans;
        }
    }

    @Keep
    public abstract SimpleMediaBeans getSimpleMediaBean();
}
