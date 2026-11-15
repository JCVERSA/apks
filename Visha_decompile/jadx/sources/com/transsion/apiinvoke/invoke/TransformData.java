package com.transsion.apiinvoke.invoke;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TransformData implements Serializable {
    private static final long serialVersionUID = -3554824118336635541L;
    private final List<TypeValuePair> dataList = new ArrayList();

    public static <T> TransformData create(T t) {
        TransformData transformData = new TransformData();
        transformData.addData(t);
        return transformData;
    }

    public <T> TransformData addData(T t) {
        return addData(this.dataList.size(), t);
    }

    public <T> T getData() {
        return (T) getData(0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TransformData:");
        List<TypeValuePair> list = this.dataList;
        if (list != null && list.size() > 0) {
            sb.append("\n");
            Iterator<TypeValuePair> it = this.dataList.iterator();
            while (it.hasNext()) {
                sb.append(it.next().toString());
            }
        }
        sb.append("\n");
        sb.append(":end");
        return sb.toString();
    }

    public <T> TransformData addData(int i, T t) {
        TypeValuePair typeValuePairCreateTypeMapping = TypeValuePair.createTypeMapping(t);
        Class<?> cls = t != null ? t.getClass() : null;
        if (cls == null || !cls.isArray() || Array.getLength(t) != 0) {
            this.dataList.add(i, typeValuePairCreateTypeMapping);
        }
        return this;
    }

    public <T> T getData(int i) {
        TypeValuePair typeValuePair;
        T t;
        if (this.dataList.size() <= i || (typeValuePair = this.dataList.get(i)) == null || (t = (T) typeValuePair.getValue()) == null) {
            return null;
        }
        return t;
    }
}
