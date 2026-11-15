.class public final enum Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field public static final enum INIT:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field public static final enum STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field public static final enum STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field public static final enum STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field public static final enum STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;


# instance fields
.field private final step:I


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 3
    .line 4
    sget-object v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->INIT:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 2
    .line 3
    const-string v1, "INIT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->INIT:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 10
    .line 11
    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/16 v2, 0x1e

    .line 15
    .line 16
    const-string v3, "STEP_30"

    .line 17
    .line 18
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 22
    .line 23
    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    const/16 v2, 0x32

    .line 27
    .line 28
    const-string v3, "STEP_50"

    .line 29
    .line 30
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 34
    .line 35
    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    const/16 v2, 0x46

    .line 39
    .line 40
    const-string v3, "STEP_70"

    .line 41
    .line 42
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 46
    .line 47
    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    const/16 v2, 0x64

    .line 51
    .line 52
    const-string v3, "STEP_100"

    .line 53
    .line 54
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 58
    .line 59
    invoke-static {}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->$values()[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->$VALUES:[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 64
    .line 65
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

    iput p3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->step:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->$VALUES:[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getStep()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->step:I

    .line 2
    .line 3
    return v0
.end method
