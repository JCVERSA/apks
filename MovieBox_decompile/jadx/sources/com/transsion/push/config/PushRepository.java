package com.transsion.push.config;

import android.text.TextUtils;
import android.util.Base64;
import com.transsion.core.utils.f;
import com.transsion.crypto.TCrypterSdk;
import com.transsion.gslb.GslbSdk;
import com.transsion.json.b;
import com.transsion.push.IClientIdListener;
import com.transsion.push.ITopicListener;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.ConfigInfo;
import com.transsion.push.bean.SelfDestroyInfo;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.FirebaseUtils;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import com.transsion.push.utils.ThreadManager;
import com.transsion.push.utils.g0;
import com.transsion.push.utils.k0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class PushRepository implements IDataSource {

    private static PushRepository f48705e = null;

    private static long f48706f = -1;

    private static long f48707g = -1;

    private f f48708a;

    private com.transsion.push.config.a f48709b;

    private ConfigInfo.Config f48710c;

    private String f48711d;

    class a implements FirebaseUtils.b {

        final IClientIdListener f48715a;

        a(IClientIdListener iClientIdListener) {
            this.f48715a = iClientIdListener;
        }

        @Override
        public void onFail() {
            IClientIdListener iClientIdListener = this.f48715a;
            if (iClientIdListener != null) {
                iClientIdListener.onFail("get token fail");
            }
        }

        @Override
        public void onSuccess() {
            PushRepository.this.d(this.f48715a);
        }
    }

    private PushRepository() {
        try {
            this.f48708a = f.e(PushConstants.SP_FILENAME);
        } catch (Exception unused) {
        }
        this.f48709b = new com.transsion.push.config.a();
    }

    private void c() {
        int iIntValue = ((Integer) getSpValue(PushConstants.SP_KEY_RETRY_COUNT, 0)).intValue();
        int iC = g0.c();
        PushLogUtils.LOG.g("Reporting Failure, Retry Reporting,retryCount：" + iIntValue + ", max retryCount：" + iC);
        if (iIntValue < iC) {
            putSpValue(PushConstants.SP_KEY_RETRY_COUNT, Integer.valueOf(iIntValue + 1));
            saveReportTime(System.currentTimeMillis() + g0.d());
        } else {
            PushLogUtils.LOG.g("More than the maximum number of retries");
            saveReportTime(System.currentTimeMillis() + g0.b());
            putSpValue(PushConstants.SP_KEY_RETRY_COUNT, 0);
        }
    }

    public void d(final IClientIdListener iClientIdListener) {
        if (this.f48709b != null) {
            ThreadManager.executeInBackground(new Runnable() {
                @Override
                public void run() {
                    ConfigInfo.Whitelist whitelist;
                    ConfigInfo.Config config;
                    ConfigInfo configInfoF = PushRepository.this.f48709b.f();
                    if (configInfoF == null) {
                        IClientIdListener iClientIdListener2 = iClientIdListener;
                        if (iClientIdListener2 != null) {
                            iClientIdListener2.onFail("get client id fail");
                        }
                        PushLogUtils.LOG.g("get client id fail");
                        return;
                    }
                    PushLogUtils.LOG.g("get config response data: " + configInfoF.toString());
                    PushRepository.this.putSpValue(PushConstants.SP_KEY_IS_NEXT_WITH_APP, Boolean.valueOf(configInfoF.nextWithApp));
                    PushRepository.this.putSpValue(PushConstants.SP_KEY_IS_REPORT_DETAIL, Boolean.valueOf(configInfoF.nextWithDetail));
                    PushRepository.this.putSpValue(PushConstants.SP_KEY_CLIENT_ID, configInfoF.clientId);
                    k0.f(configInfoF.destroyAppIds, configInfoF.syncInfoInterval);
                    if (configInfoF.configRefresh && (config = configInfoF.config) != null && config.version > 0) {
                        PushRepository.this.saveConfig(config);
                        PushRepository.this.putSpValue(PushConstants.SP_KEY_SELF_DESTROYING, Integer.valueOf(configInfoF.config.destroy));
                    }
                    if (configInfoF.whitelistRefresh && (whitelist = configInfoF.whitelist) != null && whitelist.version > 0) {
                        PushRepository.this.saveWhiteList(whitelist);
                    }
                    IClientIdListener iClientIdListener3 = iClientIdListener;
                    if (iClientIdListener3 != null) {
                        iClientIdListener3.onSuccess(configInfoF.clientId);
                    }
                }
            });
            return;
        }
        if (iClientIdListener != null) {
            iClientIdListener.onFail("mRemoteDataSource is null");
        }
        PushLogUtils.LOG.z("mRemoteDataSource is null");
    }

    public static synchronized PushRepository getInstance() {
        try {
            if (f48705e == null) {
                f48705e = new PushRepository();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f48705e;
    }

    @Override
    public void getClientId(IClientIdListener iClientIdListener) {
        PushLogUtils.LOG.g("get client id");
        String str = (String) getSpValue(PushConstants.SP_KEY_CLIENT_ID, "");
        if (!TextUtils.isEmpty(str) && iClientIdListener != null) {
            iClientIdListener.onSuccess(str);
        } else if (TextUtils.isEmpty((CharSequence) getSpValue(PushConstants.SP_KEY_FCM_TOKEN, ""))) {
            FirebaseUtils.d(new a(iClientIdListener));
        } else {
            d(iClientIdListener);
        }
    }

    @Override
    public ConfigInfo.Config getConfig() {
        ConfigInfo.Config config = this.f48710c;
        if (config != null) {
            return config;
        }
        f fVar = this.f48708a;
        if (fVar == null) {
            return null;
        }
        String strJ = fVar.j(PushConstants.SP_KEY_CONFIG, null);
        if (TextUtils.isEmpty(strJ)) {
            return null;
        }
        try {
            return (ConfigInfo.Config) b.a(new String(Base64.decode(strJ, 0)), ConfigInfo.Config.class);
        } catch (Exception e10) {
            PushLogUtils.LOG.i("get config fail, e:" + e10.getMessage());
            return null;
        }
    }

    public long getLastTpmsReportTime() {
        long jCurrentTimeMillis = System.currentTimeMillis() - 1;
        long j10 = f48707g;
        if (j10 > 0) {
            return j10;
        }
        f fVar = this.f48708a;
        if (fVar == null) {
            return jCurrentTimeMillis;
        }
        f48707g = fVar.h(PushConstants.SP_KEY_REPORT_TPMS_TIME, 0L);
        PushLogUtils.LOG.g("sLocalTpmsReportTime" + f48707g);
        if (f48707g <= 0) {
            this.f48708a.o(PushConstants.SP_KEY_REPORT_TPMS_TIME, jCurrentTimeMillis);
            f48707g = jCurrentTimeMillis;
        }
        return f48707g;
    }

    @Override
    public long getReportTime() {
        long jCurrentTimeMillis = System.currentTimeMillis() - 1;
        long j10 = f48706f;
        if (j10 > 0) {
            return j10;
        }
        f fVar = this.f48708a;
        if (fVar == null) {
            return jCurrentTimeMillis;
        }
        long jH = fVar.h(PushConstants.SP_KEY_REPORT_ACTIVE_TIME, 0L);
        f48706f = jH;
        if (jH <= 0) {
            this.f48708a.o(PushConstants.SP_KEY_REPORT_ACTIVE_TIME, jCurrentTimeMillis);
            f48706f = jCurrentTimeMillis;
        }
        return f48706f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public <T> T getSpValue(String str, T t10) {
        f fVar = this.f48708a;
        if (fVar == null) {
            return t10;
        }
        try {
            if (t10 instanceof String) {
                return (T) fVar.j(str, (String) t10);
            }
            if (t10 instanceof Boolean) {
                return (T) Boolean.valueOf(fVar.c(str, ((Boolean) t10).booleanValue()));
            }
            if (t10 instanceof Integer) {
                return (T) Integer.valueOf(fVar.f(str, ((Integer) t10).intValue()));
            }
            if (t10 instanceof Long) {
                return (T) Long.valueOf(fVar.h(str, ((Long) t10).longValue()));
            }
            if (t10 instanceof Float) {
                return (T) Float.valueOf(fVar.d(str, ((Float) t10).floatValue()));
            }
            if (t10 instanceof Set) {
                return (T) fVar.k(str, new HashSet());
            }
            PushLogUtils.LOG.i("Type of " + t10.getClass().getSimpleName() + " is not supported.");
            return t10;
        } catch (ClassCastException e10) {
            PushLogUtils.LOG.i("Type of default value is not match with value stored." + System.lineSeparator() + e10.getMessage());
            return t10;
        }
    }

    @Override
    public ConfigInfo.Whitelist getWhiteList() {
        if (!TextUtils.isEmpty(this.f48711d)) {
            try {
                return (ConfigInfo.Whitelist) b.a(this.f48711d, ConfigInfo.Whitelist.class);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        try {
            String strA = TCrypterSdk.a(yj.a.a(), PushConstants.SP_KEY_WHITE_LIST);
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            this.f48711d = strA;
            return (ConfigInfo.Whitelist) b.a(strA, ConfigInfo.Whitelist.class);
        } catch (Exception e11) {
            PushLogUtils.LOG.i("get white list fail, e:" + e11.getMessage());
            return null;
        }
    }

    @Override
    public boolean isReported() {
        f fVar = this.f48708a;
        if (fVar == null) {
            return false;
        }
        try {
            return fVar.b(PushConstants.SP_KEY_REPORT_ACTIVE_SUCCESS);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public void putSpValue(String str, Object obj) {
        f fVar = this.f48708a;
        if (fVar == null) {
            return;
        }
        try {
            if (obj instanceof String) {
                fVar.p(str, (String) obj);
            } else if (obj instanceof Boolean) {
                fVar.l(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Integer) {
                fVar.n(str, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                fVar.o(str, ((Long) obj).longValue());
            } else if (obj instanceof Float) {
                fVar.m(str, ((Float) obj).floatValue());
            } else if (obj instanceof Set) {
                fVar.q(str, (Set) obj);
            }
        } catch (Exception e10) {
            PushLogUtils.LOG.i("put sp, Type of default value is not match with value stored." + System.lineSeparator() + e10.getMessage());
        }
    }

    @Override
    public void removeSpValue(String str) {
        try {
            f fVar = this.f48708a;
            if (fVar != null) {
                fVar.r(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void saveConfig(ConfigInfo.Config config) {
        f fVar;
        if (config == null || (fVar = this.f48708a) == null) {
            return;
        }
        try {
            this.f48710c = config;
            fVar.p(PushConstants.SP_KEY_CONFIG, new String(Base64.encode(b.b(config).getBytes(), 0)));
        } catch (Exception e10) {
            PushLogUtils.LOG.i("save config fail, e:" + e10.getMessage());
        }
    }

    @Override
    public void saveReportTime(long j10) {
        if (this.f48708a == null) {
            return;
        }
        PushLogUtils.LOG.g("Update reporting time，reportTime:" + j10);
        f48706f = j10;
        this.f48708a.o(PushConstants.SP_KEY_REPORT_ACTIVE_TIME, j10);
    }

    public void saveTpmsReportTime(long j10) {
        if (this.f48708a == null) {
            return;
        }
        PushLogUtils.LOG.g("Update reporting time，reportTime:" + j10);
        f48707g = j10;
        this.f48708a.o(PushConstants.SP_KEY_REPORT_TPMS_TIME, j10);
    }

    @Override
    public void saveWhiteList(ConfigInfo.Whitelist whitelist) {
        List<ConfigInfo.Apps> list;
        if (whitelist == null || (list = whitelist.apps) == null || list.size() == 0) {
            return;
        }
        try {
            if (TextUtils.isEmpty(this.f48711d)) {
                this.f48711d = b.b(whitelist);
                TCrypterSdk.c(yj.a.a(), PushConstants.SP_KEY_WHITE_LIST, this.f48711d);
                return;
            }
            List<ConfigInfo.Apps> list2 = ((ConfigInfo.Whitelist) b.a(this.f48711d, ConfigInfo.Whitelist.class)).apps;
            for (ConfigInfo.Apps apps : whitelist.apps) {
                if (!list2.contains(apps)) {
                    list2.add(apps);
                }
            }
            ConfigInfo.Whitelist whitelist2 = new ConfigInfo.Whitelist();
            whitelist2.version = whitelist.version;
            whitelist2.apps = new ArrayList(list2);
            this.f48711d = b.b(whitelist2);
            TCrypterSdk.c(yj.a.a(), PushConstants.SP_KEY_WHITE_LIST, this.f48711d);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void subscribeToTopic(final String str, final ITopicListener iTopicListener) {
        if (TextUtils.isEmpty(str)) {
            if (iTopicListener != null) {
                iTopicListener.onFail("subscribe topic is empty");
                PushLogUtils.LOG.i("subscribe topic is empty");
                return;
            }
            return;
        }
        if (!TextUtils.isEmpty((CharSequence) getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, ""))) {
            ThreadManager.executeInBackground(new Runnable() {

                class a implements ITopicListener {

                    final HashSet f48712a;

                    a(HashSet hashSet) {
                        this.f48712a = hashSet;
                    }

                    @Override
                    public void onFail(String str) {
                        ITopicListener iTopicListener = iTopicListener;
                        if (iTopicListener != null) {
                            iTopicListener.onFail(str);
                        }
                    }

                    @Override
                    public void onSuccess() {
                        if (str.contains(",")) {
                            for (String str : str.split(",")) {
                                this.f48712a.add(str);
                            }
                        } else {
                            this.f48712a.add(str);
                        }
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_SUBSCRIBE_TOPICS, this.f48712a);
                        ITopicListener iTopicListener = iTopicListener;
                        if (iTopicListener != null) {
                            iTopicListener.onSuccess();
                        }
                    }
                }

                @Override
                public void run() {
                    HashSet hashSet = (HashSet) PushRepository.this.getSpValue(PushConstants.SP_KEY_SUBSCRIBE_TOPICS, new HashSet());
                    if (!hashSet.contains(str)) {
                        PushRepository.this.f48709b.g(str, PushConstants.TOPIC_SUBSCRIBE, new a(hashSet));
                        return;
                    }
                    PushLogUtils.LOG.g("subscribe topic, " + str + " has been subscribed");
                    ITopicListener iTopicListener2 = iTopicListener;
                    if (iTopicListener2 != null) {
                        iTopicListener2.onSuccess();
                    }
                }
            });
        } else if (iTopicListener != null) {
            iTopicListener.onFail("subscribe clientId is empty");
            PushLogUtils.LOG.i("subscribe clientId is empty");
        }
    }

    @Override
    public void syncActive() {
        ConfigInfo.Whitelist whitelist;
        ConfigInfo.Config config;
        if (TextUtils.isEmpty((CharSequence) getSpValue(PushConstants.SP_KEY_FCM_TOKEN, ""))) {
            PushLogUtils.LOG.z("Token is empty");
            return;
        }
        if (this.f48709b == null) {
            PushLogUtils.LOG.z("mRemoteDataSource is null");
            return;
        }
        if (!PushManager.getInstance().getDebug() && !PushManager.getInstance().getTestEnv() && !GslbSdk.isInitSuccess(PushConstants.BASE_RELEASE_URL_V2)) {
            GslbSdk.getDomain(PushConstants.BASE_RELEASE_URL_V2, true);
        }
        ConfigInfo configInfoF = this.f48709b.f();
        if (configInfoF == null) {
            PushLogUtils.LOG.g("syncActive onFail");
            if (TextUtils.isEmpty((CharSequence) getSpValue(PushConstants.SP_KEY_CLIENT_ID, ""))) {
                return;
            }
            c();
            return;
        }
        putSpValue(PushConstants.SP_KEY_RETRY_COUNT, 0);
        PushLogUtils.LOG.g("get config response data: " + configInfoF.toString());
        putSpValue(PushConstants.SP_KEY_IS_NEXT_WITH_APP, Boolean.valueOf(configInfoF.nextWithApp));
        putSpValue(PushConstants.SP_KEY_IS_REPORT_DETAIL, Boolean.valueOf(configInfoF.nextWithDetail));
        putSpValue(PushConstants.SP_KEY_CLIENT_ID, configInfoF.clientId);
        putSpValue(PushConstants.SP_KEY_START_POINT_REPORT, Boolean.valueOf(configInfoF.startPointReport));
        k0.f(configInfoF.destroyAppIds, configInfoF.syncInfoInterval);
        PushUtils.w();
        if (configInfoF.configRefresh && (config = configInfoF.config) != null && config.version > 0) {
            saveConfig(config);
            putSpValue(PushConstants.SP_KEY_SELF_DESTROYING, Integer.valueOf(configInfoF.config.destroy));
        }
        if (configInfoF.whitelistRefresh && (whitelist = configInfoF.whitelist) != null && whitelist.version > 0) {
            saveWhiteList(whitelist);
        }
        saveReportTime(System.currentTimeMillis() + g0.b());
        putSpValue(PushConstants.SP_KEY_REPORT_ACTIVE_SUCCESS, Boolean.TRUE);
    }

    @Override
    public void syncSelfDestroying() {
        if (this.f48709b == null) {
            PushLogUtils.LOG.z("mRemoteDataSource is null");
            return;
        }
        if (!PushManager.getInstance().getDebug() && !PushManager.getInstance().getTestEnv() && !GslbSdk.isInitSuccess(PushConstants.BASE_RELEASE_URL_V2)) {
            PushLogUtils.LOG.z("gslb not inited");
            return;
        }
        Tracker.getInstance().trackReport();
        SelfDestroyInfo selfDestroyInfoE = this.f48709b.e();
        if (selfDestroyInfoE == null) {
            PushLogUtils.LOG.i("sync self-destroying fail");
            putSpValue(PushConstants.SP_KEY_SELF_DESTROYING_TIME, Long.valueOf(System.currentTimeMillis() + g0.e()));
            return;
        }
        PushLogUtils.LOG.g("get self-destroying response data: " + selfDestroyInfoE.toString());
        putSpValue(PushConstants.SP_KEY_SELF_DESTROYING, Integer.valueOf(selfDestroyInfoE.destroy));
        putSpValue(PushConstants.SP_KEY_SELF_DESTROYING_INTERVAL, Integer.valueOf(selfDestroyInfoE.interval));
        putSpValue(PushConstants.SP_KEY_SELF_DESTROYING_TIME, Long.valueOf(System.currentTimeMillis() + g0.e()));
    }

    @Override
    public void unsubscribeFromTopic(final String str, final ITopicListener iTopicListener) {
        if (TextUtils.isEmpty(str)) {
            if (iTopicListener != null) {
                iTopicListener.onFail("unsubscribe topic is empty");
                PushLogUtils.LOG.i("unsubscribe topic is empty");
                return;
            }
            return;
        }
        if (!TextUtils.isEmpty((CharSequence) getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, ""))) {
            ThreadManager.executeInBackground(new Runnable() {

                class a implements ITopicListener {
                    a() {
                    }

                    @Override
                    public void onFail(String str) {
                        ITopicListener iTopicListener = iTopicListener;
                        if (iTopicListener != null) {
                            iTopicListener.onFail(str);
                        }
                    }

                    @Override
                    public void onSuccess() {
                        HashSet hashSet = (HashSet) PushRepository.this.getSpValue(PushConstants.SP_KEY_SUBSCRIBE_TOPICS, new HashSet());
                        if (str.equals(PushConstants.SP_KEY_APP_TOPIC_UNSUBSCRIBE_ALL)) {
                            hashSet.clear();
                        } else if (str.contains(",")) {
                            for (String str : str.split(",")) {
                                hashSet.remove(str);
                            }
                        } else {
                            hashSet.remove(str);
                        }
                        PushRepository.this.putSpValue(PushConstants.SP_KEY_SUBSCRIBE_TOPICS, hashSet);
                        ITopicListener iTopicListener = iTopicListener;
                        if (iTopicListener != null) {
                            iTopicListener.onSuccess();
                        }
                    }
                }

                @Override
                public void run() {
                    PushRepository.this.f48709b.g(str, PushConstants.TOPIC_UNSUBSCRIBE, new a());
                }
            });
        } else if (iTopicListener != null) {
            iTopicListener.onFail("unsubscribe clientId is empty");
            PushLogUtils.LOG.i("unsubscribe clientId is empty");
        }
    }

    @Override
    public void updateNewToken(String str) {
        putSpValue(PushConstants.SP_KEY_FCM_TOKEN, str);
        putSpValue(PushConstants.SP_KEY_IS_REPORT_DETAIL, Boolean.TRUE);
        putSpValue(PushConstants.SP_KEY_REPORT_ACTIVE_SUCCESS, Boolean.FALSE);
    }
}
