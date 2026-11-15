package com.bykv.vk.openvk.preload.a.b;

import com.bykv.vk.openvk.preload.a.j;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

public final class b {

    private final Map<Type, com.bykv.vk.openvk.preload.a.f<?>> f19797a;

    private final com.bykv.vk.openvk.preload.a.b.b.b f19798b = com.bykv.vk.openvk.preload.a.b.b.b.a();

    public b(Map<Type, com.bykv.vk.openvk.preload.a.f<?>> map) {
        this.f19797a = map;
    }

    public final <T> h<T> a(com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        h<T> hVar;
        final Type typeB = aVar.b();
        final Class<? super T> clsA = aVar.a();
        final com.bykv.vk.openvk.preload.a.f<?> fVar = this.f19797a.get(typeB);
        if (fVar != null) {
            return new h<T>() {
                @Override
                public final T a() {
                    return (T) fVar.a();
                }
            };
        }
        final com.bykv.vk.openvk.preload.a.f<?> fVar2 = this.f19797a.get(clsA);
        if (fVar2 != null) {
            return new h<T>() {
                @Override
                public final T a() {
                    return (T) fVar2.a();
                }
            };
        }
        h<T> hVarA = a(clsA);
        if (hVarA != null) {
            return hVarA;
        }
        if (Collection.class.isAssignableFrom(clsA)) {
            if (SortedSet.class.isAssignableFrom(clsA)) {
                hVar = new h() {
                    @Override
                    public final Object a() {
                        return new TreeSet();
                    }
                };
            } else if (EnumSet.class.isAssignableFrom(clsA)) {
                hVar = new h() {
                    @Override
                    public final Object a() {
                        Type type = typeB;
                        if (!(type instanceof ParameterizedType)) {
                            throw new j("Invalid EnumSet type: " + typeB.toString());
                        }
                        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                        if (type2 instanceof Class) {
                            return EnumSet.noneOf((Class) type2);
                        }
                        throw new j("Invalid EnumSet type: " + typeB.toString());
                    }
                };
            } else if (Set.class.isAssignableFrom(clsA)) {
                hVar = new h() {
                    @Override
                    public final Object a() {
                        return new LinkedHashSet();
                    }
                };
            } else {
                hVar = Queue.class.isAssignableFrom(clsA) ? new h() {
                    @Override
                    public final Object a() {
                        return new ArrayDeque();
                    }
                } : new h() {
                    @Override
                    public final Object a() {
                        return new ArrayList();
                    }
                };
            }
        } else if (!Map.class.isAssignableFrom(clsA)) {
            hVar = null;
        } else if (ConcurrentNavigableMap.class.isAssignableFrom(clsA)) {
            hVar = new h() {
                @Override
                public final Object a() {
                    return new ConcurrentSkipListMap();
                }
            };
        } else if (ConcurrentMap.class.isAssignableFrom(clsA)) {
            hVar = new h() {
                @Override
                public final Object a() {
                    return new ConcurrentHashMap();
                }
            };
        } else if (SortedMap.class.isAssignableFrom(clsA)) {
            hVar = new h() {
                @Override
                public final Object a() {
                    return new TreeMap();
                }
            };
        } else {
            hVar = (!(typeB instanceof ParameterizedType) || String.class.isAssignableFrom(com.bykv.vk.openvk.preload.a.c.a.a(((ParameterizedType) typeB).getActualTypeArguments()[0]).a())) ? new h() {
                @Override
                public final Object a() {
                    return new g();
                }
            } : new h() {
                @Override
                public final Object a() {
                    return new LinkedHashMap();
                }
            };
        }
        return hVar != null ? hVar : new h() {

            private final i f19801a = i.a();

            @Override
            public final Object a() {
                try {
                    return this.f19801a.a(clsA);
                } catch (Exception e10) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + typeB + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e10);
                }
            }
        };
    }

    public final String toString() {
        return this.f19797a.toString();
    }

    private <T> h<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(null);
            if (!declaredConstructor.isAccessible()) {
                this.f19798b.a(declaredConstructor);
            }
            return new h<T>() {
                @Override
                public final T a() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e10) {
                        throw new AssertionError(e10);
                    } catch (InstantiationException e11) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e11);
                    } catch (InvocationTargetException e12) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e12.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }
}
