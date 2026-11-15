.class public Llod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltpd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lyod;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    instance-of v0, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    check-cast p3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p3

    const/4 v1, 0x1

    aget-object p3, p3, v1

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0}, Llod;->b()Ljava/util/HashMap;

    move-result-object p0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    move-object v0, p4

    :cond_0
    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p4, p3

    :goto_0
    invoke-virtual {p1, p2, p0, v0, p4}, Lyod;->h(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0}, Llod;->b()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p2, p0, p4, p4}, Lyod;->h(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/util/HashMap;
    .locals 0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method
