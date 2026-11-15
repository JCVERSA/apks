package com.alibaba.fastjson;

import a5.h;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.io.NotActiveException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.RandomAccess;

public class JSONArray extends a implements List<Object>, Cloneable, RandomAccess, Serializable {
    private static final long serialVersionUID = 1;
    protected transient Type componentType;
    private final List<Object> list;
    protected transient Object relatedArray;

    public JSONArray() {
        this.list = new ArrayList();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        JSONObject.a.d();
        if (JSONObject.a.f17363a != null && !JSONObject.a.f17364b) {
            try {
                new JSONObject.a(objectInputStream).defaultReadObject();
                return;
            } catch (NotActiveException unused) {
            }
        }
        objectInputStream.defaultReadObject();
        for (Object obj : this.list) {
            if (obj != null) {
                String name = obj.getClass().getName();
                if (TypeUtils.R(name) == null) {
                    h.f188z.i(name, null);
                }
            }
        }
    }

    @Override
    public boolean add(Object obj) {
        return this.list.add(obj);
    }

    @Override
    public boolean addAll(Collection<?> collection) {
        return this.list.addAll(collection);
    }

    @Override
    public void clear() {
        this.list.clear();
    }

    public Object clone() {
        return new JSONArray(new ArrayList(this.list));
    }

    @Override
    public boolean contains(Object obj) {
        return this.list.contains(obj);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.list.containsAll(collection);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj instanceof JSONArray ? this.list.equals(((JSONArray) obj).list) : this.list.equals(obj);
    }

    public JSONArray fluentAdd(Object obj) {
        this.list.add(obj);
        return this;
    }

    public JSONArray fluentAddAll(Collection<?> collection) {
        this.list.addAll(collection);
        return this;
    }

    public JSONArray fluentClear() {
        this.list.clear();
        return this;
    }

    public JSONArray fluentRemove(Object obj) {
        this.list.remove(obj);
        return this;
    }

    public JSONArray fluentRemoveAll(Collection<?> collection) {
        this.list.removeAll(collection);
        return this;
    }

    public JSONArray fluentRetainAll(Collection<?> collection) {
        this.list.retainAll(collection);
        return this;
    }

    public JSONArray fluentSet(int i10, Object obj) {
        set(i10, obj);
        return this;
    }

    @Override
    public Object get(int i10) {
        return this.list.get(i10);
    }

    public BigDecimal getBigDecimal(int i10) {
        return TypeUtils.i(get(i10));
    }

    public BigInteger getBigInteger(int i10) {
        return TypeUtils.j(get(i10));
    }

    public Boolean getBoolean(int i10) {
        Object obj = get(i10);
        if (obj == null) {
            return null;
        }
        return TypeUtils.k(obj);
    }

    public boolean getBooleanValue(int i10) {
        Object obj = get(i10);
        if (obj == null) {
            return false;
        }
        return TypeUtils.k(obj).booleanValue();
    }

    public Byte getByte(int i10) {
        return TypeUtils.l(get(i10));
    }

    public byte getByteValue(int i10) {
        Byte bL = TypeUtils.l(get(i10));
        if (bL == null) {
            return (byte) 0;
        }
        return bL.byteValue();
    }

    public Type getComponentType() {
        return this.componentType;
    }

    public Date getDate(int i10) {
        return TypeUtils.o(get(i10));
    }

    public Double getDouble(int i10) {
        return TypeUtils.q(get(i10));
    }

    public double getDoubleValue(int i10) {
        Double dQ = TypeUtils.q(get(i10));
        if (dQ == null) {
            return 0.0d;
        }
        return dQ.doubleValue();
    }

    public Float getFloat(int i10) {
        return TypeUtils.s(get(i10));
    }

    public float getFloatValue(int i10) {
        Float fS = TypeUtils.s(get(i10));
        if (fS == null) {
            return 0.0f;
        }
        return fS.floatValue();
    }

    public int getIntValue(int i10) {
        Integer numT = TypeUtils.t(get(i10));
        if (numT == null) {
            return 0;
        }
        return numT.intValue();
    }

    public Integer getInteger(int i10) {
        return TypeUtils.t(get(i10));
    }

    public JSONArray getJSONArray(int i10) {
        Object obj = this.list.get(i10);
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        return obj instanceof List ? new JSONArray((List<Object>) obj) : (JSONArray) a.toJSON(obj);
    }

    public JSONObject getJSONObject(int i10) {
        Object obj = this.list.get(i10);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        return obj instanceof Map ? new JSONObject((Map<String, Object>) obj) : (JSONObject) a.toJSON(obj);
    }

    public Long getLong(int i10) {
        return TypeUtils.w(get(i10));
    }

    public long getLongValue(int i10) {
        Long lW = TypeUtils.w(get(i10));
        if (lW == null) {
            return 0L;
        }
        return lW.longValue();
    }

    public <T> T getObject(int i10, Class<T> cls) {
        return (T) TypeUtils.u(this.list.get(i10), cls);
    }

    public Object getRelatedArray() {
        return this.relatedArray;
    }

    public Short getShort(int i10) {
        return TypeUtils.x(get(i10));
    }

    public short getShortValue(int i10) {
        Short shX = TypeUtils.x(get(i10));
        if (shX == null) {
            return (short) 0;
        }
        return shX.shortValue();
    }

    public Object getSqlDate(int i10) {
        return TypeUtils.y(get(i10));
    }

    public String getString(int i10) {
        return TypeUtils.A(get(i10));
    }

    public Object getTimestamp(int i10) {
        return TypeUtils.B(get(i10));
    }

    @Override
    public int hashCode() {
        return this.list.hashCode();
    }

    @Override
    public int indexOf(Object obj) {
        return this.list.indexOf(obj);
    }

    @Override
    public boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override
    public Iterator<Object> iterator() {
        return this.list.iterator();
    }

    @Override
    public int lastIndexOf(Object obj) {
        return this.list.lastIndexOf(obj);
    }

    @Override
    public ListIterator<Object> listIterator() {
        return this.list.listIterator();
    }

    @Override
    public boolean remove(Object obj) {
        return this.list.remove(obj);
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        return this.list.removeAll(collection);
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        return this.list.retainAll(collection);
    }

    @Override
    public Object set(int i10, Object obj) {
        if (i10 == -1) {
            this.list.add(obj);
            return null;
        }
        if (this.list.size() > i10) {
            return this.list.set(i10, obj);
        }
        for (int size = this.list.size(); size < i10; size++) {
            this.list.add(null);
        }
        this.list.add(obj);
        return null;
    }

    public void setComponentType(Type type) {
        this.componentType = type;
    }

    public void setRelatedArray(Object obj) {
        this.relatedArray = obj;
    }

    @Override
    public int size() {
        return this.list.size();
    }

    @Override
    public List<Object> subList(int i10, int i11) {
        return this.list.subList(i10, i11);
    }

    @Override
    public Object[] toArray() {
        return this.list.toArray();
    }

    public <T> List<T> toJavaList(Class<T> cls) {
        ArrayList arrayList = new ArrayList(size());
        h hVarT = h.t();
        Iterator<Object> it = iterator();
        while (it.hasNext()) {
            arrayList.add(TypeUtils.f(it.next(), cls, hVarT));
        }
        return arrayList;
    }

    @Override
    public void add(int i10, Object obj) {
        this.list.add(i10, obj);
    }

    @Override
    public boolean addAll(int i10, Collection<? extends Object> collection) {
        return this.list.addAll(i10, collection);
    }

    public JSONArray fluentAdd(int i10, Object obj) {
        this.list.add(i10, obj);
        return this;
    }

    public JSONArray fluentAddAll(int i10, Collection<?> collection) {
        this.list.addAll(i10, collection);
        return this;
    }

    public JSONArray fluentRemove(int i10) {
        this.list.remove(i10);
        return this;
    }

    @Override
    public ListIterator<Object> listIterator(int i10) {
        return this.list.listIterator(i10);
    }

    @Override
    public Object remove(int i10) {
        return this.list.remove(i10);
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.list.toArray(tArr);
    }

    public JSONArray(List<Object> list) {
        if (list != null) {
            this.list = list;
            return;
        }
        throw new IllegalArgumentException("list is null.");
    }

    public <T> T getObject(int i10, Type type) {
        Object obj = this.list.get(i10);
        if (type instanceof Class) {
            return (T) TypeUtils.u(obj, (Class) type);
        }
        return (T) a.parseObject(a.toJSONString(obj), type, new Feature[0]);
    }

    public JSONArray(int i10) {
        this.list = new ArrayList(i10);
    }
}
