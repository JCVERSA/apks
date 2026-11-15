package com.transsion.retrofit.factory;

import androidx.collection.LruCache;
import okhttp3.Interceptor;

public abstract class BaseAPIManager {
    protected LruCache<Class, Object> apiCache = new LruCache<>(10);
    protected AbsAPIFactory apiFactory = new AbsAPIFactoryImpl() {
        @Override
        public String getBaseUrl() {
            return BaseAPIManager.this.createBaseUrl();
        }

        @Override
        public Interceptor getGslbInterceptor() {
            return null;
        }

        @Override
        public Interceptor getInterceptor() {
            return BaseAPIManager.this.createInterceptor();
        }

        @Override
        public Interceptor getLoggerInterceptor() {
            return BaseAPIManager.this.createLogInterceptor();
        }
    };

    public abstract String createBaseUrl();

    public Interceptor createGslbInterceptor() {
        return null;
    }

    public abstract Interceptor createInterceptor();

    public abstract Interceptor createLogInterceptor();

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public <T> T getApi(Class<T> cls) {
        T t = (T) this.apiCache.get(cls);
        if (t != null) {
            return t;
        }
        T t2 = (T) this.apiFactory.makeApiClient(cls);
        this.apiCache.put(cls, t2);
        return t2;
    }
}
