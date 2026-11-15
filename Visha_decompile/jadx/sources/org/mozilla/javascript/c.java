package org.mozilla.javascript;

import java.util.Arrays;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import org.mozilla.javascript.c;
import org.mozilla.javascript.debug.DebuggableObject;

public final class c {
    public static final ThreadLocal c = new ThreadLocal();
    public final Map a = new IdentityHashMap();
    public final Map b = new IdentityHashMap();

    public static boolean d(InterpretedFunction interpretedFunction, InterpretedFunction interpretedFunction2) {
        return Objects.equals(interpretedFunction.getEncodedSource(), interpretedFunction2.getEncodedSource());
    }

    public static Object[] j(Scriptable scriptable) {
        if (scriptable instanceof ScriptableObject) {
            return ((ScriptableObject) scriptable).getIds(true, true);
        }
        return scriptable instanceof DebuggableObject ? ((DebuggableObject) scriptable).getAllIds() : scriptable.getIds();
    }

    public static Object[] k(Scriptable scriptable) {
        Object[] objArrJ = j(scriptable);
        Arrays.sort(objArrJ, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return c.n(obj, obj2);
            }
        });
        return objArrJ;
    }

    public static String l(Symbol symbol) {
        if (symbol instanceof SymbolKey) {
            return ((SymbolKey) symbol).getName();
        }
        if (symbol instanceof NativeSymbol) {
            return ((NativeSymbol) symbol).getKey().getName();
        }
        throw new ClassCastException();
    }

    public static Object m(Scriptable scriptable, Object obj) {
        if (obj instanceof Symbol) {
            return ScriptableObject.getProperty(scriptable, (Symbol) obj);
        }
        if (obj instanceof Integer) {
            return ScriptableObject.getProperty(scriptable, ((Integer) obj).intValue());
        }
        if (obj instanceof String) {
            return ScriptableObject.getProperty(scriptable, (String) obj);
        }
        throw new ClassCastException();
    }

    public static int n(Object obj, Object obj2) {
        if (obj instanceof Integer) {
            if (obj2 instanceof Integer) {
                return ((Integer) obj).compareTo((Integer) obj2);
            }
            if ((obj2 instanceof String) || (obj2 instanceof Symbol)) {
                return -1;
            }
        } else if (obj instanceof String) {
            if (obj2 instanceof String) {
                return ((String) obj).compareTo((String) obj2);
            }
            if (obj2 instanceof Integer) {
                return 1;
            }
            if (obj2 instanceof Symbol) {
                return -1;
            }
        } else if (obj instanceof Symbol) {
            if (obj2 instanceof Symbol) {
                return l((Symbol) obj).compareTo(l((Symbol) obj2));
            }
            if ((obj2 instanceof Integer) || (obj2 instanceof String)) {
                return 1;
            }
        }
        throw new ClassCastException();
    }

    public static Iterator o(Map map) {
        if (!(map instanceof SortedMap)) {
            map = new TreeMap(map);
        }
        return map.entrySet().iterator();
    }

    public static Object[] p(Set set) {
        Object[] array = set.toArray();
        Arrays.sort(array);
        return array;
    }

    public static Object q(java.util.function.Function function) {
        ThreadLocal threadLocal = c;
        c cVar = (c) threadLocal.get();
        if (cVar != null) {
            return function.apply(cVar);
        }
        c cVar2 = new c();
        threadLocal.set(cVar2);
        try {
            return function.apply(cVar2);
        } finally {
            c.set(null);
        }
    }

    public boolean b(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        Object obj3 = this.b.get(obj);
        if (obj3 == obj2) {
            return true;
        }
        if (obj3 != null) {
            return false;
        }
        Object obj4 = this.a.get(obj);
        if (obj4 == obj2) {
            return true;
        }
        if (obj4 != null || this.a.get(obj2) != null) {
            return false;
        }
        this.b.put(obj, obj2);
        boolean zC = c(obj, obj2);
        if (zC) {
            this.a.put(obj, obj2);
            this.a.put(obj2, obj);
        }
        this.b.remove(obj);
        return zC;
    }

    public final boolean c(Object obj, Object obj2) {
        if (obj instanceof Wrapper) {
            return (obj2 instanceof Wrapper) && b(((Wrapper) obj).unwrap(), ((Wrapper) obj2).unwrap());
        }
        if (obj instanceof Scriptable) {
            return (obj2 instanceof Scriptable) && h((Scriptable) obj, (Scriptable) obj2);
        }
        if (obj instanceof ConsString) {
            return ((ConsString) obj).toString().equals(obj2);
        }
        if (obj2 instanceof ConsString) {
            return obj.equals(((ConsString) obj2).toString());
        }
        if (obj instanceof SymbolKey) {
            return (obj2 instanceof SymbolKey) && b(((SymbolKey) obj).getName(), ((SymbolKey) obj2).getName());
        }
        if (obj instanceof Object[]) {
            return (obj2 instanceof Object[]) && g((Object[]) obj, (Object[]) obj2);
        }
        if (obj.getClass().isArray()) {
            return Objects.deepEquals(obj, obj2);
        }
        if (obj instanceof List) {
            return (obj2 instanceof List) && e((List) obj, (List) obj2);
        }
        if (obj instanceof Map) {
            return (obj2 instanceof Map) && f((Map) obj, (Map) obj2);
        }
        if (obj instanceof Set) {
            return (obj2 instanceof Set) && i((Set) obj, (Set) obj2);
        }
        if (obj instanceof NativeGlobal) {
            return obj2 instanceof NativeGlobal;
        }
        if (obj instanceof JavaAdapter) {
            return obj2 instanceof JavaAdapter;
        }
        return obj instanceof NativeJavaTopPackage ? obj2 instanceof NativeJavaTopPackage : obj.equals(obj2);
    }

    public final boolean e(List list, List list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        Iterator it = list.iterator();
        Iterator it2 = list2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!b(it.next(), it2.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean f(Map map, Map map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        Iterator itO = o(map);
        Iterator itO2 = o(map2);
        while (itO.hasNext() && itO2.hasNext()) {
            Map.Entry entry = (Map.Entry) itO.next();
            Map.Entry entry2 = (Map.Entry) itO2.next();
            if (!b(entry.getKey(), entry2.getKey()) || !b(entry.getValue(), entry2.getValue())) {
                return false;
            }
        }
        return true;
    }

    public final boolean g(Object[] objArr, Object[] objArr2) {
        if (objArr.length != objArr2.length) {
            return false;
        }
        for (int i = 0; i < objArr.length; i++) {
            if (!b(objArr[i], objArr2[i])) {
                return false;
            }
        }
        return true;
    }

    public final boolean h(Scriptable scriptable, Scriptable scriptable2) {
        Object[] objArrK = k(scriptable);
        Object[] objArrK2 = k(scriptable2);
        if (!g(objArrK, objArrK2)) {
            return false;
        }
        int length = objArrK.length;
        for (int i = 0; i < length; i++) {
            if (!b(m(scriptable, objArrK[i]), m(scriptable2, objArrK2[i]))) {
                return false;
            }
        }
        if (!b(scriptable.getPrototype(), scriptable2.getPrototype()) || !b(scriptable.getParentScope(), scriptable2.getParentScope())) {
            return false;
        }
        if (scriptable instanceof NativeContinuation) {
            return (scriptable2 instanceof NativeContinuation) && NativeContinuation.equalImplementations((NativeContinuation) scriptable, (NativeContinuation) scriptable2);
        }
        if (scriptable instanceof NativeJavaPackage) {
            return scriptable.equals(scriptable2);
        }
        if (scriptable instanceof IdFunctionObject) {
            return (scriptable2 instanceof IdFunctionObject) && IdFunctionObject.equalObjectGraphs((IdFunctionObject) scriptable, (IdFunctionObject) scriptable2, this);
        }
        if (scriptable instanceof InterpretedFunction) {
            return (scriptable2 instanceof InterpretedFunction) && d((InterpretedFunction) scriptable, (InterpretedFunction) scriptable2);
        }
        if (scriptable instanceof ArrowFunction) {
            return (scriptable2 instanceof ArrowFunction) && ArrowFunction.equalObjectGraphs((ArrowFunction) scriptable, (ArrowFunction) scriptable2, this);
        }
        if (scriptable instanceof BoundFunction) {
            return (scriptable2 instanceof BoundFunction) && BoundFunction.equalObjectGraphs((BoundFunction) scriptable, (BoundFunction) scriptable2, this);
        }
        if (scriptable instanceof NativeSymbol) {
            return (scriptable2 instanceof NativeSymbol) && b(((NativeSymbol) scriptable).getKey(), ((NativeSymbol) scriptable2).getKey());
        }
        return true;
    }

    public final boolean i(Set set, Set set2) {
        return g(p(set), p(set2));
    }
}
