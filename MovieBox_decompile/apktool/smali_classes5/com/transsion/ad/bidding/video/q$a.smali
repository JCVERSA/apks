.class public final Lcom/transsion/ad/bidding/video/q$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/bidding/video/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/transsion/ad/bidding/video/q$a;-><init>()V

    return-void
.end method

.method private final a()Ljava/util/HashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/bidding/video/q;->s()Lkotlin/Lazy;

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
    check-cast v0, Ljava/util/HashMap;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/transsion/ad/bidding/video/q;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/a;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/video/q$a;->a()Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/transsion/ad/bidding/video/q;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    new-instance v0, Lcom/transsion/ad/bidding/video/q;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/transsion/ad/bidding/video/q;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->o(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/transsion/ad/bidding/video/q$a;->a()Ljava/util/HashMap;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2
    return-object v0
.end method
