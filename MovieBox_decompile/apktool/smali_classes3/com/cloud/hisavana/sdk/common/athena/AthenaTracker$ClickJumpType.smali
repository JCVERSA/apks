.class public final enum Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickJumpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

.field public static final enum GP:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

.field public static final enum OTHER:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

.field public static final enum PS_FULL_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

.field public static final enum PS_HALF_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

.field public static final enum PULL_LIVE:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;


# instance fields
.field private final rawValue:I


# direct methods
.method private static synthetic $values()[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 3
    .line 4
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PS_FULL_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PS_HALF_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->GP:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PULL_LIVE:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->OTHER:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 2
    .line 3
    const-string v1, "PS_FULL_SCREEN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PS_FULL_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 10
    .line 11
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 12
    .line 13
    const-string v1, "PS_HALF_SCREEN"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PS_HALF_SCREEN:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 20
    .line 21
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 22
    .line 23
    const-string v1, "GP"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->GP:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 31
    .line 32
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 33
    .line 34
    const-string v1, "PULL_LIVE"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->PULL_LIVE:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 41
    .line 42
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 43
    .line 44
    const-string v1, "OTHER"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->OTHER:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 51
    .line 52
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->$values()[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->$VALUES:[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 57
    .line 58
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
    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->rawValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->$VALUES:[Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public rawValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;->rawValue:I

    .line 2
    .line 3
    return v0
.end method
