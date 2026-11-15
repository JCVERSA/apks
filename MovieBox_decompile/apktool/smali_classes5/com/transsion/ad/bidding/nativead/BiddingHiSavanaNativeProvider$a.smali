.class public final Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;
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
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;-><init>()V

    return-void
.end method

.method private final a()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d()Lkotlin/Lazy;

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
    check-cast v0, Ljava/util/Map;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/a;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->a()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    new-instance v1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->v(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->w(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->a()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_2
    return-object v1
.end method
