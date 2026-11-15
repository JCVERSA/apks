package com.transsion.apiinvoke.subscribe;

import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.invoke.InvokeChain;
import com.transsion.apiinvoke.invoke.api.ApiPublisher;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

public class SubscribeManager implements ApiPublisher, OnSubscribeCuntChangeListener {
    private static final String TAG = "SubscribeManager";
    private static volatile SubscribeManager mDefault;
    private Publisher.Host mPublisherHost;
    private final Map<String, List<OnSubscribeChangeListener>> mSubscribeChangeMap = new ConcurrentHashMap();
    private final Map<String, List<OnSubscribeCuntChangeListener>> mSubscribeCuntChangeMap = new ConcurrentHashMap();
    private final Map<String, List<SubscribeCallback>> mSubscriberMap = new ConcurrentHashMap();
    private static volatile Map<Publisher.Host, SubscribeManager> instanceMap = new ConcurrentHashMap();
    private static SubscribeCenterCountChangeListener sGlobalSubscribeNotify = null;

    public interface SubscribeCenterCountChangeListener extends OnSubscribeChangeListener {
        void refreshSubscribeCenter(Publisher.Host host, String str);
    }

    private SubscribeManager(Publisher.Host host) {
        this.mPublisherHost = host;
    }

    public static synchronized List<SubscribeHostInfo> getAllSubscribeHostInfo() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<Publisher.Host> it = instanceMap.keySet().iterator();
        while (it.hasNext()) {
            updateSubscribeInfoList(it.next(), arrayList);
        }
        return arrayList;
    }

    public static SubscribeManager getDefault() {
        if (mDefault == null) {
            synchronized (SubscribeManager.class) {
                try {
                    if (mDefault == null) {
                        mDefault = new SubscribeManager(Publisher.DEFAULT);
                        instanceMap.put(Publisher.DEFAULT, mDefault);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return mDefault;
    }

    public static SubscribeManager getInstance(String str, String str2) {
        return getInstance(new Publisher.Host(str, str2));
    }

    public static synchronized boolean hasGlobalSubscribeNotify() {
        return sGlobalSubscribeNotify != null;
    }

    public static boolean hasLocalSubscribe() {
        if (sGlobalSubscribeNotify == null) {
            return false;
        }
        for (SubscribeManager subscribeManager : instanceMap.values()) {
            if (subscribeManager.mSubscriberMap.size() != 0 || subscribeManager.mSubscribeCuntChangeMap.size() != 0) {
                return true;
            }
        }
        return false;
    }

    private void notifySubscribe(String str) {
        synchronized (this.mSubscriberMap) {
            try {
                List<SubscribeCallback> list = this.mSubscriberMap.get(str);
                notifySubscribe(Publisher.create(this.mPublisherHost, str), list != null ? list.size() : 0);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void notifyUnSubscribe(Publisher publisher, int i) {
        SubscribeCenterCountChangeListener subscribeCenterCountChangeListener = sGlobalSubscribeNotify;
        if (subscribeCenterCountChangeListener != null) {
            subscribeCenterCountChangeListener.onUnSubscribe(publisher, i);
        }
        synchronized (this.mSubscribeChangeMap) {
            try {
                List<OnSubscribeChangeListener> list = this.mSubscribeChangeMap.get(publisher.matcher);
                if (list != null && list.size() != 0) {
                    Iterator<OnSubscribeChangeListener> it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            it.next().onUnSubscribe(publisher, i);
                        } catch (Throwable th) {
                            ApiInvokeLog.logInfo(TAG, "notifyUnSubscribe error  " + th);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static synchronized void refreshSubscribeCount() {
        if (sGlobalSubscribeNotify == null) {
            return;
        }
        for (SubscribeManager subscribeManager : instanceMap.values()) {
            if (subscribeManager.mSubscriberMap.size() == 0) {
                return;
            }
            Iterator<String> it = subscribeManager.mSubscriberMap.keySet().iterator();
            while (it.hasNext()) {
                subscribeManager.notifySubscribe(it.next());
            }
        }
    }

    public static synchronized void setGlobalSubscribeNotify(SubscribeCenterCountChangeListener subscribeCenterCountChangeListener) {
        sGlobalSubscribeNotify = subscribeCenterCountChangeListener;
    }

    private void shouldNotifyCountChange(String str) {
        SubscribeCenterCountChangeListener subscribeCenterCountChangeListener = sGlobalSubscribeNotify;
        if (subscribeCenterCountChangeListener == null) {
            return;
        }
        try {
            subscribeCenterCountChangeListener.refreshSubscribeCenter(this.mPublisherHost, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static synchronized void updateSubscribeInfoList(Publisher.Host host, List<SubscribeHostInfo> list) {
        try {
            Map<String, List<SubscribeCallback>> map = getInstance(host).mSubscriberMap;
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, List<SubscribeCallback>> entry : map.entrySet()) {
                arrayList.add(new SubscribeHostInfo.SubscribeTypeCount(entry.getKey(), entry.getValue().size()));
            }
            if (!arrayList.isEmpty()) {
                list.add(new SubscribeHostInfo(host, arrayList));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void addOnSubscribeChangeListener(String str, OnSubscribeChangeListener onSubscribeChangeListener) {
        try {
            List<OnSubscribeChangeListener> list = this.mSubscribeChangeMap.get(str);
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(onSubscribeChangeListener);
                this.mSubscribeChangeMap.put(str, arrayList);
            } else if (!list.contains(onSubscribeChangeListener)) {
                list.add(onSubscribeChangeListener);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void addOnSubscribeCuntChangeListener(String str, OnSubscribeCuntChangeListener onSubscribeCuntChangeListener) {
        if (str != null) {
            try {
                if (!"".equals(str) && onSubscribeCuntChangeListener != null) {
                    List<OnSubscribeCuntChangeListener> list = this.mSubscribeCuntChangeMap.get(str);
                    if (list == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(onSubscribeCuntChangeListener);
                        this.mSubscribeCuntChangeMap.put(str, arrayList);
                        shouldNotifyCountChange(str);
                    } else if (!list.contains(onSubscribeCuntChangeListener)) {
                        list.add(onSubscribeCuntChangeListener);
                        shouldNotifyCountChange(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addSubscribe(String str, SubscribeCallback subscribeCallback) {
        synchronized (this.mSubscriberMap) {
            try {
                List<SubscribeCallback> copyOnWriteArrayList = this.mSubscriberMap.get(str);
                if (copyOnWriteArrayList == null) {
                    copyOnWriteArrayList = new CopyOnWriteArrayList<>();
                    copyOnWriteArrayList.add(subscribeCallback);
                    this.mSubscriberMap.put(str, copyOnWriteArrayList);
                } else if (!copyOnWriteArrayList.contains(subscribeCallback)) {
                    copyOnWriteArrayList.add(subscribeCallback);
                }
                int size = copyOnWriteArrayList.size();
                ApiInvokeLog.logInfo(TAG, "addSubscribe host " + this.mPublisherHost.toString() + " matcher " + str + " callback count " + size);
                notifySubscribe(Publisher.create(this.mPublisherHost, str), size);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void clearSubscribeChangeListener() {
        this.mSubscribeChangeMap.clear();
    }

    public void clearSubscribeCuntChangeListener() {
        this.mSubscribeCuntChangeMap.clear();
    }

    public synchronized int countLocalSubscribe(String str) {
        int size = 0;
        if (!"".equals(str) && str != null) {
            HashMap map = new HashMap();
            map.putAll(this.mSubscriberMap);
            if (!"*".equals(str)) {
                List list = (List) map.get(str);
                if (list != null) {
                    size = list.size();
                }
                return size;
            }
            Iterator it = map.entrySet().iterator();
            int size2 = 0;
            while (it.hasNext()) {
                List list2 = (List) ((Map.Entry) it.next()).getValue();
                size2 += list2 != null ? list2.size() : 0;
            }
            return size2;
        }
        return 0;
    }

    @Override
    public void onSubscribeCountChange(Publisher publisher, int i) {
        ApiInvokeLog.logInfo(TAG, "onSubscribeCountChange publisher " + publisher + " subscribeCount " + i);
        List<OnSubscribeCuntChangeListener> list = this.mSubscribeCuntChangeMap.get(publisher.matcher);
        if (list == null || list.size() == 0) {
            return;
        }
        synchronized (list) {
            try {
                Iterator<OnSubscribeCuntChangeListener> it = list.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().onSubscribeCountChange(publisher, i);
                    } catch (Throwable th) {
                        ApiInvokeLog.logInfo(TAG, "onSubscribeCountChange error  " + th);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void publishData(Publisher publisher, InvokeChain invokeChain, Serializable serializable) {
        if (serializable == null) {
            return;
        }
        if (publisher == null) {
            ApiInvokeLog.logInfo(TAG, "publishData error, publisher == null");
            return;
        }
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        synchronized (this.mSubscriberMap) {
            concurrentHashMap.putAll(this.mSubscriberMap);
            ApiInvokeLog.logInfo(TAG, "copy subscriber size = " + concurrentHashMap.size());
        }
        publishData(concurrentHashMap, publisher, serializable);
        ApiInvokeLog.logInfo(TAG, "publishData success host " + this.mPublisherHost.toString() + " matcher " + publisher.matcher, true);
    }

    public boolean publishToChannel(ApiPublisher apiPublisher, InvokeChain invokeChain, String str, Serializable serializable) {
        Publisher.Host host = this.mPublisherHost;
        Publisher publisherCreate = Publisher.create(host.channel, host.apiName, str);
        if (apiPublisher == null) {
            return false;
        }
        try {
            apiPublisher.publishData(publisherCreate, invokeChain, serializable);
            return true;
        } catch (Throwable th) {
            ApiInvokeLog.logInfo(TAG, "publishToChannel error  " + th);
            return true;
        }
    }

    public synchronized void removeOnSubscribeChangeListener(String str, OnSubscribeChangeListener onSubscribeChangeListener) {
        List<OnSubscribeChangeListener> list = this.mSubscribeChangeMap.get(str);
        if (list != null) {
            list.remove(onSubscribeChangeListener);
        }
    }

    public void removeOnSubscribeCuntChangeListener(String str, OnSubscribeCuntChangeListener onSubscribeCuntChangeListener) {
        List<OnSubscribeCuntChangeListener> list = this.mSubscribeCuntChangeMap.get(str);
        if (list != null) {
            list.remove(onSubscribeCuntChangeListener);
        }
    }

    public void removeSubscribe(String str, SubscribeCallback subscribeCallback) {
        synchronized (this.mSubscriberMap) {
            try {
                if (this.mSubscriberMap.size() == 0) {
                    return;
                }
                List<SubscribeCallback> list = this.mSubscriberMap.get(str);
                if (list != null) {
                    list.remove(subscribeCallback);
                }
                if (list != null && list.size() == 0) {
                    this.mSubscriberMap.remove(str);
                }
                notifyUnSubscribe(Publisher.create(this.mPublisherHost, str), list != null ? list.size() : 0);
                ApiInvokeLog.logInfo(TAG, "removeSubscribe host " + this.mPublisherHost.toString() + " matcher " + str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static SubscribeManager getInstance(Publisher.Host host) {
        SubscribeManager subscribeManager;
        synchronized (instanceMap) {
            try {
                subscribeManager = instanceMap.get(host);
                if (subscribeManager == null) {
                    subscribeManager = new SubscribeManager(host);
                    instanceMap.put(host, subscribeManager);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return subscribeManager;
    }

    private void notifySubscribe(Publisher publisher, int i) {
        SubscribeCenterCountChangeListener subscribeCenterCountChangeListener = sGlobalSubscribeNotify;
        if (subscribeCenterCountChangeListener != null) {
            subscribeCenterCountChangeListener.onSubscribe(publisher, i);
        }
        synchronized (this.mSubscribeChangeMap) {
            try {
                List<OnSubscribeChangeListener> list = this.mSubscribeChangeMap.get(publisher.matcher);
                if (list != null && list.size() != 0) {
                    Iterator<OnSubscribeChangeListener> it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            it.next().onSubscribe(publisher, i);
                        } catch (Throwable th) {
                            ApiInvokeLog.logInfo(TAG, "notifySubscribe error  " + th);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void publishData(Map<String, List<SubscribeCallback>> map, Publisher publisher, Serializable serializable) {
        List<SubscribeCallback> list;
        if (map.size() == 0 || (list = map.get(publisher.matcher)) == null || list.size() == 0) {
            return;
        }
        for (SubscribeCallback subscribeCallback : list) {
            if (subscribeCallback != null) {
                try {
                    subscribeCallback.onPublishData(publisher, serializable);
                } catch (Throwable th) {
                    ApiInvokeLog.logInfo(TAG, "publishData error  " + th);
                }
            }
        }
    }
}
