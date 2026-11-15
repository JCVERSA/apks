package c5;

import b5.b2;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Currency;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.regex.Pattern;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Node;

public class w0 implements z0, b2 {

    private static Method f16680c;

    public static final w0 f16679b = new w0();

    private static boolean f16681d = false;

    private static boolean f16678a = "true".equals(com.alibaba.fastjson.util.f.j("fastjson.deserializer.fileRelativePathSupport"));

    private static String e(Node node) {
        try {
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            DOMSource dOMSource = new DOMSource(node);
            StringWriter stringWriter = new StringWriter();
            transformerNewTransformer.transform(dOMSource, new StreamResult(stringWriter));
            return stringWriter.toString();
        } catch (TransformerException e10) {
            throw new JSONException("xml node to string error", e10);
        }
    }

    @Override
    public int b() {
        return 4;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        String strE;
        j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.h0();
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls == SimpleDateFormat.class) {
            strE = ((SimpleDateFormat) obj).toPattern();
            if (j1Var.o(SerializerFeature.WriteClassName) && obj.getClass() != type) {
                j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                j1Var.u(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
                o0Var.B(obj.getClass().getName());
                j1Var.S(',', "val", strE);
                j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
                return;
            }
        } else if (cls == Class.class) {
            strE = ((Class) obj).getName();
        } else {
            if (cls == InetSocketAddress.class) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) obj;
                InetAddress address = inetSocketAddress.getAddress();
                j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                if (address != null) {
                    j1Var.u(PlaceTypes.ADDRESS);
                    o0Var.A(address);
                    j1Var.write(44);
                }
                j1Var.u("port");
                j1Var.e0(inetSocketAddress.getPort());
                j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
                return;
            }
            if (obj instanceof File) {
                strE = ((File) obj).getPath();
            } else if (obj instanceof InetAddress) {
                strE = ((InetAddress) obj).getHostAddress();
            } else if (obj instanceof TimeZone) {
                strE = ((TimeZone) obj).getID();
            } else if (obj instanceof Currency) {
                strE = ((Currency) obj).getCurrencyCode();
            } else {
                if (obj instanceof com.alibaba.fastjson.e) {
                    ((com.alibaba.fastjson.e) obj).writeJSONString(j1Var);
                    return;
                }
                if (obj instanceof Iterator) {
                    f(o0Var, j1Var, (Iterator) obj);
                    return;
                }
                if (obj instanceof Iterable) {
                    f(o0Var, j1Var, ((Iterable) obj).iterator());
                    return;
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    if (key instanceof String) {
                        String str = (String) key;
                        if (value instanceof String) {
                            j1Var.W('{', str, (String) value);
                        } else {
                            j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                            j1Var.u(str);
                            o0Var.A(value);
                        }
                    } else {
                        j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                        o0Var.A(key);
                        j1Var.write(58);
                        o0Var.A(value);
                    }
                    j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
                    return;
                }
                if (obj.getClass().getName().equals("net.sf.json.JSONNull")) {
                    j1Var.h0();
                    return;
                } else {
                    if (!(obj instanceof Node)) {
                        throw new JSONException("not support class : " + cls);
                    }
                    strE = e((Node) obj);
                }
            }
        }
        j1Var.o0(strE);
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        Object objX;
        String str;
        a5.b bVar = aVar.f141f;
        int i10 = 0;
        InetAddress inetAddress = null;
        if (type != InetSocketAddress.class) {
            if (aVar.f146k == 2) {
                aVar.f146k = 0;
                aVar.b(16);
                if (bVar.t0() != 4) {
                    throw new JSONException("syntax error");
                }
                if (!"val".equals(bVar.o0())) {
                    throw new JSONException("syntax error");
                }
                bVar.d0();
                aVar.b(17);
                objX = aVar.x();
                aVar.b(13);
            } else {
                objX = aVar.x();
            }
            if (objX == null) {
                str = null;
            } else {
                if (!(objX instanceof String)) {
                    if (!(objX instanceof JSONObject)) {
                        throw new JSONException("expect string");
                    }
                    JSONObject jSONObject = (JSONObject) objX;
                    if (type == Currency.class) {
                        String string = jSONObject.getString("currency");
                        if (string != null) {
                            return Currency.getInstance(string);
                        }
                        String string2 = jSONObject.getString("currencyCode");
                        if (string2 != null) {
                            return Currency.getInstance(string2);
                        }
                    }
                    return type == Map.Entry.class ? jSONObject.entrySet().iterator().next() : jSONObject.toJavaObject(type);
                }
                str = (String) objX;
            }
            if (str == null || str.length() == 0) {
                return null;
            }
            if (type == UUID.class) {
                return UUID.fromString(str);
            }
            if (type == URI.class) {
                return URI.create(str);
            }
            if (type == URL.class) {
                try {
                    return new URL(str);
                } catch (MalformedURLException e10) {
                    throw new JSONException("create url error", e10);
                }
            }
            if (type == Pattern.class) {
                return Pattern.compile(str);
            }
            if (type == Locale.class) {
                return TypeUtils.O0(str);
            }
            if (type == SimpleDateFormat.class) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, bVar.D0());
                simpleDateFormat.setTimeZone(bVar.p0());
                return simpleDateFormat;
            }
            if (type == InetAddress.class || type == Inet4Address.class || type == Inet6Address.class) {
                try {
                    return InetAddress.getByName(str);
                } catch (UnknownHostException e11) {
                    throw new JSONException("deserialize inet adress error", e11);
                }
            }
            if (type == File.class) {
                if (str.indexOf("..") < 0 || f16678a) {
                    return new File(str);
                }
                throw new JSONException("file relative path not support.");
            }
            if (type == TimeZone.class) {
                return TimeZone.getTimeZone(str);
            }
            if (type instanceof ParameterizedType) {
                type = ((ParameterizedType) type).getRawType();
            }
            if (type == Class.class) {
                return TypeUtils.C0(str, aVar.l().n(), false);
            }
            if (type == Charset.class) {
                return Charset.forName(str);
            }
            if (type == Currency.class) {
                return Currency.getInstance(str);
            }
            if (type == JSONPath.class) {
                return new JSONPath(str);
            }
            if (!(type instanceof Class)) {
                throw new JSONException("MiscCodec not support " + type.toString());
            }
            String name = ((Class) type).getName();
            if (name.equals("java.nio.file.Path")) {
                try {
                    if (f16680c == null && !f16681d) {
                        f16680c = TypeUtils.A0("java.nio.file.Paths").getMethod("get", String.class, String[].class);
                    }
                    Method method = f16680c;
                    if (method != null) {
                        return method.invoke(null, str, new String[0]);
                    }
                    throw new JSONException("Path deserialize erorr");
                } catch (IllegalAccessException e12) {
                    throw new JSONException("Path deserialize erorr", e12);
                } catch (NoSuchMethodException unused) {
                    f16681d = true;
                } catch (InvocationTargetException e13) {
                    throw new JSONException("Path deserialize erorr", e13);
                }
            }
            throw new JSONException("MiscCodec not support " + name);
        }
        if (bVar.t0() == 8) {
            bVar.d0();
            return null;
        }
        aVar.b(12);
        while (true) {
            String strO0 = bVar.o0();
            bVar.f0(17);
            if (strO0.equals(PlaceTypes.ADDRESS)) {
                aVar.b(17);
                inetAddress = (InetAddress) aVar.j0(InetAddress.class);
            } else if (strO0.equals("port")) {
                aVar.b(17);
                if (bVar.t0() != 2) {
                    throw new JSONException("port is not int");
                }
                int iP = bVar.p();
                bVar.d0();
                i10 = iP;
            } else {
                aVar.b(17);
                aVar.x();
            }
            if (bVar.t0() != 16) {
                aVar.b(13);
                return new InetSocketAddress(inetAddress, i10);
            }
            bVar.d0();
        }
    }

    protected void f(o0 o0Var, j1 j1Var, Iterator it) {
        j1Var.write(91);
        int i10 = 0;
        while (it.hasNext()) {
            if (i10 != 0) {
                j1Var.write(44);
            }
            o0Var.A(it.next());
            i10++;
        }
        j1Var.write(93);
    }
}
