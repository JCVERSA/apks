package org.mozilla.javascript.typedarrays;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;

public class NativeInt32Array extends NativeTypedArrayView<Integer> {
    private static final int BYTES_PER_ELEMENT = 4;
    private static final String CLASS_NAME = "Int32Array";
    private static final long serialVersionUID = -8963461831950499340L;

    public NativeInt32Array() {
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        new NativeInt32Array().exportAsJSClass(6, scriptable, z);
    }

    @Override
    public int getBytesPerElement() {
        return 4;
    }

    @Override
    public String getClassName() {
        return CLASS_NAME;
    }

    @Override
    public Object js_get(int i) {
        return checkIndex(i) ? Undefined.instance : ByteIo.readInt32(this.arrayBuffer.buffer, (i * 4) + this.offset, NativeArrayBufferView.useLittleEndian());
    }

    @Override
    public Object js_set(int i, Object obj) {
        if (checkIndex(i)) {
            return Undefined.instance;
        }
        ByteIo.writeInt32(this.arrayBuffer.buffer, (i * 4) + this.offset, ScriptRuntime.toInt32(obj), NativeArrayBufferView.useLittleEndian());
        return null;
    }

    public NativeInt32Array(NativeArrayBuffer nativeArrayBuffer, int i, int i2) {
        super(nativeArrayBuffer, i, i2, i2 * 4);
    }

    @Override
    public NativeTypedArrayView<Integer> construct2(NativeArrayBuffer nativeArrayBuffer, int i, int i2) {
        return new NativeInt32Array(nativeArrayBuffer, i, i2);
    }

    @Override
    public Integer get(int i) {
        if (checkIndex(i)) {
            throw new IndexOutOfBoundsException();
        }
        return (Integer) js_get(i);
    }

    @Override
    public NativeTypedArrayView<Integer> realThis2(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof NativeInt32Array) {
            return (NativeInt32Array) scriptable;
        }
        throw IdScriptableObject.incompatibleCallError(idFunctionObject);
    }

    @Override
    public Integer set(int i, Integer num) {
        if (checkIndex(i)) {
            throw new IndexOutOfBoundsException();
        }
        return (Integer) js_set(i, num);
    }

    public NativeInt32Array(int i) {
        this(new NativeArrayBuffer(((double) i) * 4.0d), 0, i);
    }
}
