package com.cloud.hisavana.sdk.data.bean.response.ccofig;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\r\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\r\u0010\bJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;", "", MethodDecl.initName, "()V", "", CustomConfigsKt.COMMON_CONFIG, "Lzfb;", "formatCommonConfig", "(Ljava/lang/String;)V", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;", "getCommonConfig", "()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;", "customTabConfig", "formatCCTConfig", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;", "getCCTConfig", "()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "cctConfig", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;", "commmonConfig", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CustomTabUtil {
    public static final CustomTabUtil INSTANCE = new CustomTabUtil();
    public static final String TAG = "CustomTabUtil";
    private static volatile CustomTabConfigDTO cctConfig;
    private static volatile CommonConfigDTO commmonConfig;

    private CustomTabUtil() {
    }

    public static final void formatCCTConfig(String customTabConfig) {
        if (TextUtils.isEmpty(customTabConfig)) {
            cctConfig = null;
            return;
        }
        try {
            cctConfig = (CustomTabConfigDTO) GsonUtil.a(customTabConfig, CustomTabConfigDTO.class);
        } catch (Throwable th) {
            Log.e(TAG, "formatCCTConfig: ", th);
        }
    }

    public static final void formatCommonConfig(String commonConfig) {
        if (TextUtils.isEmpty(commonConfig)) {
            commmonConfig = null;
            return;
        }
        try {
            commmonConfig = (CommonConfigDTO) GsonUtil.a(commonConfig, CommonConfigDTO.class);
        } catch (Throwable th) {
            Log.e(TAG, "formatCommonConfig: ", th);
        }
    }

    public static final CustomTabConfigDTO getCCTConfig() {
        return cctConfig;
    }

    public static final CommonConfigDTO getCommonConfig() {
        return commmonConfig;
    }
}
