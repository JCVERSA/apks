.class public final enum Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/TouchWindowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENUM_CHANGE_PLAY_SPEED_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

.field public static final enum NO_CHANGE:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

.field public static final enum PLAY_SPEED_CHANGING:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

.field public static final enum PLAY_SPEED_FIXED:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;


# instance fields
.field public value:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;
    .locals 3

    sget-object v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->NO_CHANGE:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    sget-object v1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->PLAY_SPEED_FIXED:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    sget-object v2, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->PLAY_SPEED_CHANGING:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    const-string v1, "NO_CHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->NO_CHANGE:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    new-instance v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    const-string v1, "PLAY_SPEED_FIXED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->PLAY_SPEED_FIXED:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    new-instance v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    const-string v1, "PLAY_SPEED_CHANGING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->PLAY_SPEED_CHANGING:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    invoke-static {}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->$values()[Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    move-result-object v0

    sput-object v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->$VALUES:[Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

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

    iput p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;
    .locals 1

    const-class v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    return-object p0
.end method

.method public static values()[Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;
    .locals 1

    sget-object v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->$VALUES:[Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    invoke-virtual {v0}, [Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    return-object v0
.end method
