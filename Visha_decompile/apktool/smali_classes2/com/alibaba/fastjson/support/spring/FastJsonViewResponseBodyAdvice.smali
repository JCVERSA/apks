.class public Lcom/alibaba/fastjson/support/spring/FastJsonViewResponseBodyAdvice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/springframework/core/annotation/Order;
.end annotation

.annotation runtime Lorg/springframework/web/bind/annotation/ControllerAdvice;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrCreateContainer(Ljava/lang/Object;)Lcom/alibaba/fastjson/support/spring/FastJsonContainer;
    .locals 0

    instance-of p0, p1, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public beforeBodyWrite(Ljava/lang/Object;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/MediaType;Ljava/lang/Class;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Lcom/alibaba/fastjson/support/spring/FastJsonContainer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/springframework/core/MethodParameter;",
            "Lorg/springframework/http/MediaType;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/springframework/http/converter/HttpMessageConverter<",
            "*>;>;",
            "Lorg/springframework/http/server/ServerHttpRequest;",
            "Lorg/springframework/http/server/ServerHttpResponse;",
            ")",
            "Lcom/alibaba/fastjson/support/spring/FastJsonContainer;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonViewResponseBodyAdvice;->getOrCreateContainer(Ljava/lang/Object;)Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    move-result-object p1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/support/spring/FastJsonViewResponseBodyAdvice;->beforeBodyWriteInternal(Lcom/alibaba/fastjson/support/spring/FastJsonContainer;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V

    return-object p1
.end method

.method public bridge synthetic beforeBodyWrite(Ljava/lang/Object;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/MediaType;Ljava/lang/Class;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson/support/spring/FastJsonViewResponseBodyAdvice;->beforeBodyWrite(Ljava/lang/Object;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/MediaType;Ljava/lang/Class;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    move-result-object p0

    return-object p0
.end method

.method public beforeBodyWriteInternal(Lcom/alibaba/fastjson/support/spring/FastJsonContainer;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V
    .locals 3

    const-class p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;

    invoke-virtual {p3, p0}, Lorg/springframework/core/MethodParameter;->getMethodAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;

    invoke-interface {p0}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->include()[Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;

    move-result-object p2

    invoke-interface {p0}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->exclude()[Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;

    move-result-object p0

    new-instance p3, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    invoke-direct {p3}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;-><init>()V

    array-length p4, p2

    const/4 p5, 0x0

    move v0, p5

    :goto_0
    if-ge v0, p4, :cond_0

    aget-object v1, p2, v0

    invoke-interface {v1}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;->clazz()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;->props()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->addFilter(Ljava/lang/Class;[Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p0

    move p4, p5

    :goto_1
    if-ge p4, p2, :cond_1

    aget-object v0, p0, p4

    invoke-interface {v0}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;->clazz()Ljava/lang/Class;

    move-result-object v1

    new-array v2, p5, [Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->addFilter(Ljava/lang/Class;[Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;->props()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->addExcludes([Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;->setFilters(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;)V

    return-void
.end method

.method public supports(Lorg/springframework/core/MethodParameter;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/core/MethodParameter;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/springframework/http/converter/HttpMessageConverter<",
            "*>;>;)Z"
        }
    .end annotation

    const-class p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;

    invoke-virtual {p1, p0}, Lorg/springframework/core/MethodParameter;->hasMethodAnnotation(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
