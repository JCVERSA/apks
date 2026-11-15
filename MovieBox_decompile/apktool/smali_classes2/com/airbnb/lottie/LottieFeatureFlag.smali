.class public final enum Lcom/airbnb/lottie/LottieFeatureFlag;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/LottieFeatureFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/LottieFeatureFlag;

.field public static final enum MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;


# instance fields
.field public final minRequiredSdkVersion:I


# direct methods
.method private static synthetic $values()[Lcom/airbnb/lottie/LottieFeatureFlag;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 3
    .line 4
    sget-object v1, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

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
    new-instance v0, Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x13

    .line 5
    .line 6
    const-string v3, "MergePathsApi19"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/airbnb/lottie/LottieFeatureFlag;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 12
    .line 13
    invoke-static {}, Lcom/airbnb/lottie/LottieFeatureFlag;->$values()[Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/airbnb/lottie/LottieFeatureFlag;->$VALUES:[Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 18
    .line 19
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
    iput p3, p0, Lcom/airbnb/lottie/LottieFeatureFlag;->minRequiredSdkVersion:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/LottieFeatureFlag;
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/LottieFeatureFlag;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieFeatureFlag;->$VALUES:[Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/LottieFeatureFlag;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 8
    .line 9
    return-object v0
.end method
