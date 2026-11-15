package defpackage;

import com.transsion.privateroom.api.beans.FeedbackBean;
import com.transsion.privateroom.api.beans.PrivateCodeVerifyInfoBean;
import com.transsion.retrofit.reponse.BaseResponse;

public interface ae9 {
    @wy9
    @zu7("/visha/api/verify-code/private/code/verify")
    jq0<BaseResponse> a(@gg0 PrivateCodeVerifyInfoBean privateCodeVerifyInfoBean);

    @wy9
    @zu7("/visha/api/verify-code/private/code/send")
    jq0<BaseResponse> b(@gg0 PrivateCodeVerifyInfoBean privateCodeVerifyInfoBean);

    @wy9
    @zu7("/visha/api/feedback/submit")
    jq0<BaseResponse> c(@gg0 FeedbackBean feedbackBean);
}
