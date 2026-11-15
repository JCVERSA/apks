.class public final enum Lcom/cloud/tmc/integration/performance/WarmupType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/integration/performance/WarmupType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/WarmupType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;II)V",
        "getType",
        "()I",
        "NORMAL_WORKER",
        "NORMAL_RENDER",
        "INNER_WORKER",
        "INNER_RENNDER",
        "com.cloud.tmc.integration"
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
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/integration/performance/WarmupType;

.field public static final enum INNER_RENNDER:Lcom/cloud/tmc/integration/performance/WarmupType;

.field public static final enum INNER_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

.field public static final enum NORMAL_RENDER:Lcom/cloud/tmc/integration/performance/WarmupType;

.field public static final enum NORMAL_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/integration/performance/WarmupType;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 3
    .line 4
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->NORMAL_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->NORMAL_RENDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_RENNDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 2
    .line 3
    const-string v1, "NORMAL_WORKER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/performance/WarmupType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/cloud/tmc/integration/performance/WarmupType;->NORMAL_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 11
    .line 12
    new-instance v0, Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 13
    .line 14
    const-string v1, "NORMAL_RENDER"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/tmc/integration/performance/WarmupType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/cloud/tmc/integration/performance/WarmupType;->NORMAL_RENDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 21
    .line 22
    new-instance v0, Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 23
    .line 24
    const-string v1, "INNER_WORKER"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/performance/WarmupType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 31
    .line 32
    new-instance v0, Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 33
    .line 34
    const-string v1, "INNER_RENNDER"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/tmc/integration/performance/WarmupType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_RENNDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 41
    .line 42
    invoke-static {}, Lcom/cloud/tmc/integration/performance/WarmupType;->$values()[Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/cloud/tmc/integration/performance/WarmupType;->$VALUES:[Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 47
    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/cloud/tmc/integration/performance/WarmupType;->type:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/performance/WarmupType;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/integration/performance/WarmupType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/performance/WarmupType;->$VALUES:[Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/performance/WarmupType;->type:I

    .line 2
    .line 3
    return v0
.end method
