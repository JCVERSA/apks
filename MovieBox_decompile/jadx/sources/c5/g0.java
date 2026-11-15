package c5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

public class g0 implements Comparable {

    public final com.alibaba.fastjson.util.d f16529a;

    protected final boolean f16530b;

    protected int f16531c;

    private final String f16532d;

    private String f16533e;

    private String f16534f;

    protected p f16535g;

    private String f16536h;

    protected boolean f16537i;

    protected boolean f16538j;

    protected boolean f16539k;

    protected boolean f16540l = false;

    protected boolean f16541m;

    protected boolean f16542n;

    private a f16543o;

    static class a {

        final z0 f16544a;

        final Class f16545b;

        public a(z0 z0Var, Class cls) {
            this.f16544a = z0Var;
            this.f16545b = cls;
        }
    }

    public g0(Class cls, com.alibaba.fastjson.util.d dVar) {
        boolean z10;
        z4.d dVar2;
        this.f16537i = false;
        this.f16538j = false;
        this.f16539k = false;
        this.f16541m = false;
        this.f16529a = dVar;
        this.f16535g = new p(cls, dVar);
        if (cls != null && (dVar2 = (z4.d) TypeUtils.N(cls, z4.d.class)) != null) {
            for (SerializerFeature serializerFeature : dVar2.serialzeFeatures()) {
                if (serializerFeature == SerializerFeature.WriteEnumUsingToString) {
                    this.f16537i = true;
                } else if (serializerFeature == SerializerFeature.WriteEnumUsingName) {
                    this.f16538j = true;
                } else if (serializerFeature == SerializerFeature.DisableCircularReferenceDetect) {
                    this.f16539k = true;
                } else {
                    SerializerFeature serializerFeature2 = SerializerFeature.BrowserCompatible;
                    if (serializerFeature == serializerFeature2) {
                        this.f16531c |= serializerFeature2.mask;
                        this.f16542n = true;
                    } else {
                        SerializerFeature serializerFeature3 = SerializerFeature.WriteMapNullValue;
                        if (serializerFeature == serializerFeature3) {
                            this.f16531c |= serializerFeature3.mask;
                        }
                    }
                }
            }
        }
        dVar.p();
        this.f16532d = '\"' + dVar.f17580a + "\":";
        z4.b bVarE = dVar.e();
        if (bVarE != null) {
            SerializerFeature[] serializerFeatureArrSerialzeFeatures = bVarE.serialzeFeatures();
            int length = serializerFeatureArrSerialzeFeatures.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    z10 = false;
                    break;
                } else {
                    if ((serializerFeatureArrSerialzeFeatures[i10].getMask() & SerializerFeature.WRITE_MAP_NULL_FEATURES) != 0) {
                        z10 = true;
                        break;
                    }
                    i10++;
                }
            }
            String str = bVarE.format();
            this.f16536h = str;
            if (str.trim().length() == 0) {
                this.f16536h = null;
            }
            for (SerializerFeature serializerFeature4 : bVarE.serialzeFeatures()) {
                if (serializerFeature4 == SerializerFeature.WriteEnumUsingToString) {
                    this.f16537i = true;
                } else if (serializerFeature4 == SerializerFeature.WriteEnumUsingName) {
                    this.f16538j = true;
                } else if (serializerFeature4 == SerializerFeature.DisableCircularReferenceDetect) {
                    this.f16539k = true;
                } else if (serializerFeature4 == SerializerFeature.BrowserCompatible) {
                    this.f16542n = true;
                }
            }
            this.f16531c = SerializerFeature.of(bVarE.serialzeFeatures()) | this.f16531c;
        } else {
            z10 = false;
        }
        this.f16530b = z10;
        this.f16541m = TypeUtils.n0(dVar.f17581b) || TypeUtils.m0(dVar.f17581b);
    }

    @Override
    public int compareTo(g0 g0Var) {
        return this.f16529a.compareTo(g0Var.f16529a);
    }

    public Object b(Object obj) {
        Object objD = this.f16529a.d(obj);
        if (this.f16536h == null || objD == null) {
            return objD;
        }
        Class cls = this.f16529a.f17584e;
        if (cls != Date.class && cls != java.sql.Date.class) {
            return objD;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.f16536h, com.alibaba.fastjson.a.defaultLocale);
        simpleDateFormat.setTimeZone(com.alibaba.fastjson.a.defaultTimeZone);
        return simpleDateFormat.format(objD);
    }

    public Object d(Object obj) {
        Object objD = this.f16529a.d(obj);
        if (!this.f16541m || TypeUtils.q0(objD)) {
            return objD;
        }
        return null;
    }

    public void e(o0 o0Var) {
        j1 j1Var = o0Var.f16619k;
        if (!j1Var.f16595f) {
            if (this.f16534f == null) {
                this.f16534f = this.f16529a.f17580a + ":";
            }
            j1Var.write(this.f16534f);
            return;
        }
        if (!SerializerFeature.isEnabled(j1Var.f16592c, this.f16529a.f17588i, SerializerFeature.UseSingleQuotes)) {
            j1Var.write(this.f16532d);
            return;
        }
        if (this.f16533e == null) {
            this.f16533e = '\'' + this.f16529a.f17580a + "':";
        }
        j1Var.write(this.f16533e);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0082  */
    public void f(o0 o0Var, Object obj) throws Throwable {
        Class cls;
        Class<?> cls2;
        z0 z0VarQ;
        if (this.f16543o == null) {
            if (obj == null) {
                cls2 = this.f16529a.f17584e;
                if (cls2 == Byte.TYPE) {
                    cls2 = Byte.class;
                } else if (cls2 == Short.TYPE) {
                    cls2 = Short.class;
                } else if (cls2 == Integer.TYPE) {
                    cls2 = Integer.class;
                } else if (cls2 == Long.TYPE) {
                    cls2 = Long.class;
                } else if (cls2 == Float.TYPE) {
                    cls2 = Float.class;
                } else if (cls2 == Double.TYPE) {
                    cls2 = Double.class;
                } else if (cls2 == Boolean.TYPE) {
                    cls2 = Boolean.class;
                }
            } else {
                cls2 = obj.getClass();
            }
            z4.b bVarE = this.f16529a.e();
            if (bVarE == null || bVarE.serializeUsing() == Void.class) {
                if (this.f16536h == null) {
                    z0VarQ = null;
                } else if (cls2 == Double.TYPE || cls2 == Double.class) {
                    z0VarQ = new d0(this.f16536h);
                } else if (cls2 == Float.TYPE || cls2 == Float.class) {
                    z0VarQ = new h0(this.f16536h);
                } else {
                    z0VarQ = null;
                }
                if (z0VarQ == null) {
                    z0VarQ = o0Var.q(cls2);
                }
            } else {
                z0VarQ = (z0) bVarE.serializeUsing().newInstance();
                this.f16540l = true;
            }
            this.f16543o = new a(z0VarQ, cls2);
        }
        a aVar = this.f16543o;
        int i10 = (this.f16539k ? this.f16529a.f17588i | SerializerFeature.DisableCircularReferenceDetect.mask : this.f16529a.f17588i) | this.f16531c;
        if (obj == null) {
            j1 j1Var = o0Var.f16619k;
            if (this.f16529a.f17584e == Object.class && j1Var.n(SerializerFeature.WRITE_MAP_NULL_FEATURES)) {
                j1Var.h0();
                return;
            }
            Class cls3 = aVar.f16545b;
            if (Number.class.isAssignableFrom(cls3)) {
                j1Var.j0(this.f16531c, SerializerFeature.WriteNullNumberAsZero.mask);
                return;
            }
            if (String.class == cls3) {
                j1Var.j0(this.f16531c, SerializerFeature.WriteNullStringAsEmpty.mask);
                return;
            }
            if (Boolean.class == cls3) {
                j1Var.j0(this.f16531c, SerializerFeature.WriteNullBooleanAsFalse.mask);
                return;
            }
            if (Collection.class.isAssignableFrom(cls3) || cls3.isArray()) {
                j1Var.j0(this.f16531c, SerializerFeature.WriteNullListAsEmpty.mask);
                return;
            }
            z0 z0Var = aVar.f16544a;
            if (j1Var.n(SerializerFeature.WRITE_MAP_NULL_FEATURES) && (z0Var instanceof p0)) {
                j1Var.h0();
                return;
            } else {
                com.alibaba.fastjson.util.d dVar = this.f16529a;
                z0Var.c(o0Var, null, dVar.f17580a, dVar.f17585f, i10);
                return;
            }
        }
        if (this.f16529a.f17596q) {
            if (this.f16538j) {
                o0Var.f16619k.o0(((Enum) obj).name());
                return;
            } else if (this.f16537i) {
                o0Var.f16619k.o0(((Enum) obj).toString());
                return;
            }
        }
        Class<?> cls4 = obj.getClass();
        z0 z0VarQ2 = (cls4 == aVar.f16545b || this.f16540l) ? aVar.f16544a : o0Var.q(cls4);
        String str = this.f16536h;
        if (str != null && !(z0VarQ2 instanceof d0) && !(z0VarQ2 instanceof h0)) {
            if (z0VarQ2 instanceof a0) {
                ((a0) z0VarQ2).a(o0Var, obj, this.f16535g);
                return;
            } else {
                o0Var.G(obj, str);
                return;
            }
        }
        com.alibaba.fastjson.util.d dVar2 = this.f16529a;
        if (dVar2.f17598s) {
            if (z0VarQ2 instanceof p0) {
                ((p0) z0VarQ2).t(o0Var, obj, dVar2.f17580a, dVar2.f17585f, i10, true);
                return;
            } else if (z0VarQ2 instanceof v0) {
                ((v0) z0VarQ2).j(o0Var, obj, dVar2.f17580a, dVar2.f17585f, i10, true);
                return;
            }
        }
        if ((this.f16531c & SerializerFeature.WriteClassName.mask) != 0 && cls4 != dVar2.f17584e && (z0VarQ2 instanceof p0)) {
            ((p0) z0VarQ2).t(o0Var, obj, dVar2.f17580a, dVar2.f17585f, i10, false);
            return;
        }
        if (this.f16542n && ((cls = dVar2.f17584e) == Long.TYPE || cls == Long.class)) {
            long jLongValue = ((Long) obj).longValue();
            if (jLongValue > 9007199254740991L || jLongValue < -9007199254740991L) {
                o0Var.r().o0(Long.toString(jLongValue));
                return;
            }
        }
        com.alibaba.fastjson.util.d dVar3 = this.f16529a;
        z0VarQ2.c(o0Var, obj, dVar3.f17580a, dVar3.f17585f, i10);
    }
}
