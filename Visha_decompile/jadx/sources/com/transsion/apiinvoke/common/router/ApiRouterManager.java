package com.transsion.apiinvoke.common.router;

import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.common.annotation.RouterApi;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class ApiRouterManager {
    private static final String REGISTER_CHANNEL_METHOD = "loadApiChannels";
    private static final String REGISTER_MANAGER_METHOD = "loadApiRouters";
    private static volatile ApiRouterManager instance;
    private static List<String> registerList = new ArrayList();
    private static Map<String, ChannelEntity> channelMap = new HashMap();
    private static Map<String, APIClassEntity> routerMap = new HashMap();

    private ApiRouterManager() {
    }

    public static void addLocalChannel(String str, String[] strArr) {
        synchronized (routerMap) {
            channelMap.put(str, ChannelEntity.createLocalChannel(str, strArr));
        }
    }

    public static void addNewChannel(ChannelEntity channelEntity) {
        synchronized (routerMap) {
            channelMap.put(channelEntity.channelName, channelEntity);
        }
    }

    public static ChannelEntity findChannel(String str) {
        String[] strArr;
        synchronized (channelMap) {
            try {
                Iterator<Map.Entry<String, ChannelEntity>> it = channelMap.entrySet().iterator();
                while (it.hasNext()) {
                    ChannelEntity value = it.next().getValue();
                    if (value != null && (strArr = value.channelService) != null && strArr.length != 0) {
                        for (String str2 : strArr) {
                            if (str2.equals(str)) {
                                return value;
                            }
                        }
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static APIClassEntity getApiEntity(String str) {
        return routerMap.get(str);
    }

    public static ChannelEntity getChannel(String str) {
        return channelMap.get(str);
    }

    public static Map<String, ChannelEntity> getChannelMap() {
        return channelMap;
    }

    public static ApiRouterManager getInstance() {
        if (instance == null) {
            synchronized (ApiRouterManager.class) {
                try {
                    if (instance == null) {
                        instance = new ApiRouterManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public static Map<String, APIClassEntity> getRouterMap() {
        return routerMap;
    }

    public static boolean isInService(String str) {
        return routerMap.containsKey(str);
    }

    public static void listRegisterChannel() {
        synchronized (channelMap) {
            try {
                for (Map.Entry<String, ChannelEntity> entry : channelMap.entrySet()) {
                    ApiInvokeLog.logInfo("ApiRouterManager", "channel  ==>>  channel " + entry.getKey() + " entity : " + entry);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void listRegisterServer() {
        synchronized (routerMap) {
            try {
                for (Map.Entry<String, APIClassEntity> entry : routerMap.entrySet()) {
                    ApiInvokeLog.logInfo("ApiRouterManager", "api ==>>  key " + entry.getKey() + " entity : " + entry);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean register(String str) {
        try {
            register(Class.forName(str));
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void registerApi(Class cls) {
        RouterApi[] routerApiArr = (RouterApi[]) cls.getAnnotationsByType(RouterApi.class);
        if (routerApiArr == null || routerApiArr.length == 0) {
            return;
        }
        RouterApi routerApi = routerApiArr[0];
        APIClassEntity aPIClassEntityCreateLocalServer = APIClassEntity.createLocalServer(routerApi.packageName(), routerApi.apiName(), cls, routerApi.constructorType(), routerApi.livingTime());
        synchronized (routerMap) {
            routerMap.put(aPIClassEntityCreateLocalServer.apiName, aPIClassEntityCreateLocalServer);
        }
    }

    private static void registerApiRouter(Class cls) {
        synchronized (routerMap) {
            if (cls == null) {
                return;
            }
            try {
                if (registerList.contains(cls.getName())) {
                    return;
                }
                registerList.add(cls.getName());
                cls.getMethod(REGISTER_MANAGER_METHOD, Map.class).invoke(null, routerMap);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                e.printStackTrace();
            }
            ApiInvokeLog.logInfo("ApiRouterManager", "init success ");
        }
    }

    private static void registerChannel(Class cls) {
        synchronized (channelMap) {
            if (cls == null) {
                return;
            }
            try {
                cls.getMethod(REGISTER_CHANNEL_METHOD, Map.class).invoke(null, channelMap);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                e.printStackTrace();
            }
            ApiInvokeLog.logInfo("ApiRouterManager", "init success ");
        }
    }

    public static void register(String str, ClassLoader classLoader) {
        try {
            register(Class.forName(str, true, classLoader));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void register(Class cls) {
        registerApiRouter(cls);
        registerChannel(cls);
    }
}
