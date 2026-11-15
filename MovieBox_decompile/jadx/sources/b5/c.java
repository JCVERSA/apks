package b5;

import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.ParameterizedTypeImpl;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public class c extends l {

    private final Type f15532c;

    private int f15533d;

    private b2 f15534e;

    public c(a5.h hVar, Class cls, com.alibaba.fastjson.util.d dVar) {
        super(cls, dVar);
        Type type = dVar.f17585f;
        if (!(type instanceof ParameterizedType)) {
            this.f15532c = Object.class;
            return;
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type2).getUpperBounds();
            if (upperBounds.length == 1) {
                type2 = upperBounds[0];
            }
        }
        this.f15532c = type2;
    }

    @Override
    public int b() {
        return 14;
    }

    @Override
    public void d(a5.a aVar, Object obj, Type type, Map map) {
        a5.b bVar = aVar.f141f;
        int iT0 = bVar.t0();
        if (iT0 == 8 || (iT0 == 4 && bVar.o0().length() == 0)) {
            if (obj == null) {
                map.put(this.f15555a.f17580a, null);
                return;
            } else {
                i(obj, null);
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        a5.g gVarM = aVar.m();
        aVar.x0(gVarM, obj, this.f15555a.f17580a);
        k(aVar, type, arrayList);
        aVar.A0(gVarM);
        if (obj == null) {
            map.put(this.f15555a.f17580a, arrayList);
        } else {
            h(obj, arrayList);
        }
    }

    public final void k(a5.a aVar, Type type, Collection collection) {
        Class cls;
        int i10;
        int i11;
        Type typeB = this.f15532c;
        b2 b2VarP = this.f15534e;
        int i12 = 0;
        if (type instanceof ParameterizedType) {
            if (typeB instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) typeB;
                ParameterizedType parameterizedType = (ParameterizedType) type;
                cls = parameterizedType.getRawType() instanceof Class ? (Class) parameterizedType.getRawType() : null;
                if (cls == null) {
                    i11 = -1;
                    break;
                }
                int length = cls.getTypeParameters().length;
                i11 = 0;
                while (true) {
                    if (i11 >= length) {
                        i11 = -1;
                        break;
                    } else if (cls.getTypeParameters()[i11].getName().equals(typeVariable.getName())) {
                        break;
                    } else {
                        i11++;
                    }
                }
                if (i11 != -1) {
                    typeB = parameterizedType.getActualTypeArguments()[i11];
                    if (!typeB.equals(this.f15532c)) {
                        b2VarP = aVar.l().p(typeB);
                    }
                }
            } else if (typeB instanceof ParameterizedType) {
                ParameterizedType parameterizedType2 = (ParameterizedType) typeB;
                Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                if (actualTypeArguments.length == 1) {
                    Type type2 = actualTypeArguments[0];
                    if (type2 instanceof TypeVariable) {
                        TypeVariable typeVariable2 = (TypeVariable) type2;
                        ParameterizedType parameterizedType3 = (ParameterizedType) type;
                        cls = parameterizedType3.getRawType() instanceof Class ? (Class) parameterizedType3.getRawType() : null;
                        if (cls == null) {
                            i10 = -1;
                            break;
                        }
                        int length2 = cls.getTypeParameters().length;
                        i10 = 0;
                        while (true) {
                            if (i10 >= length2) {
                                i10 = -1;
                                break;
                            } else if (cls.getTypeParameters()[i10].getName().equals(typeVariable2.getName())) {
                                break;
                            } else {
                                i10++;
                            }
                        }
                        if (i10 != -1) {
                            actualTypeArguments[0] = parameterizedType3.getActualTypeArguments()[i10];
                            typeB = com.alibaba.fastjson.g.b(new ParameterizedTypeImpl(actualTypeArguments, parameterizedType2.getOwnerType(), parameterizedType2.getRawType()));
                        }
                    }
                }
            }
        } else if ((typeB instanceof TypeVariable) && (type instanceof Class)) {
            Class cls2 = (Class) type;
            TypeVariable typeVariable3 = (TypeVariable) typeB;
            cls2.getTypeParameters();
            int length3 = cls2.getTypeParameters().length;
            for (int i13 = 0; i13 < length3; i13++) {
                TypeVariable typeVariable4 = cls2.getTypeParameters()[i13];
                if (typeVariable4.getName().equals(typeVariable3.getName())) {
                    Type[] bounds = typeVariable4.getBounds();
                    if (bounds.length != 1) {
                        break;
                    }
                    typeB = bounds[0];
                    break;
                }
            }
        }
        a5.b bVar = aVar.f141f;
        int iT0 = bVar.t0();
        if (iT0 != 14) {
            if (iT0 == 4 && this.f15555a.f17598s) {
                String strO0 = bVar.o0();
                bVar.d0();
                new a5.a(strO0).d0(collection);
                return;
            } else {
                if (b2VarP == null) {
                    b2VarP = aVar.l().p(typeB);
                    this.f15534e = b2VarP;
                }
                collection.add(b2VarP.d(aVar, typeB, 0));
                aVar.j(collection);
                return;
            }
        }
        if (b2VarP == null) {
            b2VarP = aVar.l().p(typeB);
            this.f15534e = b2VarP;
            this.f15533d = b2VarP.b();
        }
        b2 b2Var = b2VarP;
        bVar.f0(this.f15533d);
        while (true) {
            if (bVar.o(Feature.AllowArbitraryCommas)) {
                while (bVar.t0() == 16) {
                    bVar.d0();
                }
            }
            if (bVar.t0() == 15) {
                bVar.f0(16);
                return;
            }
            collection.add(b2Var.d(aVar, typeB, Integer.valueOf(i12)));
            aVar.j(collection);
            if (bVar.t0() == 16) {
                bVar.f0(this.f15533d);
            }
            i12++;
        }
    }
}
