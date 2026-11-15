package b5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;

public abstract class b extends e implements b2 {
    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        return e(aVar, type, obj, null, 0);
    }

    @Override
    public Object e(a5.a aVar, Type type, Object obj, String str, int i10) {
        Object objX;
        Object obj2;
        Object time;
        SimpleDateFormat simpleDateFormat;
        Object obj3;
        SimpleDateFormat simpleDateFormat2;
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 2) {
            long jL = bVar.l();
            bVar.f0(16);
            if ("unixtime".equals(str)) {
                jL *= 1000;
            }
            objX = Long.valueOf(jL);
        } else {
            Object obj4 = null;
            if (bVar.t0() == 4) {
                String strO0 = bVar.o0();
                if (str != null) {
                    if ("yyyy-MM-dd HH:mm:ss.SSSSSSSSS".equals(str) && (type instanceof Class) && ((Class) type).getName().equals("java.sql.Timestamp")) {
                        return TypeUtils.B(strO0);
                    }
                    try {
                        simpleDateFormat = new SimpleDateFormat(str, aVar.f141f.D0());
                    } catch (IllegalArgumentException e10) {
                        if (str.contains("T")) {
                            try {
                                simpleDateFormat = new SimpleDateFormat(str.replaceAll("T", "'T'"), aVar.f141f.D0());
                            } catch (IllegalArgumentException unused) {
                                throw e10;
                            }
                        } else {
                            simpleDateFormat = null;
                        }
                    }
                    if (com.alibaba.fastjson.a.defaultTimeZone != null) {
                        simpleDateFormat.setTimeZone(aVar.f141f.p0());
                    }
                    try {
                        obj3 = simpleDateFormat.parse(strO0);
                    } catch (ParseException unused2) {
                        obj3 = null;
                    }
                    if (obj3 == null && com.alibaba.fastjson.a.defaultLocale == Locale.CHINA) {
                        try {
                            simpleDateFormat2 = new SimpleDateFormat(str, Locale.US);
                        } catch (IllegalArgumentException e11) {
                            simpleDateFormat2 = simpleDateFormat;
                            if (str.contains("T")) {
                                try {
                                    simpleDateFormat2 = new SimpleDateFormat(str.replaceAll("T", "'T'"), aVar.f141f.D0());
                                } catch (IllegalArgumentException unused3) {
                                    throw e11;
                                }
                            }
                        }
                        simpleDateFormat2.setTimeZone(aVar.f141f.p0());
                        try {
                            obj3 = simpleDateFormat2.parse(strO0);
                        } catch (ParseException unused4) {
                            obj3 = null;
                        }
                    }
                    if (obj3 != null) {
                        obj4 = obj3;
                    } else if (str.equals("yyyy-MM-dd'T'HH:mm:ss.SSS") && strO0.length() == 19) {
                        try {
                            SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", com.alibaba.fastjson.a.defaultLocale);
                            simpleDateFormat3.setTimeZone(com.alibaba.fastjson.a.defaultTimeZone);
                            obj4 = simpleDateFormat3.parse(strO0);
                        } catch (ParseException unused5) {
                        }
                    }
                }
                if (obj4 == null) {
                    bVar.f0(16);
                    if (bVar.o(Feature.AllowISO8601DateFormat)) {
                        a5.e eVar = new a5.e(strO0);
                        if (eVar.w1()) {
                            obj2 = strO0;
                            time = strO0;
                            time = eVar.J0().getTime();
                        }
                        obj2 = strO0;
                        time = strO0;
                        eVar.close();
                        obj2 = time;
                    }
                    obj2 = strO0;
                    objX = obj2;
                } else {
                    objX = obj4;
                }
            } else if (bVar.t0() == 8) {
                bVar.d0();
                objX = obj4;
            } else if (bVar.t0() == 12) {
                bVar.d0();
                if (bVar.t0() != 4) {
                    throw new JSONException("syntax error");
                }
                if (com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(bVar.o0())) {
                    bVar.d0();
                    aVar.b(17);
                    Type typeJ = aVar.l().j(bVar.o0(), null, bVar.s());
                    if (typeJ != null) {
                        type = typeJ;
                    }
                    aVar.b(4);
                    aVar.b(16);
                }
                bVar.r(2);
                if (bVar.t0() != 2) {
                    throw new JSONException("syntax error : " + bVar.x());
                }
                long jL2 = bVar.l();
                bVar.d0();
                Object objValueOf = Long.valueOf(jL2);
                aVar.b(13);
                objX = objValueOf;
            } else if (aVar.t() == 2) {
                aVar.D0(0);
                aVar.b(16);
                if (bVar.t0() != 4) {
                    throw new JSONException("syntax error");
                }
                if (!"val".equals(bVar.o0())) {
                    throw new JSONException("syntax error");
                }
                bVar.d0();
                aVar.b(17);
                Object objX2 = aVar.x();
                aVar.b(13);
                objX = objX2;
            } else {
                objX = aVar.x();
            }
        }
        return f(aVar, type, obj, objX);
    }

    protected abstract Object f(a5.a aVar, Type type, Object obj, Object obj2);
}
