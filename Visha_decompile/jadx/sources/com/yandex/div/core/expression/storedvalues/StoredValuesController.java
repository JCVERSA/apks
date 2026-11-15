package com.yandex.div.core.expression.storedvalues;

import com.yandex.div.data.StoredValue;
import com.yandex.div.storage.DivStorageComponent;
import com.yandex.div.storage.RawJsonRepositoryException;
import com.yandex.div.storage.c;
import com.yandex.div.storage.e;
import defpackage.c74;
import defpackage.e74;
import defpackage.i81;
import defpackage.k81;
import defpackage.vib;
import defpackage.wc3;
import defpackage.x71;
import defpackage.xi5;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zn8;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.b;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public class StoredValuesController {
    public final yi5 a;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[StoredValue.Type.values().length];
            try {
                iArr[StoredValue.Type.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StoredValue.Type.INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StoredValue.Type.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[StoredValue.Type.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[StoredValue.Type.COLOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[StoredValue.Type.URL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[StoredValue.Type.ARRAY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[StoredValue.Type.DICT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            a = iArr;
        }
    }

    public StoredValuesController(final xi5 xi5Var) {
        y45.j(xi5Var, "divStorageComponentLazy");
        this.a = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final c invoke() {
                return ((DivStorageComponent) xi5Var.get()).a();
            }
        });
    }

    public final long a() {
        return System.currentTimeMillis();
    }

    public final c b() {
        return (c) this.a.getValue();
    }

    public StoredValue c(String str, wc3 wc3Var) {
        JSONObject data;
        y45.j(str, "name");
        final String str2 = "stored_value_" + str;
        e eVarB = b().b(x71.e(str2));
        if (wc3Var != null) {
            e(wc3Var, eVarB.e());
        }
        zn8 zn8Var = (zn8) i81.q0(eVarB.f());
        if (zn8Var != null && (data = zn8Var.getData()) != null) {
            if (data.has("expiration_time")) {
                if (a() >= data.getLong("expiration_time")) {
                    b().a(new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public final Boolean invoke(zn8 zn8Var2) {
                            y45.j(zn8Var2, "it");
                            return Boolean.valueOf(y45.e(zn8Var2.getId(), str2));
                        }
                    });
                    return null;
                }
            }
            try {
                String string = data.getString("type");
                StoredValue.Type.Companion companion = StoredValue.Type.INSTANCE;
                y45.i(string, "typeStrValue");
                StoredValue.Type typeA = companion.a(string);
                if (typeA != null) {
                    return i(data, typeA, str);
                }
                f(wc3Var, str, string);
                return null;
            } catch (JSONException e) {
                d(wc3Var, str, e);
            }
        }
        return null;
    }

    public final void d(wc3 wc3Var, String str, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append("Stored value '");
        sb.append(str);
        sb.append("' declaration failed: ");
        sb.append(th != null ? th.getMessage() : null);
        StoredValueDeclarationException storedValueDeclarationException = new StoredValueDeclarationException(sb.toString(), th);
        if (wc3Var != null) {
            wc3Var.e(storedValueDeclarationException);
        }
    }

    public final void e(wc3 wc3Var, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            wc3Var.e((RawJsonRepositoryException) it.next());
        }
    }

    public final void f(wc3 wc3Var, String str, String str2) {
        StoredValueDeclarationException storedValueDeclarationException = new StoredValueDeclarationException("Stored value '" + str + "' declaration failed because of unknown type '" + str2 + '\'', null, 2, null);
        if (wc3Var != null) {
            wc3Var.e(storedValueDeclarationException);
        }
    }

    public boolean g(StoredValue storedValue, long j, wc3 wc3Var) {
        y45.j(storedValue, "storedValue");
        e eVarC = b().c(new c.a(x71.e(zn8.V4.a("stored_value_" + storedValue.a(), h(storedValue, j))), null, 2, null));
        if (wc3Var != null) {
            e(wc3Var, eVarC.e());
        }
        return eVarC.e().isEmpty();
    }

    public final JSONObject h(StoredValue storedValue, long j) throws JSONException {
        Object string;
        if (storedValue instanceof StoredValue.g ? true : storedValue instanceof StoredValue.f ? true : storedValue instanceof StoredValue.b ? true : storedValue instanceof StoredValue.a ? true : storedValue instanceof StoredValue.d ? true : storedValue instanceof StoredValue.e) {
            string = storedValue.c();
        } else {
            if (!(storedValue instanceof StoredValue.h ? true : storedValue instanceof StoredValue.c)) {
                throw new NoWhenBranchMatchedException();
            }
            string = storedValue.c().toString();
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("expiration_time", a() + (j * ((long) 1000)));
        jSONObject.put("type", StoredValue.Type.INSTANCE.b(storedValue.b()));
        jSONObject.put(ES6Iterator.VALUE_PROPERTY, string);
        return jSONObject;
    }

    public final StoredValue i(JSONObject jSONObject, StoredValue.Type type, String str) throws JSONException {
        switch (a.a[type.ordinal()]) {
            case 1:
                String string = jSONObject.getString(ES6Iterator.VALUE_PROPERTY);
                y45.i(string, "getString(KEY_VALUE)");
                return new StoredValue.g(str, string);
            case 2:
                return new StoredValue.f(str, jSONObject.getLong(ES6Iterator.VALUE_PROPERTY));
            case 3:
                return new StoredValue.b(str, jSONObject.getBoolean(ES6Iterator.VALUE_PROPERTY));
            case 4:
                return new StoredValue.e(str, jSONObject.getDouble(ES6Iterator.VALUE_PROPERTY));
            case 5:
                k81.a aVar = k81.b;
                String string2 = jSONObject.getString(ES6Iterator.VALUE_PROPERTY);
                y45.i(string2, "getString(KEY_VALUE)");
                return new StoredValue.c(str, aVar.b(string2), null);
            case 6:
                vib.a aVar2 = vib.b;
                String string3 = jSONObject.getString(ES6Iterator.VALUE_PROPERTY);
                y45.i(string3, "getString(KEY_VALUE)");
                return new StoredValue.h(str, aVar2.a(string3), null);
            case 7:
                JSONArray jSONArray = jSONObject.getJSONArray(ES6Iterator.VALUE_PROPERTY);
                y45.i(jSONArray, "getJSONArray(KEY_VALUE)");
                return new StoredValue.a(str, jSONArray);
            case 8:
                JSONObject jSONObject2 = jSONObject.getJSONObject(ES6Iterator.VALUE_PROPERTY);
                y45.i(jSONObject2, "getJSONObject(KEY_VALUE)");
                return new StoredValue.d(str, jSONObject2);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
