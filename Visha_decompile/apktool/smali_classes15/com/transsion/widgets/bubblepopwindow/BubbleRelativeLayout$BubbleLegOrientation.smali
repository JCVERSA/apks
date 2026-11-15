.class public final enum Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BubbleLegOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

.field public static final enum BOTTOM:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

.field public static final enum LEFT:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

.field public static final enum NONE:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

.field public static final enum RIGHT:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

.field public static final enum TOP:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;


# direct methods
.method private static synthetic $values()[Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;
    .locals 5

    sget-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->TOP:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    sget-object v1, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->LEFT:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    sget-object v2, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->RIGHT:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    sget-object v3, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->BOTTOM:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    sget-object v4, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->NONE:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->TOP:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    new-instance v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->LEFT:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    new-instance v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->RIGHT:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    new-instance v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->BOTTOM:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    new-instance v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    const-string v1, "NONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->NONE:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    invoke-static {}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->$values()[Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->$VALUES:[Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;
    .locals 1

    const-class v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    return-object p0
.end method

.method public static values()[Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;
    .locals 1

    sget-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->$VALUES:[Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    invoke-virtual {v0}, [Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    return-object v0
.end method
