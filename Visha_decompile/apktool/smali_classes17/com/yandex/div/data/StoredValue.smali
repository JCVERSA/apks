.class public abstract Lcom/yandex/div/data/StoredValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/data/StoredValue$a;,
        Lcom/yandex/div/data/StoredValue$b;,
        Lcom/yandex/div/data/StoredValue$c;,
        Lcom/yandex/div/data/StoredValue$d;,
        Lcom/yandex/div/data/StoredValue$e;,
        Lcom/yandex/div/data/StoredValue$f;,
        Lcom/yandex/div/data/StoredValue$g;,
        Lcom/yandex/div/data/StoredValue$Type;,
        Lcom/yandex/div/data/StoredValue$h;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/data/StoredValue;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final b()Lcom/yandex/div/data/StoredValue$Type;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$g;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->STRING:Lcom/yandex/div/data/StoredValue$Type;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$f;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->INTEGER:Lcom/yandex/div/data/StoredValue$Type;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$b;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->BOOLEAN:Lcom/yandex/div/data/StoredValue$Type;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$e;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->NUMBER:Lcom/yandex/div/data/StoredValue$Type;

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$c;

    if-eqz v0, :cond_4

    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->COLOR:Lcom/yandex/div/data/StoredValue$Type;

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$h;

    if-eqz v0, :cond_5

    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->URL:Lcom/yandex/div/data/StoredValue$Type;

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$a;

    if-eqz v0, :cond_6

    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->ARRAY:Lcom/yandex/div/data/StoredValue$Type;

    goto :goto_0

    :cond_6
    instance-of p0, p0, Lcom/yandex/div/data/StoredValue$d;

    if-eqz p0, :cond_7

    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->DICT:Lcom/yandex/div/data/StoredValue$Type;

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$g;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div/data/StoredValue$g;

    invoke-virtual {p0}, Lcom/yandex/div/data/StoredValue$g;->d()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$f;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div/data/StoredValue$f;

    invoke-virtual {p0}, Lcom/yandex/div/data/StoredValue$f;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$b;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div/data/StoredValue$b;

    invoke-virtual {p0}, Lcom/yandex/div/data/StoredValue$b;->d()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$e;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div/data/StoredValue$e;

    invoke-virtual {p0}, Lcom/yandex/div/data/StoredValue$e;->d()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$c;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div/data/StoredValue$c;

    invoke-virtual {p0}, Lcom/yandex/div/data/StoredValue$c;->d()I

    move-result p0

    invoke-static {p0}, Lk81;->c(I)Lk81;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$h;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/yandex/div/data/StoredValue$h;

    invoke-virtual {p0}, Lcom/yandex/div/data/StoredValue$h;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvib;->a(Ljava/lang/String;)Lvib;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$a;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div/data/StoredValue$a;

    invoke-virtual {p0}, Lcom/yandex/div/data/StoredValue$a;->d()Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div/data/StoredValue$d;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/yandex/div/data/StoredValue$d;

    invoke-virtual {p0}, Lcom/yandex/div/data/StoredValue$d;->d()Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
