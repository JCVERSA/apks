.class public final Lcom/transsion/mbwidget/data/MatchStatus$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mbwidget/data/MatchStatus;
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
    invoke-direct {p0}, Lcom/transsion/mbwidget/data/MatchStatus$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/transsion/mbwidget/data/MatchStatus;
    .locals 2

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, -0x1b71cfeb

    .line 8
    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const v1, 0x158c97fd

    .line 13
    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const v1, 0x34b6ce14

    .line 18
    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "MatchNotStart"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object p1, Lcom/transsion/mbwidget/data/MatchStatus;->NOT_START:Lcom/transsion/mbwidget/data/MatchStatus;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const-string v0, "MatchIng"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    sget-object p1, Lcom/transsion/mbwidget/data/MatchStatus;->ING:Lcom/transsion/mbwidget/data/MatchStatus;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    const-string v0, "MatchEnded"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_5

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    sget-object p1, Lcom/transsion/mbwidget/data/MatchStatus;->ENDED:Lcom/transsion/mbwidget/data/MatchStatus;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_6
    :goto_0
    sget-object p1, Lcom/transsion/mbwidget/data/MatchStatus;->UNKNOWN:Lcom/transsion/mbwidget/data/MatchStatus;

    .line 60
    .line 61
    :goto_1
    return-object p1
.end method
