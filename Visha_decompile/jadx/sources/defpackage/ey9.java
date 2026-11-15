package defpackage;

import android.net.Uri;
import com.yandex.div.core.expression.storedvalues.StoredValueDeclarationException;
import com.yandex.div.core.expression.storedvalues.StoredValuesController;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.data.StoredValue;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import org.mozilla.javascript.ES6Iterator;

public final class ey9 {
    public static final ey9 a = new ey9();

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
            a = iArr;
        }
    }

    public static final boolean a(String str) {
        return y45.e(str, "set_stored_value");
    }

    public static final boolean e(Uri uri, sv2 sv2Var) {
        String strD;
        String strD2;
        Long lT;
        StoredValue.Type typeA;
        y45.j(uri, "uri");
        y45.j(sv2Var, "view");
        Div2View div2View = sv2Var instanceof Div2View ? (Div2View) sv2Var : null;
        if (div2View == null) {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("Handler view is not instance of Div2View");
            }
            return false;
        }
        ey9 ey9Var = a;
        String strD3 = ey9Var.d(uri, "name");
        if (strD3 != null && (strD = ey9Var.d(uri, ES6Iterator.VALUE_PROPERTY)) != null && (strD2 = ey9Var.d(uri, "lifetime")) != null && (lT = f1a.t(strD2)) != null) {
            long jLongValue = lT.longValue();
            String strD4 = ey9Var.d(uri, "type");
            if (strD4 != null && (typeA = StoredValue.Type.INSTANCE.a(strD4)) != null) {
                try {
                    return ey9Var.c(ey9Var.b(typeA, strD3, strD), jLongValue, div2View);
                } catch (StoredValueDeclarationException e) {
                    ae5 ae5Var2 = ae5.a;
                    if (xi.o()) {
                        xi.i("Stored value '" + strD3 + "' declaration failed: " + e.getMessage());
                    }
                }
            }
        }
        return false;
    }

    public final StoredValue b(StoredValue.Type type, String str, String str2) {
        switch (a.a[type.ordinal()]) {
            case 1:
                return new StoredValue.g(str, str2);
            case 2:
                return new StoredValue.f(str, j(str2));
            case 3:
                return new StoredValue.b(str, f(str2));
            case 4:
                return new StoredValue.e(str, h(str2));
            case 5:
                return new StoredValue.c(str, g(str2), null);
            case 6:
                return new StoredValue.h(str, k(str2), null);
            default:
                throw new StoredValueDeclarationException("Cannot create stored value of type = '" + type + "'.", null, 2, null);
        }
    }

    public final boolean c(StoredValue storedValue, long j, Div2View div2View) {
        y45.j(storedValue, "storedValue");
        y45.j(div2View, "div2View");
        StoredValuesController storedValuesControllerJ = div2View.getDiv2Component().j();
        y45.i(storedValuesControllerJ, "div2View.div2Component.storedValuesController");
        return storedValuesControllerJ.g(storedValue, j, div2View.getViewComponent().a().a(div2View.getDivTag(), div2View.getDivData()));
    }

    public final String d(Uri uri, String str) {
        String queryParameter = uri.getQueryParameter(str);
        if (queryParameter != null) {
            return queryParameter;
        }
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.i("The required parameter " + str + " is missing");
        }
        return null;
    }

    public final boolean f(String str) {
        Boolean boolH1 = j1a.h1(str);
        if (boolH1 != null) {
            return boolH1.booleanValue();
        }
        Boolean boolB = li1.b(i(str));
        if (boolB != null) {
            return boolB.booleanValue();
        }
        throw new StoredValueDeclarationException("Unable to convert " + str + " to boolean", null, 2, null);
    }

    public final int g(String str) {
        Integer num = (Integer) ParsingConvertersKt.b.invoke(str);
        if (num != null) {
            return k81.d(num.intValue());
        }
        throw new StoredValueDeclarationException("Wrong value format for color stored value: '" + str + '\'', null, 2, null);
    }

    public final double h(String str) {
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException e) {
            throw new StoredValueDeclarationException(null, e, 1, null);
        }
    }

    public final int i(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            throw new StoredValueDeclarationException(null, e, 1, null);
        }
    }

    public final long j(String str) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e) {
            throw new StoredValueDeclarationException(null, e, 1, null);
        }
    }

    public final String k(String str) {
        try {
            return vib.b.a(str);
        } catch (IllegalArgumentException e) {
            throw new StoredValueDeclarationException(null, e, 1, null);
        }
    }
}
