.class public final enum Lcom/transsion/widgets/ratingbar/RatingStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/widgets/ratingbar/RatingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/widgets/ratingbar/RatingStatus;

.field public static final enum DISABLE:Lcom/transsion/widgets/ratingbar/RatingStatus;

.field public static final enum ENABLE:Lcom/transsion/widgets/ratingbar/RatingStatus;


# instance fields
.field mStatus:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/widgets/ratingbar/RatingStatus;
    .locals 2

    sget-object v0, Lcom/transsion/widgets/ratingbar/RatingStatus;->DISABLE:Lcom/transsion/widgets/ratingbar/RatingStatus;

    sget-object v1, Lcom/transsion/widgets/ratingbar/RatingStatus;->ENABLE:Lcom/transsion/widgets/ratingbar/RatingStatus;

    filled-new-array {v0, v1}, [Lcom/transsion/widgets/ratingbar/RatingStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/widgets/ratingbar/RatingStatus;

    const-string v1, "DISABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/widgets/ratingbar/RatingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/widgets/ratingbar/RatingStatus;->DISABLE:Lcom/transsion/widgets/ratingbar/RatingStatus;

    new-instance v0, Lcom/transsion/widgets/ratingbar/RatingStatus;

    const-string v1, "ENABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/widgets/ratingbar/RatingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/widgets/ratingbar/RatingStatus;->ENABLE:Lcom/transsion/widgets/ratingbar/RatingStatus;

    invoke-static {}, Lcom/transsion/widgets/ratingbar/RatingStatus;->$values()[Lcom/transsion/widgets/ratingbar/RatingStatus;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgets/ratingbar/RatingStatus;->$VALUES:[Lcom/transsion/widgets/ratingbar/RatingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/widgets/ratingbar/RatingStatus;->mStatus:I

    return-void
.end method

.method public static getStatus(I)Lcom/transsion/widgets/ratingbar/RatingStatus;
    .locals 2

    sget-object v0, Lcom/transsion/widgets/ratingbar/RatingStatus;->DISABLE:Lcom/transsion/widgets/ratingbar/RatingStatus;

    iget v1, v0, Lcom/transsion/widgets/ratingbar/RatingStatus;->mStatus:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/widgets/ratingbar/RatingStatus;->ENABLE:Lcom/transsion/widgets/ratingbar/RatingStatus;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/widgets/ratingbar/RatingStatus;
    .locals 1

    const-class v0, Lcom/transsion/widgets/ratingbar/RatingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/ratingbar/RatingStatus;

    return-object p0
.end method

.method public static values()[Lcom/transsion/widgets/ratingbar/RatingStatus;
    .locals 1

    sget-object v0, Lcom/transsion/widgets/ratingbar/RatingStatus;->$VALUES:[Lcom/transsion/widgets/ratingbar/RatingStatus;

    invoke-virtual {v0}, [Lcom/transsion/widgets/ratingbar/RatingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/widgets/ratingbar/RatingStatus;

    return-object v0
.end method
