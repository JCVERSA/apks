package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.mediationads.beans.AdDisplayResponse;
import com.transsion.playercommon.vishaapis.adstrategy.AdStrategyApi;
import com.transsion.retrofit.reponse.BaseResponse;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J%\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lbu4;", "", "", "regionId", "Lmc7;", "Lcom/transsion/retrofit/reponse/BaseResponse;", "Lcom/transsion/mediationads/beans/AdDisplayResponse;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(I)Lmc7;", "mediationAds_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface bu4 {
    @q94(AdStrategyApi.API_VISHA_AD_STRATEGY)
    @wy9
    mc7<BaseResponse<AdDisplayResponse>> a(@wk8("regionId") int regionId);
}
