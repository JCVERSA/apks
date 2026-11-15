.class public final Lcom/transsion/mbwidget/data/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/mbwidget/data/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/mbwidget/data/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/mbwidget/data/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/mbwidget/data/d;->a:Lcom/transsion/mbwidget/data/d;

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
.method public final a(Lcom/transsion/mbwidget/data/SportMatch;)Z
    .locals 3

    .line 1
    const-string v0, "match"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/transsion/mbwidget/data/MatchStatus;->UNKNOWN:Lcom/transsion/mbwidget/data/MatchStatus;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Lcom/transsion/mbwidget/data/MatchStatus;->ENDED:Lcom/transsion/mbwidget/data/MatchStatus;

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :cond_1
    :goto_0
    return v2
.end method

.method public final b(Lcom/transsion/mbwidget/data/SportMatch;)Z
    .locals 8

    .line 1
    const-string v0, "match"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/transsion/mbwidget/data/MatchStatus;->UNKNOWN:Lcom/transsion/mbwidget/data/MatchStatus;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lcom/transsion/mbwidget/data/MatchStatus;->ING:Lcom/transsion/mbwidget/data/MatchStatus;

    .line 21
    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    move v2, v3

    .line 25
    :cond_0
    return v2

    .line 26
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    cmp-long v4, v0, v4

    .line 35
    .line 36
    if-ltz v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    const-wide/32 v6, 0x6ddd00

    .line 43
    .line 44
    .line 45
    add-long/2addr v4, v6

    .line 46
    cmp-long p1, v0, v4

    .line 47
    .line 48
    if-gtz p1, :cond_2

    .line 49
    .line 50
    move v2, v3

    .line 51
    :cond_2
    return v2
.end method
