package com.transsion.push.config;

import android.text.TextUtils;
import android.util.Base64;
import com.transsion.crypto.TCrypterSdk;
import com.transsion.gslb.GslbSdk;
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
import defpackage.cs8;
import defpackage.lk8;
import defpackage.nk8;
import defpackage.qab;
import defpackage.sg9;
import defpackage.xj1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class PushRepository implements IDataSource {
    public static PushRepository e = null;
    public static long f = -1;
    public static long g = -1;
    public sg9 a;
    public cs8 b;
    public ConfigInfo.Config c;
    public String d;

    public class a implements FirebaseUtils.a {
        public final IClientIdListener a;

        public a(IClientIdListener iClientIdListener) {
            this.a = iClientIdListener;
        }

        @Override
        public void a() {
            IClientIdListener iClientIdListener = this.a;
            if (iClientIdListener != null) {
                iClientIdListener.onFail("get token fail");
            }
        }

        @Override
        public void onSuccess() {
            PushRepository.this.d(this.a);
        }
    }

    public PushRepository() {
        try {
            this.a = sg9.e(PushConstants.SP_FILENAME);
        } catch (Exception unused) {
        }
        this.b = new cs8();
    }

    public static synchronized PushRepository getInstance() {
        try {
            if (e == null) {
                e = new PushRepository();
            }
        } catch (Throwable th) {
            throw th;
        }
        return e;
    }

    public final void c() {
        int iIntValue = ((Integer) getSpValue(PushConstants.SP_KEY_RETRY_COUNT, 0)).intValue();
        int iC = lk8.c();
        PushLogUtils.LOG.g("Reporting Failure, Retry Reporting,retryCount：" + iIntValue + ", max retryCount：" + iC);
        if (iIntValue < iC) {
            putSpValue(PushConstants.SP_KEY_RETRY_COUNT, Integer.valueOf(iIntValue + 1));
            saveReportTime(System.currentTimeMillis() + lk8.d());
        } else {
            PushLogUtils.LOG.g("More than the maximum number of retries");
            saveReportTime(System.currentTimeMillis() + lk8.b());
            putSpValue(PushConstants.SP_KEY_RETRY_COUNT, 0);
        }
    }

    public final void d(final IClientIdListener iClientIdListener) {
        if (this.b != null) {
            ThreadManager.executeInBackground(new Runnable() {
                @Override
                public void run() {
                    ConfigInfo.Whitelist whitelist;
                    ConfigInfo.Config config;
                    ConfigInfo configInfoF = PushRepository.this.b.f();
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
                    nk8.f(configInfoF.destroyAppIds, configInfoF.syncInfoInterval);
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

    @Override
    public void getClientId(IClientIdListener iClientIdListener) {
        PushLogUtils.LOG.g("get client id");
        String str = (String) getSpValue(PushConstants.SP_KEY_CLIENT_ID, "");
        if (!TextUtils.isEmpty(str) && iClientIdListener != null) {
            iClientIdListener.onSuccess(str);
        } else if (TextUtils.isEmpty((CharSequence) getSpValue(PushConstants.SP_KEY_FCM_TOKEN, ""))) {
            FirebaseUtils.i(new a(iClientIdListener));
        } else {
            d(iClientIdListener);
        }
    }

    @Override
    public ConfigInfo.Config getConfig() {
        ConfigInfo.Config config = this.c;
        if (config != null) {
            return config;
        }
        sg9 sg9Var = this.a;
        if (sg9Var == null) {
            return null;
        }
        String strK = sg9Var.k(PushConstants.SP_KEY_CONFIG, null);
        if (TextUtils.isEmpty(strK)) {
            return null;
        }
        try {
            return (ConfigInfo.Config) qab.a(new String(Base64.decode(strK, 0)), ConfigInfo.Config.class);
        } catch (Exception e2) {
            PushLogUtils.LOG.i("get config fail, e:" + e2.getMessage());
            return null;
        }
    }

    public long getLastTpmsReportTime() {
        long jCurrentTimeMillis = System.currentTimeMillis() - 1;
        long j = g;
        if (j > 0) {
            return j;
        }
        sg9 sg9Var = this.a;
        if (sg9Var == null) {
            return jCurrentTimeMillis;
        }
        g = sg9Var.i(PushConstants.SP_KEY_REPORT_TPMS_TIME, 0L);
        PushLogUtils.LOG.g("sLocalTpmsReportTime" + g);
        if (g <= 0) {
            this.a.q(PushConstants.SP_KEY_REPORT_TPMS_TIME, jCurrentTimeMillis);
            g = jCurrentTimeMillis;
        }
        return g;
    }

    @Override
    public long getReportTime() {
        long jCurrentTimeMillis = System.currentTimeMillis() - 1;
        long j = f;
        if (j > 0) {
            return j;
        }
        sg9 sg9Var = this.a;
        if (sg9Var == null) {
            return jCurrentTimeMillis;
        }
        long jI = sg9Var.i(PushConstants.SP_KEY_REPORT_ACTIVE_TIME, 0L);
        f = jI;
        if (jI <= 0) {
            this.a.q(PushConstants.SP_KEY_REPORT_ACTIVE_TIME, jCurrentTimeMillis);
            f = jCurrentTimeMillis;
        }
        return f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public <T> T getSpValue(String str, T t) {
        sg9 sg9Var = this.a;
        if (sg9Var == null) {
            return t;
        }
        try {
            if (t == 0) {
                return (T) sg9Var.k(str, null);
            }
            if (t instanceof String) {
                return (T) sg9Var.k(str, (String) t);
            }
            if (t instanceof Boolean) {
                return (T) Boolean.valueOf(sg9Var.c(str, ((Boolean) t).booleanValue()));
            }
            if (t instanceof Integer) {
                return (T) Integer.valueOf(sg9Var.g(str, ((Integer) t).intValue()));
            }
            if (t instanceof Long) {
                return (T) Long.valueOf(sg9Var.i(str, ((Long) t).longValue()));
            }
            if (t instanceof Float) {
                return (T) Float.valueOf(sg9Var.d(str, ((Float) t).floatValue()));
            }
            if (t instanceof Set) {
                return (T) sg9Var.l(str, new HashSet());
            }
            PushLogUtils.LOG.i("Type is not supported, key: " + str);
            return t;
        } catch (ClassCastException e2) {
            PushLogUtils.LOG.i("Type of default value is not match with value stored." + System.lineSeparator() + e2.getMessage());
            return t;
        }
    }

    @Override
    public ConfigInfo.Whitelist getWhiteList() {
        if (!TextUtils.isEmpty(this.d)) {
            try {
                return (ConfigInfo.Whitelist) qab.a(this.d, ConfigInfo.Whitelist.class);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        try {
            String strA = TCrypterSdk.a(xj1.a(), PushConstants.SP_KEY_WHITE_LIST);
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            this.d = strA;
            return (ConfigInfo.Whitelist) qab.a(strA, ConfigInfo.Whitelist.class);
        } catch (Exception e3) {
            PushLogUtils.LOG.i("get white list fail, e:" + e3.getMessage());
            return null;
        }
    }

    @Override
    public boolean isReported() {
        sg9 sg9Var = this.a;
        if (sg9Var == null) {
            return false;
        }
        try {
            return sg9Var.b(PushConstants.SP_KEY_REPORT_ACTIVE_SUCCESS);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public void putSpValue(String str, Object obj) {
        sg9 sg9Var = this.a;
        if (sg9Var == null) {
            return;
        }
        try {
            if (obj instanceof String) {
                sg9Var.r(str, (String) obj);
            } else if (obj instanceof Boolean) {
                sg9Var.m(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Integer) {
                sg9Var.p(str, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                sg9Var.q(str, ((Long) obj).longValue());
            } else if (obj instanceof Float) {
                sg9Var.o(str, ((Float) obj).floatValue());
            } else if (obj instanceof Set) {
                sg9Var.s(str, (Set) obj);
            }
        } catch (Exception e2) {
            PushLogUtils.LOG.i("put sp, Type of default value is not match with value stored." + System.lineSeparator() + e2.getMessage());
        }
    }

    @Override
    public void removeSpValue(String str) {
        try {
            sg9 sg9Var = this.a;
            if (sg9Var != null) {
                sg9Var.t(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override
    public void saveConfig(ConfigInfo.Config config) {
        sg9 sg9Var;
        if (config == null || (sg9Var = this.a) == null) {
            return;
        }
        try {
            this.c = config;
            sg9Var.r(PushConstants.SP_KEY_CONFIG, new String(Base64.encode(qab.b(config).getBytes(), 0)));
        } catch (Exception e2) {
            PushLogUtils.LOG.i("save config fail, e:" + e2.getMessage());
        }
    }

    @Override
    public void saveReportTime(long j) {
        if (this.a == null) {
            return;
        }
        PushLogUtils.LOG.g("Update reporting time，reportTime:" + j);
        f = j;
        this.a.q(PushConstants.SP_KEY_REPORT_ACTIVE_TIME, j);
    }

    public void saveTpmsReportTime(long j) {
        if (this.a == null) {
            return;
        }
        PushLogUtils.LOG.g("Update reporting time，reportTime:" + j);
        g = j;
        this.a.q(PushConstants.SP_KEY_REPORT_TPMS_TIME, j);
    }

    @Override
    public void saveWhiteList(ConfigInfo.Whitelist whitelist) {
        List<ConfigInfo.Apps> list;
        if (whitelist == null || (list = whitelist.apps) == null || list.size() == 0) {
            return;
        }
        try {
            if (TextUtils.isEmpty(this.d)) {
                this.d = qab.b(whitelist);
                TCrypterSdk.c(xj1.a(), PushConstants.SP_KEY_WHITE_LIST, this.d);
                return;
            }
            List<ConfigInfo.Apps> list2 = ((ConfigInfo.Whitelist) qab.a(this.d, ConfigInfo.Whitelist.class)).apps;
            for (ConfigInfo.Apps apps : whitelist.apps) {
                if (!list2.contains(apps)) {
                    list2.add(apps);
                }
            }
            ConfigInfo.Whitelist whitelist2 = new ConfigInfo.Whitelist();
            whitelist2.version = whitelist.version;
            whitelist2.apps = new ArrayList(list2);
            this.d = qab.b(whitelist2);
            TCrypterSdk.c(xj1.a(), PushConstants.SP_KEY_WHITE_LIST, this.d);
        } catch (Exception e2) {
            e2.printStackTrace();
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

                public class a implements ITopicListener {
                    public final HashSet a;

                    public a(HashSet hashSet) {
                        this.a = hashSet;
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
                        if (str.contains(StringUtils.COMMA)) {
                            for (String str : str.split(StringUtils.COMMA)) {
                                this.a.add(str);
                            }
                        } else {
                            this.a.add(str);
                        }
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_SUBSCRIBE_TOPICS, this.a);
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
                        PushRepository.this.b.g(str, PushConstants.TOPIC_SUBSCRIBE, new a(hashSet));
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
        if (PushUtils.o()) {
            putSpValue(PushConstants.SP_KEY_IS_REPORT_DETAIL, Boolean.TRUE);
            PushLogUtils.LOG.g("appVersion changed, force withDetail=true");
        }
        if (this.b == null) {
            PushLogUtils.LOG.z("mRemoteDataSource is null");
            return;
        }
        if (!PushManager.getInstance().getDebug() && !PushManager.getInstance().getTestEnv() && !GslbSdk.isInitSuccess(PushConstants.BASE_RELEASE_URL_V2)) {
            GslbSdk.getDomain(PushConstants.BASE_RELEASE_URL_V2, true);
        }
        ConfigInfo configInfoF = this.b.f();
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
        nk8.f(configInfoF.destroyAppIds, configInfoF.syncInfoInterval);
        PushUtils.y();
        if (configInfoF.configRefresh && (config = configInfoF.config) != null && config.version > 0) {
            saveConfig(config);
            putSpValue(PushConstants.SP_KEY_SELF_DESTROYING, Integer.valueOf(configInfoF.config.destroy));
        }
        if (configInfoF.whitelistRefresh && (whitelist = configInfoF.whitelist) != null && whitelist.version > 0) {
            saveWhiteList(whitelist);
        }
        saveReportTime(System.currentTimeMillis() + lk8.b());
        putSpValue(PushConstants.SP_KEY_REPORT_ACTIVE_SUCCESS, Boolean.TRUE);
        PushUtils.x();
    }

    @Override
    public void syncSelfDestroying() {
        if (this.b == null) {
            PushLogUtils.LOG.z("mRemoteDataSource is null");
            return;
        }
        if (!PushManager.getInstance().getDebug() && !PushManager.getInstance().getTestEnv() && !GslbSdk.isInitSuccess(PushConstants.BASE_RELEASE_URL_V2)) {
            PushLogUtils.LOG.z("gslb not inited");
            return;
        }
        Tracker.getInstance().trackReport();
        SelfDestroyInfo selfDestroyInfoE = this.b.e();
        if (selfDestroyInfoE == null) {
            PushLogUtils.LOG.i("sync self-destroying fail");
            putSpValue(PushConstants.SP_KEY_SELF_DESTROYING_TIME, Long.valueOf(System.currentTimeMillis() + lk8.e()));
            return;
        }
        PushLogUtils.LOG.g("get self-destroying response data: " + selfDestroyInfoE.toString());
        putSpValue(PushConstants.SP_KEY_SELF_DESTROYING, Integer.valueOf(selfDestroyInfoE.destroy));
        putSpValue(PushConstants.SP_KEY_SELF_DESTROYING_INTERVAL, Integer.valueOf(selfDestroyInfoE.interval));
        putSpValue(PushConstants.SP_KEY_SELF_DESTROYING_TIME, Long.valueOf(System.currentTimeMillis() + lk8.e()));
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

                public class a implements ITopicListener {
                    public a() {
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
                        } else if (str.contains(StringUtils.COMMA)) {
                            for (String str : str.split(StringUtils.COMMA)) {
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
                    PushRepository.this.b.g(str, PushConstants.TOPIC_UNSUBSCRIBE, new a());
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
