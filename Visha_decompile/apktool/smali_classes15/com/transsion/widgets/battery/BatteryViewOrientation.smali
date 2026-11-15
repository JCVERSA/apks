.class public final enum Lcom/transsion/widgets/battery/BatteryViewOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/widgets/battery/BatteryViewOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/widgets/battery/BatteryViewOrientation;

.field public static final enum HORIZONTAL_LEFT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

.field public static final enum HORIZONTAL_RIGHT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

.field public static final enum VERTICAL_BOTTOM:Lcom/transsion/widgets/battery/BatteryViewOrientation;

.field public static final enum VERTICAL_TOP:Lcom/transsion/widgets/battery/BatteryViewOrientation;


# direct methods
.method private static synthetic $values()[Lcom/transsion/widgets/battery/BatteryViewOrientation;
    .locals 4

    sget-object v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;->HORIZONTAL_LEFT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    sget-object v1, Lcom/transsion/widgets/battery/BatteryViewOrientation;->HORIZONTAL_RIGHT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    sget-object v2, Lcom/transsion/widgets/battery/BatteryViewOrientation;->VERTICAL_TOP:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    sget-object v3, Lcom/transsion/widgets/battery/BatteryViewOrientation;->VERTICAL_BOTTOM:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/widgets/battery/BatteryViewOrientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;

    const-string v1, "HORIZONTAL_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgets/battery/BatteryViewOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;->HORIZONTAL_LEFT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    new-instance v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;

    const-string v1, "HORIZONTAL_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgets/battery/BatteryViewOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;->HORIZONTAL_RIGHT:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    new-instance v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;

    const-string v1, "VERTICAL_TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgets/battery/BatteryViewOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;->VERTICAL_TOP:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    new-instance v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;

    const-string v1, "VERTICAL_BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgets/battery/BatteryViewOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;->VERTICAL_BOTTOM:Lcom/transsion/widgets/battery/BatteryViewOrientation;

    invoke-static {}, Lcom/transsion/widgets/battery/BatteryViewOrientation;->$values()[Lcom/transsion/widgets/battery/BatteryViewOrientation;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;->$VALUES:[Lcom/transsion/widgets/battery/BatteryViewOrientation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/widgets/battery/BatteryViewOrientation;
    .locals 1

    const-class v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/battery/BatteryViewOrientation;

    return-object p0
.end method

.method public static values()[Lcom/transsion/widgets/battery/BatteryViewOrientation;
    .locals 1

    sget-object v0, Lcom/transsion/widgets/battery/BatteryViewOrientation;->$VALUES:[Lcom/transsion/widgets/battery/BatteryViewOrientation;

    invoke-virtual {v0}, [Lcom/transsion/widgets/battery/BatteryViewOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/widgets/battery/BatteryViewOrientation;

    return-object v0
.end method
