package org.mozilla.javascript.typedarrays;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;

public class NativeUint16Array extends NativeTypedArrayView<Integer> {
    private static final int BYTES_PER_ELEMENT = 2;
    private static final String CLASS_NAME = "Uint16Array";
    private static final long serialVersionUID = 7700018949434240321L;

    public NativeUint16Array() {
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        new NativeUint16Array().exportAsJSClass(6, scriptable, z);
    }

    @Override
    public int getBytesPerElement() {
        return 2;
    }

    @Override
    public String getClassName() {
        return CLASS_NAME;
    }

    @Override
    public Object js_get(int i) {
        return checkIndex(i) ? Undefined.instance : ByteIo.readUint16(this.arrayBuffer.buffer, (i * 2) + this.offset, NativeArrayBufferView.useLittleEndian());
    }

    @Override
    public Object js_set(int i, Object obj) {
        if (checkIndex(i)) {
            return Undefined.instance;
        }
        ByteIo.writeUint16(this.arrayBuffer.buffer, (i * 2) + this.offset, Conversions.toUint16(obj), NativeArrayBufferView.useLittleEndian());
        return null;
    }

    public NativeUint16Array(NativeArrayBuffer nativeArrayBuffer, int i, int i2) {
        super(nativeArrayBuffer, i, i2, i2 * 2);
    }

    @Override
    public NativeTypedArrayView<Integer> construct2(NativeArrayBuffer nativeArrayBuffer, int i, int i2) {
        return new NativeUint16Array(nativeArrayBuffer, i, i2);
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
        if (scriptable instanceof NativeUint16Array) {
            return (NativeUint16Array) scriptable;
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

    public NativeUint16Array(int i) {
        this(new NativeArrayBuffer(((double) i) * 2.0d), 0, i);
    }
}
