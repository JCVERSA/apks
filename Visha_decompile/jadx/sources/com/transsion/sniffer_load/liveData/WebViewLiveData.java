package com.transsion.sniffer_load.liveData;

import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

public class WebViewLiveData<T> extends MutableLiveData<T> {
    private void a(Observer observer) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, InvocationTargetException {
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

    @Override
    public void observe(LifecycleOwner lifecycleOwner, Observer observer) {
        super.observe(lifecycleOwner, observer);
        try {
            a(observer);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
