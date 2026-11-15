.class final enum Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MOVING:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

.field public static final enum NONE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

.field public static final enum SCALE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

.field public static final synthetic b:[Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    const-string v1, "SCALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->SCALE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    new-instance v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    const-string v1, "MOVING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->MOVING:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    new-instance v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->NONE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    invoke-static {}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->a()[Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    move-result-object v0

    sput-object v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->b:[Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;
    .locals 3

    sget-object v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->SCALE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    sget-object v1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->MOVING:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    sget-object v2, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->NONE:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;
    .locals 1

    const-class v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    return-object p0
.end method

.method public static values()[Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;
    .locals 1

    sget-object v0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->b:[Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    invoke-virtual {v0}, [Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$TouchMode;

    return-object v0
.end method
