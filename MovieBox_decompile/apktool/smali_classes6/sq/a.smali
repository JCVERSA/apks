.class public final Lsq/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lsq/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsq/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lsq/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsq/a;->a:Lsq/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_5

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, -0x17df8fd0

    .line 13
    .line 14
    .line 15
    if-eq v0, v1, :cond_3

    .line 16
    .line 17
    const v1, -0x37783a3

    .line 18
    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const v1, 0x5c4a96bd

    .line 23
    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "VideoForYouListScene"

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_4

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "ShortTvDiscoverMostTrendingScene"

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance p2, Lwq/t;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Lwq/t;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const-string v0, "ShortTvListScene"

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_4

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    new-instance p2, Lwq/a;

    .line 62
    .line 63
    invoke-direct {p2, p1}, Lwq/a;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    :goto_0
    const/4 p2, 0x0

    .line 68
    :goto_1
    return-object p2
.end method
