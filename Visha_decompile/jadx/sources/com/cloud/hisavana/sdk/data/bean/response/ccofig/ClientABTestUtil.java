package com.cloud.hisavana.sdk.data.bean.response.ccofig;

import android.util.Log;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.google.gson.reflect.TypeToken;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.ikd;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\r2\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R0\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ClientABTestUtil;", "", MethodDecl.initName, "()V", "", "abName", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;", "getCurrentABTest", "(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;", "abTestJson", "Lzfb;", "convertABJsonToMap", "(Ljava/lang/String;)V", "", "convertJsonToABTestList", "(Ljava/lang/String;)Ljava/util/List;", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "Ljava/util/concurrent/ConcurrentHashMap;", "mABMap", "Ljava/util/concurrent/ConcurrentHashMap;", "getMABMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "setMABMap", "(Ljava/util/concurrent/ConcurrentHashMap;)V", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ClientABTestUtil {
    public static final String TAG = "ClientABTestUtil";
    public static final ClientABTestUtil INSTANCE = new ClientABTestUtil();
    private static ConcurrentHashMap<String, ABTest> mABMap = new ConcurrentHashMap<>();

    private ClientABTestUtil() {
    }

    public static final void convertABJsonToMap(String abTestJson) {
        String abName;
        ConcurrentHashMap<String, ABTest> concurrentHashMap;
        ConcurrentHashMap<String, ABTest> concurrentHashMap2 = mABMap;
        if (concurrentHashMap2 != null) {
            concurrentHashMap2.clear();
        }
        if (abTestJson == null || abTestJson.length() == 0) {
            ikd.b().d(TAG, "ClientABTestUtil convertABJsonToMap, reason = customConfigs is null");
            return;
        }
        List<ABTest> listConvertJsonToABTestList = INSTANCE.convertJsonToABTestList(abTestJson);
        if (listConvertJsonToABTestList == null || listConvertJsonToABTestList.isEmpty()) {
            ikd.b().d(TAG, "ClientABTestUtil convertABJsonToMap, reason = abList is null or empty");
            return;
        }
        for (ABTest aBTest : listConvertJsonToABTestList) {
            if (aBTest != null && (abName = aBTest.getAbName()) != null && abName.length() != 0 && (concurrentHashMap = mABMap) != null) {
                concurrentHashMap.put(aBTest.getAbName(), aBTest);
            }
        }
        if (Log.isLoggable("ADSDK", 3)) {
            ikd.b().i(TAG, "ClientABTestUtil convertABJsonToMap, mABMap = " + mABMap);
        }
    }

    private final List<ABTest> convertJsonToABTestList(String abTestJson) {
        if (abTestJson != null && abTestJson.length() != 0) {
            try {
                return (List) GsonUtil.b(abTestJson, new TypeToken<List<? extends ABTest>>() {
                }.getType());
            } catch (Exception e) {
                ikd.b().w(TAG, "ClientABTestUtil fail, reason = " + e.getMessage());
            }
        }
        return null;
    }

    public static final ABTest getCurrentABTest(String abName) {
        ConcurrentHashMap<String, ABTest> concurrentHashMap;
        if (abName == null || abName.length() == 0 || (concurrentHashMap = mABMap) == null) {
            return null;
        }
        return concurrentHashMap.get(abName);
    }

    public final ConcurrentHashMap<String, ABTest> getMABMap() {
        return mABMap;
    }

    public final void setMABMap(ConcurrentHashMap<String, ABTest> concurrentHashMap) {
        mABMap = concurrentHashMap;
    }
}
