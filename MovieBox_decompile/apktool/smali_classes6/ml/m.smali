.class public Lml/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/json/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/json/m;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 p4, 0x0

    .line 2
    if-eqz p3, :cond_2

    .line 3
    .line 4
    instance-of v0, p3, Ljava/lang/reflect/ParameterizedType;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p3, Ljava/lang/reflect/ParameterizedType;

    .line 9
    .line 10
    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    aget-object v0, v0, v1

    .line 16
    .line 17
    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const/4 v1, 0x1

    .line 22
    aget-object p3, p3, v1

    .line 23
    .line 24
    check-cast p2, Ljava/util/Map;

    .line 25
    .line 26
    invoke-virtual {p0}, Lml/m;->b()Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-class v2, Ljava/lang/Object;

    .line 31
    .line 32
    if-ne v0, v2, :cond_0

    .line 33
    .line 34
    move-object v0, p4

    .line 35
    :cond_0
    if-ne p3, v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p4, p3

    .line 39
    :goto_0
    invoke-virtual {p1, p2, v1, v0, p4}, Lcom/transsion/json/m;->l(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_2
    check-cast p2, Ljava/util/Map;

    .line 45
    .line 46
    invoke-virtual {p0}, Lml/m;->b()Ljava/util/HashMap;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p1, p2, p3, p4, p4}, Lcom/transsion/json/m;->l(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method protected b()Ljava/util/HashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
