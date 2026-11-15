package com.transsion.eventbus;

import android.os.Looper;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.WeakHashMap;

public class LiveEventBus {
    public static String b;
    public final WeakHashMap a;

    public static class MyMutableLiveData<T> extends MutableLiveData<T> {
        public final WeakHashMap a = new WeakHashMap();
        public String b;

        public class a implements Observer {
            public a() {
            }

            @Override
            public void onChanged(Object obj) {
            }
        }

        public final String a() {
            return this.b;
        }

        public final void b(Observer observer) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, InvocationTargetException {
            Field declaredField = LiveData.class.getDeclaredField("mObservers");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Method declaredMethod = obj.getClass().getDeclaredMethod("get", Object.class);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(obj, observer);
            Object value = objInvoke instanceof Map.Entry ? ((Map.Entry) objInvoke).getValue() : null;
            if (value == null) {
                throw new NullPointerException("Wrapper can not be bull!");
            }
            Field declaredField2 = value.getClass().getSuperclass().getDeclaredField("mLastVersion");
            declaredField2.setAccessible(true);
            Field declaredField3 = LiveData.class.getDeclaredField("mVersion");
            declaredField3.setAccessible(true);
            declaredField2.set(value, declaredField3.get(this));
        }

        public void c() {
            Observer<? super T> aVar;
            if (this.a.containsKey(a())) {
                aVar = (Observer) this.a.get(a());
                if (aVar != null) {
                    this.a.remove(a());
                }
            } else {
                aVar = new a();
            }
            super.removeObserver(aVar);
        }

        public final void d(String str) {
            this.b = str;
        }

        @Override
        public void observe(LifecycleOwner lifecycleOwner, Observer observer) {
            super.observe(lifecycleOwner, observer);
            try {
                b(observer);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override
        public void observeForever(Observer observer) {
            if (!this.a.containsKey(LiveEventBus.b)) {
                d(LiveEventBus.b);
                this.a.put(LiveEventBus.b, new b(observer));
            }
            super.observeForever((Observer) this.a.get(LiveEventBus.b));
        }
    }

    public static class a {
        public static final LiveEventBus a = new LiveEventBus();
    }

    public static class b implements Observer {
        public final Observer a;

        public b(Observer observer) {
            this.a = observer;
        }

        public final boolean a() {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            if (stackTrace != null && stackTrace.length > 0) {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if ("android.arch.lifecycle.LiveData".equals(stackTraceElement.getClassName()) && "observeForever".equals(stackTraceElement.getMethodName())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override
        public void onChanged(Object obj) {
            if (this.a == null || a()) {
                return;
            }
            this.a.onChanged(obj);
        }
    }

    public static LiveEventBus b() {
        return a.a;
    }

    public void c(String str, Object obj) {
        b = str;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            d(str).setValue(obj);
        } else {
            d(str).postValue(obj);
        }
    }

    public MyMutableLiveData d(String str) {
        if (!this.a.containsKey(str)) {
            b = str;
            this.a.put(str, new MyMutableLiveData());
        }
        return (MyMutableLiveData) this.a.get(str);
    }

    public LiveEventBus() {
        this.a = new WeakHashMap();
    }
}
