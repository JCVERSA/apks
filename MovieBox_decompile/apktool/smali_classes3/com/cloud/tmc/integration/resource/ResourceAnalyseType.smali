.class public final enum Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;",
        ">;",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;

.field public static final enum INTERCEPT_RESOURCE:Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;


# instance fields
.field des:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;

    .line 3
    .line 4
    sget-object v1, Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;->INTERCEPT_RESOURCE:Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "[Render]:\u66ff\u6362\u8d44\u6e90:"

    .line 5
    .line 6
    const-string v3, "INTERCEPT_RESOURCE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;->INTERCEPT_RESOURCE:Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;

    .line 12
    .line 13
    invoke-static {}, Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;->$values()[Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;->$VALUES:[Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;->des:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;->$VALUES:[Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/resource/ResourceAnalyseType;->des:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
