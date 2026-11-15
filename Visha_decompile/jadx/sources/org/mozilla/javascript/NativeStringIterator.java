package org.mozilla.javascript;

public final class NativeStringIterator extends ES6Iterator {
    private static final String ITERATOR_TAG = "StringIterator";
    private static final long serialVersionUID = 1;
    private int index;
    private String string;

    private NativeStringIterator() {
    }

    public static void init(ScriptableObject scriptableObject, boolean z) {
        ES6Iterator.init(scriptableObject, z, new NativeStringIterator(), ITERATOR_TAG);
    }

    @Override
    public String getClassName() {
        return "String Iterator";
    }

    @Override
    public String getTag() {
        return ITERATOR_TAG;
    }

    @Override
    public boolean isDone(Context context, Scriptable scriptable) {
        return this.index >= this.string.length();
    }

    @Override
    public Object nextValue(Context context, Scriptable scriptable) {
        int iOffsetByCodePoints = this.string.offsetByCodePoints(this.index, 1);
        String strSubstring = this.string.substring(this.index, iOffsetByCodePoints);
        this.index = iOffsetByCodePoints;
        return strSubstring;
    }

    public NativeStringIterator(Scriptable scriptable, Object obj) {
        super(scriptable, ITERATOR_TAG);
        this.index = 0;
        this.string = ScriptRuntime.toString(obj);
    }
}
