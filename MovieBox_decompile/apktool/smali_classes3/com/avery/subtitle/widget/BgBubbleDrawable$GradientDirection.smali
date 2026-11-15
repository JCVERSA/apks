.class public final enum Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avery/subtitle/widget/BgBubbleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GradientDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

.field public static final enum HORIZONTAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

.field public static final enum VERTICAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 3
    .line 4
    sget-object v1, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->HORIZONTAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->VERTICAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 2
    .line 3
    const-string v1, "HORIZONTAL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->HORIZONTAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 11
    .line 12
    new-instance v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 13
    .line 14
    const-string v1, "VERTICAL"

    .line 15
    .line 16
    invoke-direct {v0, v1, v3, v2}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->VERTICAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 20
    .line 21
    invoke-static {}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->$values()[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->$VALUES:[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 26
    .line 27
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
    iput p3, p0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->mValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static getDefault()Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
    .locals 1

    .line 1
    sget-object v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->VERTICAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 2
    .line 3
    return-object v0
.end method

.method public static mapIntToValue(I)Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
    .locals 5

    .line 1
    invoke-static {}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->values()[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->getIntValue()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne p0, v4, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->getDefault()Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
    .locals 1

    .line 1
    const-class v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
    .locals 1

    .line 1
    sget-object v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->$VALUES:[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->mValue:I

    .line 2
    .line 3
    return v0
.end method
