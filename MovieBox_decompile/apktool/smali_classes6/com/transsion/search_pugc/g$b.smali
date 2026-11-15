.class public final Lcom/transsion/search_pugc/g$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/search_pugc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/g$b;-><init>()V

    return-void
.end method

.method private final c()Lcom/transsion/search_pugc/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search_pugc/g;->b()Lkotlin/Lazy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/transsion/search_pugc/g;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Landroidx/lifecycle/u;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 8
    .line 9
    check-cast p1, Landroidx/lifecycle/u;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/search_pugc/g$b;->b(Landroidx/lifecycle/u;)Lcom/transsion/search_pugc/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 17
    .line 18
    invoke-direct {p1}, Lcom/transsion/search_pugc/g$b;->c()Lcom/transsion/search_pugc/g;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    if-nez p1, :cond_2

    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/transsion/search_pugc/g$b;->c()Lcom/transsion/search_pugc/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_2
    return-object p1
.end method

.method public final b(Landroidx/lifecycle/u;)Lcom/transsion/search_pugc/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search_pugc/g;->c()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/transsion/search_pugc/g;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/search_pugc/g$b;->c()Lcom/transsion/search_pugc/g;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    return-object p1
.end method

.method public final d(Landroidx/lifecycle/u;)Lcom/transsion/search_pugc/g;
    .locals 4

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/transsion/search_pugc/g;->c()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/transsion/search_pugc/g;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p1, v2}, Lcom/transsion/search_pugc/g;-><init>(Landroidx/lifecycle/u;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Lcom/transsion/search_pugc/g$b$a;

    .line 27
    .line 28
    invoke-direct {v3}, Lcom/transsion/search_pugc/g$b$a;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    check-cast v1, Lcom/transsion/search_pugc/g;

    .line 38
    .line 39
    return-object v1
.end method
