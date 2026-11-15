package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.onlinevideo.tiktok.TtLogEvent;
import com.transsion.dbdata.beans.onlinevideo.tiktok.TtPlayUrlRequest;
import com.transsion.dbdata.beans.onlinevideo.tiktok.TtPlayUrlResponse;
import com.transsion.dbdata.beans.onlinevideo.tiktok.TtStreamResponse;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiConfig;
import com.transsion.retrofit.reponse.BaseResponse;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001Ju\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b\r\u0010\u000eJ7\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00130\u000b2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u000e\b\u0001\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H'¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u000b2\b\b\u0001\u0010\u0017\u001a\u00020\u0016H'¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Llw4;", "", "", "dt", "deviceBrand", "os", "osVersion", "clientVersion", "ac", "country", "osLanguage", "Lmc7;", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmc7;", "eventType", "", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;", "events", "Lcom/transsion/retrofit/reponse/BaseResponse;", "b", "(Ljava/lang/String;Ljava/util/List;)Lmc7;", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;", TtmlNode.TAG_BODY, "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;", "c", "(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;)Lmc7;", "onlinevideo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface lw4 {
    @q94(OnlineVideoApiConfig.API.API_TT_DATA_STREAM)
    @wy9
    mc7<TtStreamResponse> a(@wk8("dt") String dt, @wk8("device_brand") String deviceBrand, @wk8("os") String os, @wk8(CommonUrlParts.OS_VERSION) String osVersion, @wk8("client_version") String clientVersion, @wk8("ac") String ac, @wk8("country") String country, @wk8("os_language") String osLanguage);

    @zu7(OnlineVideoApiConfig.API.API_TT_ACTION_LOGS)
    mc7<BaseResponse<Object>> b(@wk8("eventType") String eventType, @gg0 List<TtLogEvent> events);

    @zu7(OnlineVideoApiConfig.API.API_TT_VIDEO_URL)
    mc7<TtPlayUrlResponse> c(@gg0 TtPlayUrlRequest body);
}
