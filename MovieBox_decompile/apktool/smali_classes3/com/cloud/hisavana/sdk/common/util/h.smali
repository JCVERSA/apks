.class public final Lcom/cloud/hisavana/sdk/common/util/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/common/util/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/util/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/common/util/h;->a:Lcom/cloud/hisavana/sdk/common/util/h;

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
.method public final a(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    .locals 2

    .line 1
    const-string v0, "defaultConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lc7/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setApplicationId(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdSeatType(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setOfflineAdCacheCount(Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setOfflineAdRequestCount(Ljava/lang/Integer;)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x1e

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setOfflineAdRequestTimeInterval(Ljava/lang/Integer;)V

    .line 39
    .line 40
    .line 41
    const/16 v0, 0x18

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setOfflineAdRequestTimeIntervalNoAd(Ljava/lang/Integer;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, -0x1

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdShowCountLimit(Ljava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCarouselTime(Ljava/lang/Integer;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCarouselCount(Ljava/lang/Integer;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setShowInterval(Ljava/lang/Integer;)V

    .line 75
    .line 76
    .line 77
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLastOfflineAdEnable(Ljava/lang/Boolean;)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setDefaultConfig(Ljava/lang/Boolean;)V

    .line 85
    .line 86
    .line 87
    return-object p1
.end method
