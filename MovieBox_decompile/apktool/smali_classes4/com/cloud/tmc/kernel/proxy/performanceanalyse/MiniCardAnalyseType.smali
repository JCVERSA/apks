.class public final enum Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;",
        ">;",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;",
        "",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;",
        "objectId",
        "",
        "objectNameEn",
        "objectNameZh",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getObjectId",
        "()Ljava/lang/String;",
        "getObjectNameEn",
        "getObjectNameZh",
        "START_UP",
        "UPDATE_REQUEST",
        "CARD_EXPOSURE",
        "GO_TO_MY_BYTEAPP",
        "LATEST_USE_EXPOSURE",
        "LATEST_USE_CLICK",
        "RECOMMEND_EXPOSURE",
        "RECOMMEND_CLICK",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum CARD_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum GO_TO_MY_BYTEAPP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum LATEST_USE_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum LATEST_USE_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum RECOMMEND_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum RECOMMEND_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum START_UP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

.field public static final enum UPDATE_REQUEST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;


# instance fields
.field private final objectId:Ljava/lang/String;

.field private final objectNameEn:Ljava/lang/String;

.field private final objectNameZh:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 4
    .line 5
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->START_UP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->UPDATE_REQUEST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->CARD_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->GO_TO_MY_BYTEAPP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->LATEST_USE_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->LATEST_USE_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->RECOMMEND_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->RECOMMEND_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 2
    .line 3
    const-string v4, "startup"

    .line 4
    .line 5
    const-string v5, "\u5361\u7247\u542f\u52a8"

    .line 6
    .line 7
    const-string v1, "START_UP"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "800"

    .line 11
    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->START_UP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 17
    .line 18
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 19
    .line 20
    const-string v11, "update_request"

    .line 21
    .line 22
    const-string v12, "\u66f4\u65b0\u8bf7\u6c42"

    .line 23
    .line 24
    const-string v8, "UPDATE_REQUEST"

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    const-string v10, "801"

    .line 28
    .line 29
    move-object v7, v0

    .line 30
    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->UPDATE_REQUEST:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 34
    .line 35
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 36
    .line 37
    const-string v5, "card_exposure"

    .line 38
    .line 39
    const-string v6, "\u5361\u7247\u66dd\u5149"

    .line 40
    .line 41
    const-string v2, "CARD_EXPOSURE"

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    const-string v4, "802"

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->CARD_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 51
    .line 52
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 53
    .line 54
    const-string v11, "go_to_my_byteapp"

    .line 55
    .line 56
    const-string v12, "\u524d\u5f80 My ByteApp"

    .line 57
    .line 58
    const-string v8, "GO_TO_MY_BYTEAPP"

    .line 59
    .line 60
    const/4 v9, 0x3

    .line 61
    const-string v10, "803"

    .line 62
    .line 63
    move-object v7, v0

    .line 64
    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->GO_TO_MY_BYTEAPP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 68
    .line 69
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 70
    .line 71
    const-string v5, "latest_use_exposure"

    .line 72
    .line 73
    const-string v6, "\u6700\u8fd1\u4f7f\u7528\u533a\u57df\u66dd\u5149"

    .line 74
    .line 75
    const-string v2, "LATEST_USE_EXPOSURE"

    .line 76
    .line 77
    const/4 v3, 0x4

    .line 78
    const-string v4, "804"

    .line 79
    .line 80
    move-object v1, v0

    .line 81
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->LATEST_USE_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 85
    .line 86
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 87
    .line 88
    const-string v11, "latest_use_click"

    .line 89
    .line 90
    const-string v12, "\u6700\u8fd1\u4f7f\u7528\u5c0f\u7a0b\u5e8f\u70b9\u51fb"

    .line 91
    .line 92
    const-string v8, "LATEST_USE_CLICK"

    .line 93
    .line 94
    const/4 v9, 0x5

    .line 95
    const-string v10, "805"

    .line 96
    .line 97
    move-object v7, v0

    .line 98
    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->LATEST_USE_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 102
    .line 103
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 104
    .line 105
    const-string v5, "recommend_exposure"

    .line 106
    .line 107
    const-string v6, "\u63a8\u8350\u533a\u57df\u66dd\u5149"

    .line 108
    .line 109
    const-string v2, "RECOMMEND_EXPOSURE"

    .line 110
    .line 111
    const/4 v3, 0x6

    .line 112
    const-string v4, "806"

    .line 113
    .line 114
    move-object v1, v0

    .line 115
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->RECOMMEND_EXPOSURE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 119
    .line 120
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 121
    .line 122
    const-string v11, "recommend_click"

    .line 123
    .line 124
    const-string v12, "\u63a8\u8350\u5c0f\u7a0b\u5e8f\u70b9\u51fb"

    .line 125
    .line 126
    const-string v8, "RECOMMEND_CLICK"

    .line 127
    .line 128
    const/4 v9, 0x7

    .line 129
    const-string v10, "807"

    .line 130
    .line 131
    move-object v7, v0

    .line 132
    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->RECOMMEND_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 136
    .line 137
    invoke-static {}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->$values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 142
    .line 143
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectNameEn:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectNameZh:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getObjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getObjectNameEn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectNameEn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getObjectNameZh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/MiniCardAnalyseType;->objectNameZh:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
