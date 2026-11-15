package com.transsion.kolun.oxygenbus.common;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import com.transsion.apiinvoke.IApiService;
import com.transsion.apiinvoke.channel.ApiChannel;
import com.transsion.apiinvoke.channel.LocalChannel;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.common.router.ApiRouterManager;
import com.transsion.apiinvoke.common.router.ChannelEntity;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.apiinvoke.invoke.api.InvokeChannel;
import com.transsion.apiinvoke.ipc.APISubscribeCenter;
import com.transsion.apiinvoke.ipc.ApiServiceConnect;
import com.transsion.apiinvoke.ipc.ParcelPublisher;
import com.transsion.apiinvoke.subscribe.Publisher;
import com.transsion.apiinvoke.subscribe.SubscribeManager;
import com.transsion.kolun.oxygenbus.ApiPublisherConnection;
import com.transsion.kolun.oxygenbus.IOxygenBusServer;
import com.transsion.kolun.oxygenbus.ISubscribeBusServer;
import com.transsion.kolun.oxygenbus.KolunIPCChannel;
import com.transsion.kolun.oxygenbus.OxygenBusService;
import com.transsion.kolun.oxygenbus.OxygenBusStateChangeListener;
import com.transsion.kolun.oxygenbus.common.KolunOxygenBusRegister;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class KolunOxygenBusRegister {
    private static final String MANAGER_PACKAGE = "com.transsion.apiinvoke.routermap";
    private static boolean SUPPORT_OXYGENBUS = true;
    private static final String TAG = "ApiInvokeRegister";
    private static OxygenBusStateChangeListener sClientStateChangeListener;
    private static ProcessInfo sProcessInfo;

    @SuppressLint({"StaticFieldLeak"})
    private static RemoteIPCChannelProxy sRemoteChannelProxy;
    private static OxygenBusStateChangeListener sServiceStateChangeListener;

    public static class DataCenterSubscribeChangeListener implements SubscribeManager.SubscribeCenterCountChangeListener {
        private final Context mContext;
        private final String subscribeName;

        private APISubscribeCenter getSubscribeCenter() {
            ISubscribeBusServer subscribeServer = OxygenBusService.getSubscribeServer(this.mContext);
            if (subscribeServer == null) {
                return null;
            }
            try {
                return subscribeServer.getSubscribeCenter();
            } catch (RemoteException e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override
        public void onSubscribe(Publisher publisher, int i) {
            try {
                APISubscribeCenter subscribeCenter = getSubscribeCenter();
                if (subscribeCenter == null) {
                    ApiInvokeLog.logWarning(KolunOxygenBusRegister.TAG, "DataCenterSubscribeChangeListener APISubscribeCenter is Null");
                    return;
                }
                ApiInvokeLog.logWarning(KolunOxygenBusRegister.TAG, "DataCenterSubscribeChangeListener onSubscribe publisher " + publisher + " subscribeName " + this.subscribeName + " subscribeCount " + i);
                subscribeCenter.onSubscribe(new ParcelPublisher(publisher), this.subscribeName, i);
                ApiPublisherConnection.getInstance().onSubscribeChange();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override
        public void onUnSubscribe(Publisher publisher, int i) {
            try {
                APISubscribeCenter subscribeCenter = getSubscribeCenter();
                if (subscribeCenter == null) {
                    ApiInvokeLog.logWarning(KolunOxygenBusRegister.TAG, "DataCenterSubscribeChangeListener APISubscribeCenter is Null");
                    return;
                }
                ApiInvokeLog.logInfo(KolunOxygenBusRegister.TAG, "DataCenterSubscribeChangeListener onUnSubscribe publisher " + publisher + " subscribeName " + this.subscribeName + " subscribeCount " + i);
                subscribeCenter.onUnSubscribe(new ParcelPublisher(publisher), this.subscribeName, i);
                ApiPublisherConnection.getInstance().onSubscribeChange();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override
        public void refreshSubscribeCenter(Publisher.Host host, String str) {
            ISubscribeBusServer subscribeServer = OxygenBusService.getSubscribeServer(this.mContext);
            if (subscribeServer == null) {
                return;
            }
            try {
                int iFindSubscribeTypeCount = subscribeServer.findSubscribeTypeCount(host.channel, host.apiName, str);
                ApiInvokeLog.logInfo(KolunOxygenBusRegister.TAG, "DataCenterSubscribeChangeListener refreshSubscribeCenter , channel" + host.channel + " apiName " + host.apiName + " matcher " + str + " typeCount " + iFindSubscribeTypeCount);
                if (iFindSubscribeTypeCount > 0) {
                    onSubscribe(Publisher.create(host, str), iFindSubscribeTypeCount);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        private DataCenterSubscribeChangeListener(Context context) {
            this.mContext = context;
            this.subscribeName = context.getPackageName() + Thread.currentThread().getId();
        }
    }

    public interface InitOxygenBusCallback {
        void onOxygenBusFault(int i, String str);

        void onOxygenBusSuccess();
    }

    public static class RemoteIPCChannelProxy implements ApiChannel.ChannelCreator {
        private final Context mContext;
        private final Map<String, KolunIPCChannel> remoteChannelMap = new ConcurrentHashMap();

        public RemoteIPCChannelProxy(Context context) {
            this.mContext = context;
        }

        public void clearConnection() {
            this.remoteChannelMap.clear();
        }

        @Override
        public String findServiceChannel(String str) {
            IOxygenBusServer oxygenBusServer = OxygenBusService.getOxygenBusServer(this.mContext);
            if (oxygenBusServer == null) {
                return "";
            }
            try {
                String strFindChannel = oxygenBusServer.findChannel(str);
                return strFindChannel != null ? strFindChannel : "";
            } catch (RemoteException e) {
                e.printStackTrace();
                return "";
            }
        }

        @Override
        public synchronized InvokeChannel getChannel(String str) {
            KolunIPCChannel kolunIPCChannel;
            try {
                kolunIPCChannel = this.remoteChannelMap.get(str);
                if (kolunIPCChannel == null) {
                    kolunIPCChannel = new KolunIPCChannel(this.mContext, str);
                    this.remoteChannelMap.put(str, kolunIPCChannel);
                }
                ApiInvokeLog.logInfo(KolunOxygenBusRegister.TAG, "RemoteIPCChannelProxy, getChannel connectChannel " + str + " current connected " + (kolunIPCChannel.getApiInterface() == null));
            } catch (Throwable th) {
                throw th;
            }
            return kolunIPCChannel;
        }

        @Override
        public boolean shouldHandle(String str) {
            if (!KolunOxygenBusRegister.SUPPORT_OXYGENBUS) {
                ApiInvokeLog.logWarning(KolunOxygenBusRegister.TAG, "shouldHandle not support oxygenBus " + str);
                return false;
            }
            IOxygenBusServer oxygenBusServer = OxygenBusService.getOxygenBusServer(this.mContext);
            if (oxygenBusServer == null) {
                return false;
            }
            try {
                return oxygenBusServer.isChannelRegistered(str);
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            }
        }
    }

    private static void addStateListenerAndCheck(Context context, OxygenBusStateChangeListener oxygenBusStateChangeListener) {
        OxygenBusService.BusServiceLifecycle lifeCycle = OxygenBusService.getLifeCycle(context);
        lifeCycle.addOxygenBusStateChangeListener(oxygenBusStateChangeListener);
        boolean zIsAppServiceProcessStarted = OxygenBusUtils.isAppServiceProcessStarted(context);
        ApiInvokeLog.logWarning(TAG, "addStateListenerAndCheck startListen  isAppServiceStart " + zIsAppServiceProcessStarted);
        if (zIsAppServiceProcessStarted) {
            return;
        }
        lifeCycle.startListen();
    }

    private static boolean allServiceRegistered(Set<String> set) {
        if (set == null || set.isEmpty()) {
            return false;
        }
        boolean z = true;
        for (String str : set) {
            if (!ApiRouterManager.register(str)) {
                ApiInvokeLog.logWarning(TAG, "autoScanLocalApiServices, register " + str + " fail ... ");
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0010  */
    public static void autoScanLocalApiServices(Context context, String[] strArr) {
        boolean zAllServiceRegistered;
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    zAllServiceRegistered = allServiceRegistered(findServiceClass(strArr));
                } else {
                    zAllServiceRegistered = false;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        } else {
            zAllServiceRegistered = false;
        }
        if (!zAllServiceRegistered) {
            ApiInvokeLog.logWarning(TAG, "autoScanLocalApiServices, with error, auto scan and register....");
            allServiceRegistered(findServiceClass(context));
        }
        ApiRouterManager.listRegisterServer();
    }

    private static Set<String> autoScanLocalServiceClass(Context context) {
        HashSet hashSet = new HashSet();
        if (hashSet.isEmpty()) {
            try {
                hashSet.addAll(OxygenBusUtils.getFileNameByPackageName(context, MANAGER_PACKAGE));
            } catch (PackageManager.NameNotFoundException | IOException | InterruptedException e) {
                e.printStackTrace();
            }
            ApiInvokeLog.logInfo(TAG, "findServiceClass form package scan");
        }
        return hashSet;
    }

    private static void connectOxygenBusClient(final Context context, final ChannelEntity channelEntity) {
        initProcessInfo(context);
        if (OxygenBusUtils.isAppServiceProcessStarted(context)) {
            OxygenBusUtils.postRunnable(new Runnable() {
                @Override
                public final void run() {
                    KolunOxygenBusRegister.initClient(context, channelEntity);
                }
            });
        } else {
            OxygenBusUtils.postRunnable(new Runnable() {
                @Override
                public final void run() {
                    KolunOxygenBusRegister.initClient(context, channelEntity);
                }
            }, 500L);
        }
    }

    public static void disconnectChannel(Context context, String str) {
        if (SUPPORT_OXYGENBUS) {
            try {
                IOxygenBusServer oxygenBusServer = OxygenBusService.getOxygenBusServer(context);
                if (oxygenBusServer == null) {
                    return;
                }
                oxygenBusServer.disconnectChannel(str);
            } catch (RemoteException e) {
                ApiInvokeLog.logWarning(TAG, "disconnectChannel error channelName " + str + " " + e.getMessage());
            }
        }
    }

    public static String findAPIChannel(Context context, String str) {
        IOxygenBusServer oxygenBusServer;
        if (SUPPORT_OXYGENBUS && (oxygenBusServer = OxygenBusService.getOxygenBusServer(context)) != null && !TextUtils.isEmpty(str)) {
            try {
                return oxygenBusServer.findChannel(str);
            } catch (RemoteException e) {
                ApiInvokeLog.logWarning(TAG, "findAPIChannel error apiService " + str + " " + e.getMessage());
            }
        }
        return null;
    }

    private static Set<String> findServiceClass(Context context) {
        HashSet hashSet = new HashSet();
        try {
            String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("scan-module");
            if (!TextUtils.isEmpty(string)) {
                hashSet.addAll(findServiceClass(string.split(StringUtils.COMMA)));
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        if (hashSet.isEmpty()) {
            hashSet.addAll(autoScanLocalServiceClass(context));
        }
        return hashSet;
    }

    public static synchronized InvokeChannel getChannelRealTime(Context context, String str) {
        registerRemoteIpcProxy(context);
        RemoteIPCChannelProxy remoteIPCChannelProxy = sRemoteChannelProxy;
        if (remoteIPCChannelProxy == null) {
            return null;
        }
        if (!remoteIPCChannelProxy.shouldHandle(str)) {
            return null;
        }
        return sRemoteChannelProxy.getChannel(str);
    }

    public static String getOxygenBusVersion(Context context) {
        IOxygenBusServer oxygenBusServer;
        try {
            return (!SUPPORT_OXYGENBUS || (oxygenBusServer = OxygenBusService.getOxygenBusServer(context)) == null) ? "0" : oxygenBusServer.getOxygenBusVersion();
        } catch (RemoteException e) {
            ApiInvokeLog.logWarning(TAG, "getOxygenBusVersion error " + e.getMessage());
            return "0";
        }
    }

    public static void init(Context context) {
        initService(context);
    }

    public static void initClient(Context context) {
        String curProcessName = OxygenBusUtils.getCurProcessName(context);
        if (TextUtils.isEmpty(curProcessName)) {
            ApiInvokeLog.logWarning(TAG, "serviceRegister processName == NULL");
        } else {
            initClient(context, ChannelEntity.createLocalChannel(curProcessName));
        }
    }

    public static void initClientAsync(final Context context) {
        OxygenBusUtils.postWorkRunnable(new Runnable() {
            @Override
            public final void run() {
                KolunOxygenBusRegister.initClient(context);
            }
        });
    }

    private static void initClientBusListener(final Context context, final ChannelEntity channelEntity) {
        if (sClientStateChangeListener == null) {
            sClientStateChangeListener = new OxygenBusStateChangeListener() {
                @Override
                public final void onOxygenBusServerStateChange(int i) {
                    KolunOxygenBusRegister.lambda$initClientBusListener$4(channelEntity, context, i);
                }
            };
        }
        addStateListenerAndCheck(context, sClientStateChangeListener);
    }

    private static synchronized void initProcessInfo(Context context) {
        if (sProcessInfo != null) {
            return;
        }
        int iMyPid = Process.myPid();
        sProcessInfo = new ProcessInfo(OxygenBusUtils.getCurProcessName(context), String.valueOf(iMyPid), context.getPackageName(), ApiInvokeLog.VERSION);
    }

    public static void initService(Context context) {
        initService(context, "");
    }

    public static void initServiceAsync(Context context, String str) {
        initService(context, str, null, true, null);
    }

    private static void initServiceBusListener(final Context context, Map<String, ChannelEntity> map, final String str) {
        if (sServiceStateChangeListener == null) {
            sServiceStateChangeListener = new OxygenBusStateChangeListener() {
                @Override
                public final void onOxygenBusServerStateChange(int i) {
                    KolunOxygenBusRegister.lambda$initServiceBusListener$3(context, str, i);
                }
            };
        }
        addStateListenerAndCheck(context, sServiceStateChangeListener);
    }

    public static void initServiceChannel(Context context, ChannelEntity channelEntity) {
        if (sRemoteChannelProxy == null) {
            registerRemoteIpcProxy(context);
        }
        registerLocalChannel(channelEntity);
        autoScanLocalApiServices(context, channelEntity);
        registerServiceComponent(context, channelEntity);
        registerSubscribeChannel(context, channelEntity.channelName);
    }

    private static void initServiceChannelMap(Context context, Map<String, ChannelEntity> map, String str) {
        HashMap map2 = new HashMap(ApiRouterManager.getRouterMap());
        if (map != null && !map.isEmpty()) {
            ApiInvokeLog.logWarning(TAG, "initServiceChannelMap, empty Services ");
            return;
        }
        String[] strArr = new String[map2.size()];
        map2.keySet().toArray(strArr);
        String packageName = context.getPackageName();
        int iMyPid = Process.myPid();
        CommonApiChannel commonApiChannel = (str == null || "".equals(str)) ? new CommonApiChannel(packageName, iMyPid, strArr) : new CommonApiChannel(str, packageName, iMyPid, strArr);
        ApiRouterManager.addNewChannel(commonApiChannel.toChannelEntity());
        ApiInvokeLog.logWarning(TAG, "initServiceChannelMap, add commonChannel " + commonApiChannel.channelName());
    }

    public static void initServiceRemote(Context context, String str, boolean z, InitOxygenBusCallback initOxygenBusCallback) {
        registerRemoteIpcProxy(context);
        ApiInvokeLog.logWarning(TAG, "initService " + z + " sync start >>>  channelName " + str);
        HashMap map = new HashMap(ApiRouterManager.getChannelMap());
        if (z) {
            syncServiceRegister(context, str, map, initOxygenBusCallback);
            return;
        }
        serviceRegister(context, map);
        initServiceBusListener(context, map, str);
        if (initOxygenBusCallback != null) {
            initOxygenBusCallback.onOxygenBusSuccess();
        }
        ApiInvokeLog.logWarning(TAG, "initService done >>>  channelName " + str);
    }

    public static boolean isChannelConnected(Context context, String str) {
        IOxygenBusServer oxygenBusServer;
        try {
            if (!SUPPORT_OXYGENBUS || (oxygenBusServer = OxygenBusService.getOxygenBusServer(context)) == null) {
                return false;
            }
            return oxygenBusServer.isChannelConnected(str);
        } catch (RemoteException e) {
            ApiInvokeLog.logWarning(TAG, "isChannelConnected error channelName " + str + " " + e.getMessage());
            return false;
        }
    }

    public static boolean isChannelRegistered(Context context, String str) {
        if (!SUPPORT_OXYGENBUS) {
            return false;
        }
        try {
            IOxygenBusServer oxygenBusServer = OxygenBusService.getOxygenBusServer(context);
            return oxygenBusServer != null && oxygenBusServer.isChannelRegistered(str);
        } catch (RemoteException e) {
            ApiInvokeLog.logWarning(TAG, "isChannelRegistered error channelName " + str + " " + e.getMessage());
            return false;
        }
    }

    public static boolean isOxygenBusConnected(Context context) {
        return SUPPORT_OXYGENBUS && OxygenBusService.getOxygenBusServer(context) != null;
    }

    private static boolean isOxygenBusSupport(Context context) {
        try {
            ProviderInfo providerInfo = context.getPackageManager().getProviderInfo(new ComponentName(OxygenBusUtils.OXYGENBUS_PROCESS, OxygenBusUtils.OXYGENBUS_PROVIDER), 0);
            return providerInfo != null && providerInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void lambda$initClientBusListener$4(ChannelEntity channelEntity, Context context, int i) {
        ApiInvokeLog.logWarning(TAG, "initClientBusListener AppService started ==>>" + channelEntity);
        if (i == 2) {
            connectOxygenBusClient(context, channelEntity);
            return;
        }
        ApiInvokeLog.logWarning(TAG, "initServiceBusListener state not connect " + i);
    }

    public static void lambda$initServiceBusListener$2(String str, Context context) {
        HashMap map = new HashMap(ApiRouterManager.getChannelMap());
        ApiInvokeLog.logWarning(TAG, "initServiceBusListener channelName " + str + " channel map " + map);
        initProcessInfo(context);
        if (!map.isEmpty()) {
            unRegisterRemoteIpcProxy();
            serviceRegister(context, map);
        } else {
            ApiInvokeLog.logError(TAG, "initServiceBusListener empty channelName, please register with client");
            try {
                registerSubscribeChannel(context, str);
            } catch (Exception unused) {
                ApiInvokeLog.logError(TAG, "initServiceBusListener registerSubscribeChannel error ");
            }
        }
    }

    public static void lambda$initServiceBusListener$3(final Context context, final String str, int i) {
        if (i == 2) {
            OxygenBusUtils.postRunnable(new Runnable() {
                @Override
                public final void run() {
                    KolunOxygenBusRegister.lambda$initServiceBusListener$2(str, context);
                }
            }, OxygenBusUtils.isAppServiceProcessStarted(context) ? 100L : 500L);
        } else {
            ApiInvokeLog.logWarning(TAG, "initServiceBusListener state not connect " + i);
        }
    }

    public static void lambda$syncServiceRegister$1(Context context, Map map, String str, InitOxygenBusCallback initOxygenBusCallback) {
        serviceRegister(context, map);
        initServiceBusListener(context, map, str);
        if (initOxygenBusCallback != null) {
            initOxygenBusCallback.onOxygenBusSuccess();
        }
        ApiInvokeLog.logWarning(TAG, "initService syncServiceRegister done >>>  channelName " + str);
    }

    private static void registerApiServiceByChannel(String str, ChannelEntity channelEntity) {
        try {
            ApiRouterManager.register(Class.forName(str));
            ApiInvokeLog.logWarning(TAG, "registerApi packageClass ==> " + str);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void registerApis(Class<IApiService>[] clsArr) {
        if (clsArr == null || clsArr.length == 0) {
            return;
        }
        for (Class<IApiService> cls : clsArr) {
            ApiRouterManager.registerApi(cls);
            ApiInvokeLog.logWarning(TAG, "addDynamicChannel, registerApi " + cls);
        }
    }

    public static void registerChannel(Context context, ChannelEntity channelEntity) {
        registerChannel(context, channelEntity, null);
    }

    public static void registerDynamicApiService(String str, String str2, IApiService iApiService) {
        InvokeChannel channel = ApiChannel.getInstance().getChannel(str);
        if (channel instanceof LocalChannel) {
            ((LocalChannel) channel).getServiceManager().registerService(str2, iApiService);
            return;
        }
        ApiInvokeLog.logWarning(TAG, "cannot register, not a local channel " + str + " apiName " + str2);
    }

    private static void registerLocalChannel(ChannelEntity channelEntity) {
        ApiChannel.getInstance().addLocalChannelCreator(new ApiChannel.LocalChannelCreator(channelEntity));
    }

    public static boolean registerRemoteChannel(Context context, String str, String[] strArr, ComponentName componentName) {
        if (!SUPPORT_OXYGENBUS) {
            return false;
        }
        try {
            IOxygenBusServer oxygenBusServer = OxygenBusService.getOxygenBusServer(context);
            return oxygenBusServer != null && oxygenBusServer.registerService(str, strArr, componentName);
        } catch (RemoteException e) {
            ApiInvokeLog.logWarning(TAG, "registerRemoteChannel error channelName " + str + " " + e.getMessage());
            return false;
        }
    }

    public static synchronized void registerRemoteIpcProxy(Context context) {
        try {
            ApiInvokeLog.logWarning(TAG, "registerRemoteIpcProxy ");
            RemoteIPCChannelProxy remoteIPCChannelProxy = sRemoteChannelProxy;
            if (remoteIPCChannelProxy == null) {
                unRegisterRemoteIpcProxy();
                sRemoteChannelProxy = new RemoteIPCChannelProxy(context);
                ApiChannel.getInstance().addChannelCreator(sRemoteChannelProxy);
            } else {
                remoteIPCChannelProxy.clearConnection();
                ApiChannel.getInstance().addChannelCreator(sRemoteChannelProxy);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void registerRemoteSubscribe(Context context) {
        if (SubscribeManager.hasGlobalSubscribeNotify()) {
            return;
        }
        ApiInvokeLog.logWarning(TAG, "registerRemoteSubscribe");
        SubscribeManager.setGlobalSubscribeNotify(new DataCenterSubscribeChangeListener(context));
    }

    private static void registerServiceComponent(Context context, ChannelEntity channelEntity) {
        IOxygenBusServer oxygenBusServer = OxygenBusService.getOxygenBusServer(context);
        if (oxygenBusServer == null) {
            ApiInvokeLog.logWarning(TAG, "registerServiceComponent oxygenBusServer == null " + channelEntity);
            return;
        }
        try {
            ApiInvokeLog.logWarning(TAG, "registerServiceComponent \n " + channelEntity);
            oxygenBusServer.registerService(channelEntity.channelName, channelEntity.channelService, new ComponentName(channelEntity.packageName, channelEntity.className));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public static void registerSubscribe(Context context) {
        HashMap map = new HashMap(ApiRouterManager.getChannelMap());
        try {
            registerRemoteSubscribe(context);
            if (map.size() == 0) {
                registerSubscribeChannel(context, "");
                return;
            }
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                registerSubscribeChannel(context, ((ChannelEntity) ((Map.Entry) it.next()).getValue()).channelName);
            }
        } catch (Exception e) {
            ApiInvokeLog.logWarning(TAG, "registerSubscribe error " + e);
        }
    }

    private static void registerSubscribeChannel(Context context, String str) {
        if (OxygenBusService.getSubscribeServer(context) == null) {
            return;
        }
        initProcessInfo(context);
        if (TextUtils.isEmpty(str)) {
            str = sProcessInfo.process();
        }
        ProcessInfo processInfoM114clone = sProcessInfo.m114clone();
        processInfoM114clone.putChannel(str);
        ApiPublisherConnection.getInstance().registerRemoteSubscribeStub(context, processInfoM114clone, str);
    }

    public static void removeServiceChannel(Context context, ChannelEntity channelEntity) {
        try {
            unRegisterChannel(context, channelEntity.channelName);
            unRegisterSubscribe(context, channelEntity.channelName);
        } catch (Exception e) {
            ApiInvokeLog.logWarning(TAG, "removeServiceChannel error " + e);
        }
    }

    private static void serviceRegister(Context context, Map<String, ChannelEntity> map) {
        registerRemoteIpcProxy(context);
        Iterator<Map.Entry<String, ChannelEntity>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            ChannelEntity value = it.next().getValue();
            registerServiceComponent(context, value);
            registerSubscribeChannel(context, value.channelName);
            registerChannel(context, value);
        }
        registerRemoteSubscribe(context);
    }

    private static void syncServiceRegister(final Context context, final String str, final Map<String, ChannelEntity> map, final InitOxygenBusCallback initOxygenBusCallback) {
        OxygenBusUtils.postWorkRunnable(new Runnable() {
            @Override
            public final void run() {
                KolunOxygenBusRegister.lambda$syncServiceRegister$1(context, map, str, initOxygenBusCallback);
            }
        });
    }

    public static void unRegisterApiService(String str, String str2) {
        InvokeChannel channel = ApiChannel.getInstance().getChannel(str);
        if (channel instanceof LocalChannel) {
            ((LocalChannel) channel).getServiceManager().unRegisterService(str2);
            return;
        }
        ApiInvokeLog.logWarning(TAG, "cannot register, not a local channel " + str + " apiName " + str2);
    }

    public static void unRegisterChannel(Context context, String str) {
        if (SUPPORT_OXYGENBUS) {
            try {
                IOxygenBusServer oxygenBusServer = OxygenBusService.getOxygenBusServer(context);
                if (oxygenBusServer == null) {
                    return;
                }
                oxygenBusServer.unRegisterService(str);
            } catch (RemoteException e) {
                ApiInvokeLog.logWarning(TAG, "unRegisterChannel error channelName " + str + " " + e.getMessage());
            }
        }
    }

    private static synchronized void unRegisterRemoteIpcProxy() {
        if (sRemoteChannelProxy != null) {
            ApiChannel.getInstance().removeChannelCreator(sRemoteChannelProxy);
        }
    }

    public static void unRegisterSubscribe(Context context, String str) {
        if (SUPPORT_OXYGENBUS && OxygenBusService.getSubscribeServer(context) != null) {
            try {
                initProcessInfo(context);
                ProcessInfo processInfoM114clone = sProcessInfo.m114clone();
                processInfoM114clone.putChannel(str);
                ApiPublisherConnection.getInstance().unRegisterRemoteSubscribeStub(context, processInfoM114clone, str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void initService(Context context, String str) {
        initService(context, str, null, false, null);
    }

    public static void initServiceAsync(Context context, String str, String[] strArr) {
        initService(context, str, strArr, true, null);
    }

    public static void registerChannel(Context context, ChannelEntity channelEntity, Class<IApiService>[] clsArr) {
        registerLocalChannel(channelEntity);
        ApiRouterManager.addNewChannel(channelEntity);
        registerSubscribeChannel(context, channelEntity.channelName);
        registerServiceComponent(context, channelEntity);
        if (clsArr == null || clsArr.length <= 0) {
            autoScanLocalApiServices(context, channelEntity);
        } else {
            registerApis(clsArr);
        }
        ApiRouterManager.listRegisterServer();
        registerRemoteIpcProxy(context);
        registerRemoteSubscribe(context);
    }

    public static void initService(Context context, String str, String[] strArr) {
        initService(context, str, strArr, false, null);
    }

    public static void initServiceAsync(Context context, String str, InitOxygenBusCallback initOxygenBusCallback) {
        initService(context, str, null, true, initOxygenBusCallback);
    }

    private static void initService(final Context context, final String str, String[] strArr, final boolean z, final InitOxygenBusCallback initOxygenBusCallback) {
        OxygenBusService.initInstance(context);
        boolean zIsOxygenBusSupport = isOxygenBusSupport(context);
        SUPPORT_OXYGENBUS = zIsOxygenBusSupport;
        if (!zIsOxygenBusSupport) {
            ApiInvokeLog.logWarning(TAG, "initService not support oxygenBus");
            return;
        }
        ApiInvokeLog.logWarning(TAG, "initService " + z + " start >>>  channelName " + str);
        autoScanLocalApiServices(context, strArr);
        initProcessInfo(context);
        initServiceChannelMap(context, new HashMap(ApiRouterManager.getChannelMap()), str);
        if (OxygenBusUtils.isAppServiceProcessStarted(context)) {
            initServiceRemote(context, str, z, initOxygenBusCallback);
            return;
        }
        ApiInvokeLog.logWarning(TAG, "initService waiting process" + z + " start >>>  channelName " + str);
        OxygenBusProcess.postServer(context, new OxygenBusProcess.Callback() {
            @Override
            public void onOxygenProcessFault() {
            }

            @Override
            public void onOxygenProcessStart() {
                KolunOxygenBusRegister.initServiceRemote(context, str, z, initOxygenBusCallback);
            }
        });
    }

    public static void initServiceAsync(Context context, String str, String[] strArr, InitOxygenBusCallback initOxygenBusCallback) {
        initService(context, str, strArr, true, initOxygenBusCallback);
    }

    public static void initClient(final Context context, final ChannelEntity channelEntity) {
        OxygenBusService.initInstance(context);
        if (OxygenBusUtils.isAppServiceProcessStarted(context)) {
            initClient(context, channelEntity, false);
            return;
        }
        ApiInvokeLog.logInfo(TAG, "initClient delay waiting connect ==>>" + channelEntity.channelName);
        OxygenBusProcess.postClient(context, new OxygenBusProcess.Callback() {
            @Override
            public void onOxygenProcessFault() {
            }

            @Override
            public void onOxygenProcessStart() {
                KolunOxygenBusRegister.initClient(context, channelEntity, true);
            }
        });
    }

    public static void serviceRegister(Context context) {
        HashMap map = new HashMap(ApiRouterManager.getChannelMap());
        ApiInvokeLog.logWarning(TAG, "serviceRegister entityMap size " + map.size());
        if (map.size() > 0) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                registerServiceComponent(context, (ChannelEntity) ((Map.Entry) it.next()).getValue());
            }
        } else {
            String curProcessName = OxygenBusUtils.getCurProcessName(context);
            if (TextUtils.isEmpty(curProcessName)) {
                ApiInvokeLog.logWarning(TAG, "serviceRegister processName == NULL");
            } else {
                registerServiceComponent(context, ChannelEntity.createLocalChannel(curProcessName, new String[0]));
            }
        }
    }

    public static void unRegisterSubscribe(Context context) {
        if (SUPPORT_OXYGENBUS && OxygenBusService.getSubscribeServer(context) != null) {
            SubscribeManager.setGlobalSubscribeNotify(null);
            HashMap map = new HashMap(ApiRouterManager.getChannelMap());
            try {
                initProcessInfo(context);
                if (map.size() == 0) {
                    ApiPublisherConnection.getInstance().unRegisterRemoteSubscribeStub(context, sProcessInfo, "");
                    return;
                }
                Iterator it = map.entrySet().iterator();
                while (it.hasNext()) {
                    ChannelEntity channelEntity = (ChannelEntity) ((Map.Entry) it.next()).getValue();
                    ProcessInfo processInfoM114clone = sProcessInfo.m114clone();
                    processInfoM114clone.putChannel(channelEntity.channelName);
                    ApiPublisherConnection.getInstance().unRegisterRemoteSubscribeStub(context, processInfoM114clone, channelEntity.channelName);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void autoScanLocalApiServices(Context context, ChannelEntity channelEntity) {
        try {
            Set<String> setFindServiceClass = findServiceClass(context);
            Iterator<String> it = setFindServiceClass.iterator();
            while (it.hasNext()) {
                registerApiServiceByChannel(it.next(), channelEntity);
            }
            ApiInvokeLog.logWarning(TAG, "autoScanLocalApiServices found packageClass ==> " + Arrays.toString(setFindServiceClass.toArray()));
            ApiRouterManager.addNewChannel(channelEntity);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static Set<String> findServiceClass(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            hashSet.add("com.transsion.apiinvoke.routermap." + str.trim() + "ApiRouterMap");
        }
        ApiInvokeLog.logInfo(TAG, "findServiceClass form scan-module " + Arrays.toString(strArr));
        return hashSet;
    }

    public static void initClient(Context context, ChannelEntity channelEntity, boolean z) {
        boolean zIsOxygenBusSupport = isOxygenBusSupport(context);
        SUPPORT_OXYGENBUS = zIsOxygenBusSupport;
        if (!zIsOxygenBusSupport) {
            ApiInvokeLog.logWarning(TAG, "initClient not support oxygenBus");
            return;
        }
        initProcessInfo(context);
        ApiInvokeLog.logInfo(TAG, "initClient start ==>>" + channelEntity.channelName);
        initClientBusListener(context, channelEntity);
        registerRemoteIpcProxy(context);
        if (ApiServiceConnect.getInstance().isConnect(channelEntity.channelName) && SubscribeManager.hasGlobalSubscribeNotify() && !z) {
            ApiInvokeLog.logWarning(TAG, "initClient already connected, skip !!! " + channelEntity.channelName);
            return;
        }
        registerServiceComponent(context, channelEntity);
        registerSubscribeChannel(context, channelEntity.channelName);
        registerRemoteSubscribe(context);
        ApiInvokeLog.logInfo(TAG, "initClient end ==>>" + channelEntity.channelName);
    }
}
