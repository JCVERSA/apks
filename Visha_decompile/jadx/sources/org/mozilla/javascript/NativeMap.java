package org.mozilla.javascript;

import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import java.util.Iterator;

public class NativeMap extends IdScriptableObject {
    static final String ITERATOR_TAG = "Map Iterator";
    private static final int Id_clear = 6;
    private static final int Id_constructor = 1;
    private static final int Id_delete = 4;
    private static final int Id_entries = 9;
    private static final int Id_forEach = 10;
    private static final int Id_get = 3;
    private static final int Id_has = 5;
    private static final int Id_keys = 7;
    private static final int Id_set = 2;
    private static final int Id_values = 8;
    private static final int MAX_PROTOTYPE_ID = 12;
    private static final int SymbolId_getSize = 11;
    private static final int SymbolId_toStringTag = 12;
    private static final long serialVersionUID = 1171922614280016891L;
    private final Hashtable entries = new Hashtable();
    private boolean instanceOfMap = false;
    private static final Object MAP_TAG = "Map";
    private static final Object NULL_VALUE = new Object();

    public static void init(Context context, Scriptable scriptable, boolean z) {
        NativeMap nativeMap = new NativeMap();
        nativeMap.exportAsJSClass(12, scriptable, false);
        ScriptableObject scriptableObject = (ScriptableObject) context.newObject(scriptable);
        scriptableObject.put("enumerable", scriptableObject, Boolean.FALSE);
        scriptableObject.put("configurable", scriptableObject, Boolean.TRUE);
        scriptableObject.put("get", scriptableObject, nativeMap.get(NativeSet.GETSIZE, nativeMap));
        nativeMap.defineOwnProperty(context, PlayAudioData.TAG_SIZE, scriptableObject);
        if (z) {
            nativeMap.sealObject();
        }
    }

    private Object js_clear() {
        this.entries.clear();
        return Undefined.instance;
    }

    private Object js_delete(Object obj) {
        return Boolean.valueOf(this.entries.delete(obj) != null);
    }

    private Object js_forEach(Context context, Scriptable scriptable, Object obj, Object obj2) {
        if (!(obj instanceof Callable)) {
            throw ScriptRuntime.typeError2("msg.isnt.function", obj, ScriptRuntime.typeof(obj));
        }
        Callable callable = (Callable) obj;
        boolean zIsStrictMode = context.isStrictMode();
        for (Hashtable.Entry entry : this.entries) {
            Scriptable objectOrNull = ScriptRuntime.toObjectOrNull(context, obj2, scriptable);
            if (objectOrNull == null && !zIsStrictMode) {
                objectOrNull = scriptable;
            }
            if (objectOrNull == null) {
                objectOrNull = Undefined.SCRIPTABLE_UNDEFINED;
            }
            Object obj3 = entry.value;
            if (obj3 == NULL_VALUE) {
                obj3 = null;
            }
            callable.call(context, scriptable, objectOrNull, new Object[]{obj3, entry.key, this});
        }
        return Undefined.instance;
    }

    private Object js_get(Object obj) {
        Object obj2 = this.entries.get(obj);
        if (obj2 == null) {
            return Undefined.instance;
        }
        if (obj2 == NULL_VALUE) {
            return null;
        }
        return obj2;
    }

    private Object js_getSize() {
        return Integer.valueOf(this.entries.size());
    }

    private Object js_has(Object obj) {
        return Boolean.valueOf(this.entries.has(obj));
    }

    private Object js_iterator(Scriptable scriptable, NativeCollectionIterator.Type type) {
        return new NativeCollectionIterator(scriptable, ITERATOR_TAG, type, this.entries.iterator());
    }

    private Object js_set(Object obj, Object obj2) {
        if (obj2 == null) {
            obj2 = NULL_VALUE;
        }
        if ((obj instanceof Number) && ((Number) obj).doubleValue() == ScriptRuntime.negativeZero) {
            obj = ScriptRuntime.zeroObj;
        }
        this.entries.put(obj, obj2);
        return this;
    }

    public static void loadFromIterable(Context context, Scriptable scriptable, ScriptableObject scriptableObject, Object obj) {
        if (obj != null) {
            Object obj2 = Undefined.instance;
            if (obj2.equals(obj)) {
                return;
            }
            Object objCallIterator = ScriptRuntime.callIterator(obj, context, scriptable);
            if (obj2.equals(objCallIterator)) {
                return;
            }
            Callable propFunctionAndThis = ScriptRuntime.getPropFunctionAndThis(ScriptableObject.ensureScriptableObject(context.newObject(scriptable, scriptableObject.getClassName())).getPrototype(), "set", context, scriptable);
            ScriptRuntime.lastStoredScriptable(context);
            IteratorLikeIterable iteratorLikeIterable = new IteratorLikeIterable(context, scriptable, objCallIterator);
            try {
                Iterator<Object> itIterator2 = iteratorLikeIterable.iterator();
                while (itIterator2.hasNext()) {
                    Scriptable scriptableEnsureScriptable = ScriptableObject.ensureScriptable(itIterator2.next());
                    if (scriptableEnsureScriptable instanceof Symbol) {
                        throw ScriptRuntime.typeError1("msg.arg.not.object", ScriptRuntime.typeof(scriptableEnsureScriptable));
                    }
                    Object obj3 = scriptableEnsureScriptable.get(0, scriptableEnsureScriptable);
                    Object obj4 = Scriptable.NOT_FOUND;
                    if (obj3 == obj4) {
                        obj3 = Undefined.instance;
                    }
                    Object obj5 = scriptableEnsureScriptable.get(1, scriptableEnsureScriptable);
                    if (obj5 == obj4) {
                        obj5 = Undefined.instance;
                    }
                    propFunctionAndThis.call(context, scriptable, scriptableObject, new Object[]{obj3, obj5});
                }
                iteratorLikeIterable.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        iteratorLikeIterable.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    private static NativeMap realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable == null) {
            throw IdScriptableObject.incompatibleCallError(idFunctionObject);
        }
        try {
            NativeMap nativeMap = (NativeMap) scriptable;
            if (nativeMap.instanceOfMap) {
                return nativeMap;
            }
            throw IdScriptableObject.incompatibleCallError(idFunctionObject);
        } catch (ClassCastException unused) {
            throw IdScriptableObject.incompatibleCallError(idFunctionObject);
        }
    }

    @Override
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(MAP_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        switch (idFunctionObject.methodId()) {
            case 1:
                if (scriptable2 != null) {
                    throw ScriptRuntime.typeError1("msg.no.new", "Map");
                }
                NativeMap nativeMap = new NativeMap();
                nativeMap.instanceOfMap = true;
                if (objArr.length > 0) {
                    loadFromIterable(context, scriptable, nativeMap, objArr[0]);
                }
                return nativeMap;
            case 2:
                return realThis(scriptable2, idFunctionObject).js_set(objArr.length > 0 ? objArr[0] : Undefined.instance, objArr.length > 1 ? objArr[1] : Undefined.instance);
            case 3:
                return realThis(scriptable2, idFunctionObject).js_get(objArr.length > 0 ? objArr[0] : Undefined.instance);
            case 4:
                return realThis(scriptable2, idFunctionObject).js_delete(objArr.length > 0 ? objArr[0] : Undefined.instance);
            case 5:
                return realThis(scriptable2, idFunctionObject).js_has(objArr.length > 0 ? objArr[0] : Undefined.instance);
            case 6:
                return realThis(scriptable2, idFunctionObject).js_clear();
            case 7:
                return realThis(scriptable2, idFunctionObject).js_iterator(scriptable, NativeCollectionIterator.Type.KEYS);
            case 8:
                return realThis(scriptable2, idFunctionObject).js_iterator(scriptable, NativeCollectionIterator.Type.VALUES);
            case 9:
                return realThis(scriptable2, idFunctionObject).js_iterator(scriptable, NativeCollectionIterator.Type.BOTH);
            case 10:
                return realThis(scriptable2, idFunctionObject).js_forEach(context, scriptable, objArr.length > 0 ? objArr[0] : Undefined.instance, objArr.length > 1 ? objArr[1] : Undefined.instance);
            case 11:
                return realThis(scriptable2, idFunctionObject).js_getSize();
            default:
                throw new IllegalArgumentException("Map.prototype has no method: " + idFunctionObject.getFunctionName());
        }
    }

    @Override
    public int findPrototypeId(Symbol symbol) {
        if (NativeSet.GETSIZE.equals(symbol)) {
            return 11;
        }
        if (SymbolKey.ITERATOR.equals(symbol)) {
            return 9;
        }
        return SymbolKey.TO_STRING_TAG.equals(symbol) ? 12 : 0;
    }

    @Override
    public String getClassName() {
        return "Map";
    }

    @Override
    public void initPrototypeId(int i) {
        String str;
        String str2;
        String str3;
        int i2;
        if (i == 11) {
            initPrototypeMethod(MAP_TAG, i, NativeSet.GETSIZE, "get size", 0);
            return;
        }
        if (i == 12) {
            initPrototypeValue(12, SymbolKey.TO_STRING_TAG, getClassName(), 3);
            return;
        }
        int i3 = 1;
        switch (i) {
            case 1:
                str = "constructor";
                str3 = str;
                i2 = 0;
                initPrototypeMethod(MAP_TAG, i, str3, (String) null, i2);
                return;
            case 2:
                i3 = 2;
                str2 = "set";
                i2 = i3;
                str3 = str2;
                initPrototypeMethod(MAP_TAG, i, str3, (String) null, i2);
                return;
            case 3:
                str2 = "get";
                i2 = i3;
                str3 = str2;
                initPrototypeMethod(MAP_TAG, i, str3, (String) null, i2);
                return;
            case 4:
                str2 = "delete";
                i2 = i3;
                str3 = str2;
                initPrototypeMethod(MAP_TAG, i, str3, (String) null, i2);
                return;
            case 5:
                str2 = "has";
                i2 = i3;
                str3 = str2;
                initPrototypeMethod(MAP_TAG, i, str3, (String) null, i2);
                return;
            case 6:
                str = "clear";
                str3 = str;
                i2 = 0;
                initPrototypeMethod(MAP_TAG, i, str3, (String) null, i2);
                return;
            case 7:
                str = "keys";
                str3 = str;
                i2 = 0;
                initPrototypeMethod(MAP_TAG, i, str3, (String) null, i2);
                return;
            case 8:
                str = "values";
                str3 = str;
                i2 = 0;
                initPrototypeMethod(MAP_TAG, i, str3, (String) null, i2);
                return;
            case 9:
                str = TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES;
                str3 = str;
                i2 = 0;
                initPrototypeMethod(MAP_TAG, i, str3, (String) null, i2);
                return;
            case 10:
                str2 = "forEach";
                i2 = i3;
                str3 = str2;
                initPrototypeMethod(MAP_TAG, i, str3, (String) null, i2);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    @Override
    public int findPrototypeId(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 3) {
            char cCharAt = str.charAt(0);
            if (cCharAt == 'g') {
                if (str.charAt(2) == 't' && str.charAt(1) == 'e') {
                    return 3;
                }
            } else if (cCharAt == 'h') {
                if (str.charAt(2) == 's' && str.charAt(1) == 'a') {
                    return 5;
                }
            } else if (cCharAt == 's' && str.charAt(2) == 't' && str.charAt(1) == 'e') {
                return 2;
            }
        } else {
            if (length == 4) {
                str2 = "keys";
                i = 7;
            } else if (length == 5) {
                str2 = "clear";
                i = 6;
            } else if (length == 6) {
                char cCharAt2 = str.charAt(0);
                if (cCharAt2 == 'd') {
                    str2 = "delete";
                    i = 4;
                } else if (cCharAt2 == 'v') {
                    str2 = "values";
                    i = 8;
                }
            } else if (length == 7) {
                char cCharAt3 = str.charAt(0);
                if (cCharAt3 == 'e') {
                    str2 = TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES;
                    i = 9;
                } else if (cCharAt3 == 'f') {
                    str2 = "forEach";
                    i = 10;
                }
            } else if (length == 11) {
                str2 = "constructor";
                i = 1;
            }
            if (str2 != null || str2 == str || str2.equals(str)) {
                return i;
            }
            return 0;
        }
        str2 = null;
        i = 0;
        return str2 != null ? i : i;
    }
}
