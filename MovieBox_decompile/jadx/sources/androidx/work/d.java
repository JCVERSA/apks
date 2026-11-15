package androidx.work;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class d {

    private static final String f15128b = j.i("Data");

    public static final d f15129c = new a().a();

    Map f15130a;

    public static final class a {

        private Map f15131a = new HashMap();

        public d a() throws Throwable {
            d dVar = new d(this.f15131a);
            d.k(dVar);
            return dVar;
        }

        public a b(String str, Object obj) {
            if (obj == null) {
                this.f15131a.put(str, null);
            } else {
                Class<?> cls = obj.getClass();
                if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                    this.f15131a.put(str, obj);
                } else if (cls == boolean[].class) {
                    this.f15131a.put(str, d.a((boolean[]) obj));
                } else if (cls == byte[].class) {
                    this.f15131a.put(str, d.b((byte[]) obj));
                } else if (cls == int[].class) {
                    this.f15131a.put(str, d.e((int[]) obj));
                } else if (cls == long[].class) {
                    this.f15131a.put(str, d.f((long[]) obj));
                } else if (cls == float[].class) {
                    this.f15131a.put(str, d.d((float[]) obj));
                } else {
                    if (cls != double[].class) {
                        throw new IllegalArgumentException("Key " + str + "has invalid type " + cls);
                    }
                    this.f15131a.put(str, d.c((double[]) obj));
                }
            }
            return this;
        }

        public a c(d dVar) {
            d(dVar.f15130a);
            return this;
        }

        public a d(Map map) {
            for (Map.Entry entry : map.entrySet()) {
                b((String) entry.getKey(), entry.getValue());
            }
            return this;
        }

        public a e(String str, String str2) {
            this.f15131a.put(str, str2);
            return this;
        }
    }

    public d(d dVar) {
        this.f15130a = new HashMap(dVar.f15130a);
    }

    public static Boolean[] a(boolean[] zArr) {
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i10 = 0; i10 < zArr.length; i10++) {
            boolArr[i10] = Boolean.valueOf(zArr[i10]);
        }
        return boolArr;
    }

    public static Byte[] b(byte[] bArr) {
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr2[i10] = Byte.valueOf(bArr[i10]);
        }
        return bArr2;
    }

    public static Double[] c(double[] dArr) {
        Double[] dArr2 = new Double[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr2[i10] = Double.valueOf(dArr[i10]);
        }
        return dArr2;
    }

    public static Float[] d(float[] fArr) {
        Float[] fArr2 = new Float[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr2[i10] = Float.valueOf(fArr[i10]);
        }
        return fArr2;
    }

    public static Integer[] e(int[] iArr) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            numArr[i10] = Integer.valueOf(iArr[i10]);
        }
        return numArr;
    }

    public static Long[] f(long[] jArr) {
        Long[] lArr = new Long[jArr.length];
        for (int i10 = 0; i10 < jArr.length; i10++) {
            lArr[i10] = Long.valueOf(jArr[i10]);
        }
        return lArr;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static d g(byte[] bArr) throws Throwable {
        ObjectInputStream objectInputStream;
        Throwable e10;
        if (bArr.length > 10240) {
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        }
        HashMap map = new HashMap();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        for (int i10 = objectInputStream.readInt(); i10 > 0; i10--) {
                            map.put(objectInputStream.readUTF(), objectInputStream.readObject());
                        }
                        try {
                            objectInputStream.close();
                        } catch (IOException e11) {
                            Log.e(f15128b, "Error in Data#fromByteArray: ", e11);
                        }
                        byteArrayInputStream.close();
                    } catch (IOException e12) {
                        e10 = e12;
                        Log.e(f15128b, "Error in Data#fromByteArray: ", e10);
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e13) {
                                Log.e(f15128b, "Error in Data#fromByteArray: ", e13);
                            }
                        }
                        byteArrayInputStream.close();
                    } catch (ClassNotFoundException e14) {
                        e10 = e14;
                        Log.e(f15128b, "Error in Data#fromByteArray: ", e10);
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        byteArrayInputStream.close();
                    }
                } catch (IOException e15) {
                    Log.e(f15128b, "Error in Data#fromByteArray: ", e15);
                }
            } catch (IOException e16) {
                e = e16;
                Throwable th2 = e;
                objectInputStream = null;
                e10 = th2;
                Log.e(f15128b, "Error in Data#fromByteArray: ", e10);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                byteArrayInputStream.close();
                return new d(map);
            } catch (ClassNotFoundException e17) {
                e = e17;
                Throwable th3 = e;
                objectInputStream = null;
                e10 = th3;
                Log.e(f15128b, "Error in Data#fromByteArray: ", e10);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                byteArrayInputStream.close();
                return new d(map);
            } catch (Throwable th4) {
                th = th4;
                if (0 != 0) {
                    try {
                        objectInputStream2.close();
                    } catch (IOException e18) {
                        Log.e(f15128b, "Error in Data#fromByteArray: ", e18);
                    }
                }
                try {
                    byteArrayInputStream.close();
                    throw th;
                } catch (IOException e19) {
                    Log.e(f15128b, "Error in Data#fromByteArray: ", e19);
                    throw th;
                }
            }
            return new d(map);
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public static byte[] k(d dVar) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeInt(dVar.j());
                    for (Map.Entry entry : dVar.f15130a.entrySet()) {
                        objectOutputStream2.writeUTF((String) entry.getKey());
                        objectOutputStream2.writeObject(entry.getValue());
                    }
                    try {
                        objectOutputStream2.close();
                    } catch (IOException e10) {
                        Log.e(f15128b, "Error in Data#toByteArray: ", e10);
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e11) {
                        Log.e(f15128b, "Error in Data#toByteArray: ", e11);
                    }
                    if (byteArrayOutputStream.size() <= 10240) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                } catch (IOException e12) {
                    e = e12;
                    objectOutputStream = objectOutputStream2;
                    Log.e(f15128b, "Error in Data#toByteArray: ", e);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e13) {
                            Log.e(f15128b, "Error in Data#toByteArray: ", e13);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e14) {
                        Log.e(f15128b, "Error in Data#toByteArray: ", e14);
                    }
                    return byteArray;
                } catch (Throwable th2) {
                    th = th2;
                    objectOutputStream = objectOutputStream2;
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e15) {
                            Log.e(f15128b, "Error in Data#toByteArray: ", e15);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (IOException e16) {
                        Log.e(f15128b, "Error in Data#toByteArray: ", e16);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e17) {
            e = e17;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        Set<String> setKeySet = this.f15130a.keySet();
        if (!setKeySet.equals(dVar.f15130a.keySet())) {
            return false;
        }
        for (String str : setKeySet) {
            Object obj2 = this.f15130a.get(str);
            Object obj3 = dVar.f15130a.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : ((obj2 instanceof Object[]) && (obj3 instanceof Object[])) ? Arrays.deepEquals((Object[]) obj2, (Object[]) obj3) : obj2.equals(obj3))) {
                return false;
            }
        }
        return true;
    }

    public Map h() {
        return Collections.unmodifiableMap(this.f15130a);
    }

    public int hashCode() {
        return this.f15130a.hashCode() * 31;
    }

    public String i(String str) {
        Object obj = this.f15130a.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public int j() {
        return this.f15130a.size();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Data {");
        if (!this.f15130a.isEmpty()) {
            for (String str : this.f15130a.keySet()) {
                sb2.append(str);
                sb2.append(" : ");
                Object obj = this.f15130a.get(str);
                if (obj instanceof Object[]) {
                    sb2.append(Arrays.toString((Object[]) obj));
                } else {
                    sb2.append(obj);
                }
                sb2.append(", ");
            }
        }
        sb2.append("}");
        return sb2.toString();
    }

    public d(Map map) {
        this.f15130a = new HashMap(map);
    }
}
