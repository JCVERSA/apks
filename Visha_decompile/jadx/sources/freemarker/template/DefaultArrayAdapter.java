package freemarker.template;

import defpackage.c8;
import defpackage.gc7;
import defpackage.hc7;
import defpackage.lpc;
import defpackage.nga;
import defpackage.npc;
import defpackage.zfa;
import java.io.Serializable;
import java.lang.reflect.Array;

public abstract class DefaultArrayAdapter extends npc implements nga, c8, lpc, Serializable {

    public static class BooleanArrayAdapter extends DefaultArrayAdapter {
        private final boolean[] array;

        @Override
        public zfa get(int i) throws TemplateModelException {
            if (i >= 0) {
                boolean[] zArr = this.array;
                if (i < zArr.length) {
                    return wrap(new Boolean(zArr[i]));
                }
            }
            return null;
        }

        @Override
        public Object getWrappedObject() {
            return this.array;
        }

        @Override
        public int size() throws TemplateModelException {
            return this.array.length;
        }

        public BooleanArrayAdapter(boolean[] zArr, gc7 gc7Var) {
            super(gc7Var);
            this.array = zArr;
        }
    }

    public static class ByteArrayAdapter extends DefaultArrayAdapter {
        private final byte[] array;

        @Override
        public zfa get(int i) throws TemplateModelException {
            if (i >= 0) {
                byte[] bArr = this.array;
                if (i < bArr.length) {
                    return wrap(new Byte(bArr[i]));
                }
            }
            return null;
        }

        @Override
        public Object getWrappedObject() {
            return this.array;
        }

        @Override
        public int size() throws TemplateModelException {
            return this.array.length;
        }

        public ByteArrayAdapter(byte[] bArr, gc7 gc7Var) {
            super(gc7Var);
            this.array = bArr;
        }
    }

    public static class CharArrayAdapter extends DefaultArrayAdapter {
        private final char[] array;

        @Override
        public zfa get(int i) throws TemplateModelException {
            if (i >= 0) {
                char[] cArr = this.array;
                if (i < cArr.length) {
                    return wrap(new Character(cArr[i]));
                }
            }
            return null;
        }

        @Override
        public Object getWrappedObject() {
            return this.array;
        }

        @Override
        public int size() throws TemplateModelException {
            return this.array.length;
        }

        public CharArrayAdapter(char[] cArr, gc7 gc7Var) {
            super(gc7Var);
            this.array = cArr;
        }
    }

    public static class DoubleArrayAdapter extends DefaultArrayAdapter {
        private final double[] array;

        @Override
        public zfa get(int i) throws TemplateModelException {
            if (i >= 0) {
                double[] dArr = this.array;
                if (i < dArr.length) {
                    return wrap(new Double(dArr[i]));
                }
            }
            return null;
        }

        @Override
        public Object getWrappedObject() {
            return this.array;
        }

        @Override
        public int size() throws TemplateModelException {
            return this.array.length;
        }

        public DoubleArrayAdapter(double[] dArr, gc7 gc7Var) {
            super(gc7Var);
            this.array = dArr;
        }
    }

    public static class FloatArrayAdapter extends DefaultArrayAdapter {
        private final float[] array;

        @Override
        public zfa get(int i) throws TemplateModelException {
            if (i >= 0) {
                float[] fArr = this.array;
                if (i < fArr.length) {
                    return wrap(new Float(fArr[i]));
                }
            }
            return null;
        }

        @Override
        public Object getWrappedObject() {
            return this.array;
        }

        @Override
        public int size() throws TemplateModelException {
            return this.array.length;
        }

        public FloatArrayAdapter(float[] fArr, gc7 gc7Var) {
            super(gc7Var);
            this.array = fArr;
        }
    }

    public static class GenericPrimitiveArrayAdapter extends DefaultArrayAdapter {
        private final Object array;
        private final int length;

        @Override
        public zfa get(int i) throws TemplateModelException {
            if (i < 0 || i >= this.length) {
                return null;
            }
            return wrap(Array.get(this.array, i));
        }

        @Override
        public Object getWrappedObject() {
            return this.array;
        }

        @Override
        public int size() throws TemplateModelException {
            return this.length;
        }

        public GenericPrimitiveArrayAdapter(Object obj, gc7 gc7Var) {
            super(gc7Var);
            this.array = obj;
            this.length = Array.getLength(obj);
        }
    }

    public static class IntArrayAdapter extends DefaultArrayAdapter {
        private final int[] array;

        @Override
        public zfa get(int i) throws TemplateModelException {
            if (i >= 0) {
                int[] iArr = this.array;
                if (i < iArr.length) {
                    return wrap(new Integer(iArr[i]));
                }
            }
            return null;
        }

        @Override
        public Object getWrappedObject() {
            return this.array;
        }

        @Override
        public int size() throws TemplateModelException {
            return this.array.length;
        }

        public IntArrayAdapter(int[] iArr, gc7 gc7Var) {
            super(gc7Var);
            this.array = iArr;
        }
    }

    public static class LongArrayAdapter extends DefaultArrayAdapter {
        private final long[] array;

        @Override
        public zfa get(int i) throws TemplateModelException {
            if (i >= 0) {
                long[] jArr = this.array;
                if (i < jArr.length) {
                    return wrap(new Long(jArr[i]));
                }
            }
            return null;
        }

        @Override
        public Object getWrappedObject() {
            return this.array;
        }

        @Override
        public int size() throws TemplateModelException {
            return this.array.length;
        }

        public LongArrayAdapter(long[] jArr, gc7 gc7Var) {
            super(gc7Var);
            this.array = jArr;
        }
    }

    public static class ObjectArrayAdapter extends DefaultArrayAdapter {
        private final Object[] array;

        @Override
        public zfa get(int i) throws TemplateModelException {
            if (i >= 0) {
                Object[] objArr = this.array;
                if (i < objArr.length) {
                    return wrap(objArr[i]);
                }
            }
            return null;
        }

        @Override
        public Object getWrappedObject() {
            return this.array;
        }

        @Override
        public int size() throws TemplateModelException {
            return this.array.length;
        }

        public ObjectArrayAdapter(Object[] objArr, gc7 gc7Var) {
            super(gc7Var);
            this.array = objArr;
        }
    }

    public static class ShortArrayAdapter extends DefaultArrayAdapter {
        private final short[] array;

        @Override
        public zfa get(int i) throws TemplateModelException {
            if (i >= 0) {
                short[] sArr = this.array;
                if (i < sArr.length) {
                    return wrap(new Short(sArr[i]));
                }
            }
            return null;
        }

        @Override
        public Object getWrappedObject() {
            return this.array;
        }

        @Override
        public int size() throws TemplateModelException {
            return this.array.length;
        }

        public ShortArrayAdapter(short[] sArr, gc7 gc7Var) {
            super(gc7Var);
            this.array = sArr;
        }
    }

    public static DefaultArrayAdapter adapt(Object obj, hc7 hc7Var) {
        Class<?> componentType = obj.getClass().getComponentType();
        if (componentType == null) {
            throw new IllegalArgumentException("Not an array");
        }
        if (!componentType.isPrimitive()) {
            return new ObjectArrayAdapter((Object[]) obj, hc7Var);
        }
        if (componentType == Integer.TYPE) {
            return new IntArrayAdapter((int[]) obj, hc7Var);
        }
        if (componentType == Double.TYPE) {
            return new DoubleArrayAdapter((double[]) obj, hc7Var);
        }
        if (componentType == Long.TYPE) {
            return new LongArrayAdapter((long[]) obj, hc7Var);
        }
        if (componentType == Boolean.TYPE) {
            return new BooleanArrayAdapter((boolean[]) obj, hc7Var);
        }
        if (componentType == Float.TYPE) {
            return new FloatArrayAdapter((float[]) obj, hc7Var);
        }
        if (componentType == Character.TYPE) {
            return new CharArrayAdapter((char[]) obj, hc7Var);
        }
        if (componentType == Short.TYPE) {
            return new ShortArrayAdapter((short[]) obj, hc7Var);
        }
        return componentType == Byte.TYPE ? new ByteArrayAdapter((byte[]) obj, hc7Var) : new GenericPrimitiveArrayAdapter(obj, hc7Var);
    }

    @Override
    public abstract zfa get(int i) throws TemplateModelException;

    @Override
    public final Object getAdaptedObject(Class cls) {
        return getWrappedObject();
    }

    @Override
    public abstract Object getWrappedObject();

    @Override
    public abstract int size() throws TemplateModelException;

    private DefaultArrayAdapter(gc7 gc7Var) {
        super(gc7Var);
    }
}
