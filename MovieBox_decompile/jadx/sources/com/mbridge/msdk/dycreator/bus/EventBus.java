package com.mbridge.msdk.dycreator.bus;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class EventBus {

    private static volatile EventBus f33948o;

    private boolean f33960k;

    static ExecutorService f33947n = Executors.newCachedThreadPool();
    public static String TAG = "Event";

    private static final Map<Class<?>, List<Class<?>>> f33949p = new HashMap();

    private final Map<Class<?>, CopyOnWriteArrayList<Subscription>> f33950a = new HashMap();

    private final Map<Object, List<Class<?>>> f33951b = new HashMap();

    private final Map<Class<?>, Object> f33952c = new ConcurrentHashMap();

    private final ThreadLocal<List<Object>> f33953d = new ThreadLocal<List<Object>>() {
        @Override
        public List<Object> initialValue() {
            return new ArrayList();
        }
    };

    private final ThreadLocal<BooleanWrapper> f33954e = new ThreadLocal<BooleanWrapper>() {
        @Override
        public BooleanWrapper initialValue() {
            return new BooleanWrapper();
        }
    };

    private String f33955f = "onEvent";

    private final HandlerPoster f33956g = new HandlerPoster(this, Looper.getMainLooper(), 10);

    private final BackgroundPoster f33957h = new BackgroundPoster(this);

    private final AsyncPoster f33958i = new AsyncPoster(this);

    private final SubscriberMethodFinder f33959j = new SubscriberMethodFinder();

    private boolean f33961l = true;

    private Map<String, Object> f33962m = new ConcurrentHashMap();

    static class AnonymousClass3 {

        static final int[] f33965a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f33965a = iArr;
            try {
                iArr[ThreadMode.PostThread.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33965a[ThreadMode.MainThread.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33965a[ThreadMode.BackgroundThread.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33965a[ThreadMode.Async.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static final class BooleanWrapper {

        boolean f33966a;

        BooleanWrapper() {
        }
    }

    interface PostCallback {
        void onPostCompleted(List<SubscriberExceptionEvent> list);
    }

    private void a(Object obj, String str, boolean z10) {
        Iterator<SubscriberMethod> it = this.f33959j.a(obj.getClass(), str).iterator();
        while (it.hasNext()) {
            a(obj, it.next(), z10);
        }
    }

    public static void clearCaches() {
        SubscriberMethodFinder.a();
        f33949p.clear();
    }

    public static void clearSkipMethodNameVerifications() {
        SubscriberMethodFinder.clearSkipMethodNameVerifications();
    }

    public static EventBus getDefault() {
        if (f33948o == null) {
            synchronized (EventBus.class) {
                try {
                    if (f33948o == null) {
                        f33948o = new EventBus();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f33948o;
    }

    public static void skipMethodNameVerificationFor(Class<?> cls) {
        SubscriberMethodFinder.a(cls);
    }

    public void configureLogSubscriberExceptions(boolean z10) {
        if (this.f33960k) {
            throw new EventBusException("This method must be called before any registration");
        }
        this.f33961l = z10;
    }

    public Object getStickyEvent(Class<?> cls) {
        Object obj;
        synchronized (this.f33952c) {
            obj = this.f33952c.get(cls);
        }
        return obj;
    }

    public void post(Object obj) {
        List<Object> list = this.f33953d.get();
        list.add(obj);
        BooleanWrapper booleanWrapper = this.f33954e.get();
        if (booleanWrapper.f33966a) {
            return;
        }
        boolean z10 = Looper.getMainLooper() == Looper.myLooper();
        booleanWrapper.f33966a = true;
        while (!list.isEmpty()) {
            try {
                a(list.remove(0), z10);
            } catch (Throwable th2) {
                booleanWrapper.f33966a = false;
                throw th2;
            }
        }
        booleanWrapper.f33966a = false;
    }

    public void postSticky(Object obj) {
        post(obj);
        synchronized (this.f33952c) {
            this.f33952c.put(obj.getClass(), obj);
        }
    }

    public void register(Object obj) {
        a(obj, this.f33955f, false);
    }

    public void registerSticky(Object obj) {
        a(obj, this.f33955f, true);
    }

    public void release() {
        if (f33948o != null) {
            f33948o = null;
            f33947n = null;
            Map<Class<?>, List<Class<?>>> map = f33949p;
            if (map != null && map.size() > 0) {
                map.clear();
            }
            Map<Class<?>, CopyOnWriteArrayList<Subscription>> map2 = this.f33950a;
            if (map2 != null && map2.size() > 0) {
                this.f33950a.clear();
            }
            Map<Object, List<Class<?>>> map3 = this.f33951b;
            if (map3 != null && map3.size() > 0) {
                this.f33951b.clear();
            }
            Map<Class<?>, Object> map4 = this.f33952c;
            if (map4 != null && map4.size() > 0) {
                this.f33952c.clear();
            }
            Map<String, Object> map5 = this.f33962m;
            if (map5 == null || map5.size() <= 0) {
                return;
            }
            this.f33962m.clear();
        }
    }

    public Object removeStickyEvent(Class<?> cls) {
        Object objRemove;
        synchronized (this.f33952c) {
            objRemove = this.f33952c.remove(cls);
        }
        return objRemove;
    }

    public synchronized void unregister(Object obj, Class<?>... clsArr) {
        try {
            if (clsArr.length == 0) {
                throw new IllegalArgumentException("Provide at least one event class");
            }
            List<Class<?>> list = this.f33951b.get(obj);
            if (list != null) {
                for (Class<?> cls : clsArr) {
                    a(obj, cls);
                    list.remove(cls);
                }
                if (list.isEmpty()) {
                    this.f33951b.remove(obj);
                }
            } else {
                Log.w(TAG, "Subscriber to unregister was not registered before: " + obj.getClass());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void register(String str, Object obj) {
        Map<String, Object> map = this.f33962m;
        if (map != null && map.containsKey(str)) {
            unregister(this.f33962m.get(str));
        }
        this.f33962m.put(str, obj);
        a(obj, this.f33955f, false);
    }

    public void registerSticky(Object obj, String str) {
        a(obj, str, true);
    }

    public void registerSticky(Object obj, Class<?> cls, Class<?>... clsArr) {
        a(obj, this.f33955f, true, cls, clsArr);
    }

    public synchronized void registerSticky(Object obj, String str, Class<?> cls, Class<?>... clsArr) {
        a(obj, str, true, cls, clsArr);
    }

    public boolean removeStickyEvent(Object obj) {
        synchronized (this.f33952c) {
            try {
                Class<?> cls = obj.getClass();
                if (!obj.equals(this.f33952c.get(cls))) {
                    return false;
                }
                this.f33952c.remove(cls);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private synchronized void a(Object obj, String str, boolean z10, Class<?> cls, Class<?>... clsArr) {
        try {
            for (SubscriberMethod subscriberMethod : this.f33959j.a(obj.getClass(), str)) {
                if (cls == subscriberMethod.f33979c) {
                    a(obj, subscriberMethod, z10);
                } else if (clsArr != null) {
                    for (Class<?> cls2 : clsArr) {
                        if (cls2 == subscriberMethod.f33979c) {
                            a(obj, subscriberMethod, z10);
                            break;
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void register(Object obj, String str) {
        a(obj, str, false);
    }

    public void register(Object obj, Class<?> cls, Class<?>... clsArr) {
        a(obj, this.f33955f, false, cls, clsArr);
    }

    public synchronized void register(Object obj, String str, Class<?> cls, Class<?>... clsArr) {
        a(obj, str, false, cls, clsArr);
    }

    public synchronized void unregister(Object obj) {
        try {
            List<Class<?>> list = this.f33951b.get(obj);
            if (list != null) {
                Iterator<Class<?>> it = list.iterator();
                while (it.hasNext()) {
                    a(obj, it.next());
                }
                this.f33951b.remove(obj);
            } else {
                Log.w(TAG, "Subscriber to unregister was not registered before: " + obj.getClass());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void a(Object obj, SubscriberMethod subscriberMethod, boolean z10) {
        Object obj2;
        this.f33960k = true;
        Class<?> cls = subscriberMethod.f33979c;
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList = this.f33950a.get(cls);
        Subscription subscription = new Subscription(obj, subscriberMethod);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f33950a.put(cls, copyOnWriteArrayList);
        } else {
            Iterator<Subscription> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (it.next().equals(subscription)) {
                    throw new EventBusException("Subscriber " + obj.getClass() + " already registered to event " + cls);
                }
            }
        }
        subscriberMethod.f33977a.setAccessible(true);
        copyOnWriteArrayList.add(subscription);
        List<Class<?>> arrayList = this.f33951b.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f33951b.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (z10) {
            synchronized (this.f33952c) {
                obj2 = this.f33952c.get(cls);
            }
            if (obj2 != null) {
                a(subscription, obj2, Looper.getMainLooper() == Looper.myLooper());
            }
        }
    }

    public synchronized void unregister(String str) {
        try {
            Map<String, Object> map = this.f33962m;
            if (map != null && map.containsKey(str)) {
                Object objRemove = this.f33962m.remove(str);
                List<Class<?>> list = this.f33951b.get(objRemove);
                if (list != null) {
                    Iterator<Class<?>> it = list.iterator();
                    while (it.hasNext()) {
                        a(objRemove, it.next());
                    }
                    this.f33951b.remove(objRemove);
                } else {
                    Log.w(TAG, "Subscriber to unregister was not registered before: " + objRemove.getClass());
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void a(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList = this.f33950a.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i10 = 0;
            while (i10 < size) {
                if (copyOnWriteArrayList.get(i10).f33983a == obj) {
                    copyOnWriteArrayList.remove(i10);
                    i10--;
                    size--;
                }
                i10++;
            }
        }
    }

    private void a(Object obj, boolean z10) throws Error {
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                List<Class<?>> listA = a(cls);
                int size = listA.size();
                boolean z11 = false;
                for (int i10 = 0; i10 < size; i10++) {
                    Class<?> cls2 = listA.get(i10);
                    synchronized (this) {
                        copyOnWriteArrayList = this.f33950a.get(cls2);
                    }
                    if (copyOnWriteArrayList != null) {
                        Iterator<Subscription> it = copyOnWriteArrayList.iterator();
                        while (it.hasNext()) {
                            a(it.next(), obj, z10);
                        }
                        z11 = true;
                    }
                }
                if (z11) {
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("No subscripers registered for event ");
                sb2.append(cls);
                if (cls == NoSubscriberEvent.class || cls == SubscriberExceptionEvent.class) {
                    return;
                }
                post(new NoSubscriberEvent(this, obj));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private void a(Subscription subscription, Object obj, boolean z10) {
        int i10 = AnonymousClass3.f33965a[subscription.f33984b.f33978b.ordinal()];
        if (i10 == 1) {
            a(subscription, obj);
            return;
        }
        if (i10 == 2) {
            if (z10) {
                a(subscription, obj);
                return;
            } else {
                this.f33956g.a(subscription, obj);
                return;
            }
        }
        if (i10 == 3) {
            if (z10) {
                this.f33957h.enqueue(subscription, obj);
                return;
            } else {
                a(subscription, obj);
                return;
            }
        }
        if (i10 == 4) {
            this.f33958i.enqueue(subscription, obj);
            return;
        }
        throw new IllegalStateException("Unknown thread mode: " + subscription.f33984b.f33978b);
    }

    private List<Class<?>> a(Class<?> cls) {
        List<Class<?>> arrayList;
        Map<Class<?>, List<Class<?>>> map = f33949p;
        synchronized (map) {
            try {
                arrayList = map.get(cls);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                        arrayList.add(superclass);
                        a(arrayList, superclass.getInterfaces());
                    }
                    f33949p.put(cls, arrayList);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return arrayList;
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    void a(PendingPost pendingPost) {
        Object obj = pendingPost.f33972a;
        Subscription subscription = pendingPost.f33973b;
        PendingPost.a(pendingPost);
        a(subscription, obj);
    }

    void a(Subscription subscription, Object obj) throws Error {
        try {
            subscription.f33984b.f33977a.invoke(subscription.f33983a, obj);
        } catch (IllegalAccessException e10) {
            throw new IllegalStateException("Unexpected exception", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (obj instanceof SubscriberExceptionEvent) {
                Log.e(TAG, "SubscriberExceptionEvent subscriber " + subscription.f33983a.getClass() + " threw an exception", cause);
                SubscriberExceptionEvent subscriberExceptionEvent = (SubscriberExceptionEvent) obj;
                Log.e(TAG, "Initial event " + subscriberExceptionEvent.causingEvent + " caused exception in " + subscriberExceptionEvent.causingSubscriber, subscriberExceptionEvent.throwable);
                return;
            }
            if (this.f33961l) {
                Log.e(TAG, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + subscription.f33983a.getClass(), cause);
            }
            post(new SubscriberExceptionEvent(this, cause, obj, subscription.f33983a));
        }
    }
}
