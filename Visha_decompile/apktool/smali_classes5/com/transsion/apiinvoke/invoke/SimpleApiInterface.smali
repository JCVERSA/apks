.class public Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiInterface;


# instance fields
.field private mApiClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mApiObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/IApiService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->mApiClazz:Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->mApiObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->mApiObject:Ljava/lang/Object;

    .line 6
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->mApiClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getApiMethod(Ljava/lang/Class;Ljava/lang/String;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    array-length p2, p2

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    array-length v2, p0

    move v3, v1

    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v4, p0, v1

    const-class v5, Lcom/transsion/apiinvoke/common/annotation/RouterMethod;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/transsion/apiinvoke/common/annotation/RouterMethod;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/transsion/apiinvoke/common/annotation/RouterMethod;->methodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    if-ne v6, p2, :cond_4

    return-object v4

    :cond_4
    array-length v6, v5

    if-lt v6, v3, :cond_5

    array-length v0, v5

    move v3, v0

    move-object v0, v4

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return-object v0
.end method


# virtual methods
.method public apiInvoke(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getRequestParameter()[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->mApiClazz:Ljava/lang/Class;

    if-eqz v2, :cond_2

    invoke-static {v2, v1, p1}, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->getApiMethod(Ljava/lang/Class;Ljava/lang/String;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, p1, p2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;

    iget-object v3, p0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->mApiObject:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, p1, p2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->success(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->mApiClazz:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/invoke/ApiMethodException;->invokeMethodError(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiMethodException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {v1}, Lcom/transsion/apiinvoke/invoke/ApiMethodException;->onMethodNotFound(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiMethodException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/transsion/apiinvoke/invoke/ApiMethodException;->onApiClassNotFound(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiMethodException;

    move-result-object p0

    throw p0
.end method

.method public apiInvokeAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/apiinvoke/invoke/ApiMethodException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getRequestParameter()[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->mApiClazz:Ljava/lang/Class;

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->onClassNotFound(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->mApiClazz:Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->getApiMethod(Ljava/lang/Class;Ljava/lang/String;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->mApiClazz:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->onServiceMethodNotFound(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, v1, p2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;->mApiObject:Ljava/lang/Object;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    move-object p0, v2

    :goto_0
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->invokeAsync(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_4

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->invokeError(Ljava/lang/String;[Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_4
    :goto_1
    return-void
.end method
