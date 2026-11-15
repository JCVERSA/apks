package com.transsion.cloud_drive.base.network.response;

import defpackage.lq0;
import defpackage.ru8;
import defpackage.y45;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J<\u0010\f\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0010\u0010\b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\n\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;", "Llq0$a;", MethodDecl.initName, "()V", "Ljava/lang/reflect/Type;", "returnType", "", "", "annotations", "Lru8;", "retrofit", "Llq0;", "get", "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Llq0;", "Companion", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiResponseCallAdapterFactory extends lq0.a {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory$Companion;", "", "()V", "create", "Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ApiResponseCallAdapterFactory create() {
            return new ApiResponseCallAdapterFactory(null);
        }

        private Companion() {
        }
    }

    public ApiResponseCallAdapterFactory(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final ApiResponseCallAdapterFactory create() {
        return INSTANCE.create();
    }

    @Override
    public lq0 get(Type returnType, Annotation[] annotations, ru8 retrofit) {
        y45.j(returnType, "returnType");
        y45.j(annotations, "annotations");
        y45.j(retrofit, "retrofit");
        if (!y45.e(lq0.a.getRawType(returnType), ApiResponse.class)) {
            return null;
        }
        if (!(returnType instanceof ParameterizedType)) {
            return new ApiResponseCallAdapter(Void.class);
        }
        Type parameterUpperBound = lq0.a.getParameterUpperBound(0, (ParameterizedType) returnType);
        y45.g(parameterUpperBound);
        return new ApiResponseCallAdapter(parameterUpperBound);
    }

    private ApiResponseCallAdapterFactory() {
    }
}
