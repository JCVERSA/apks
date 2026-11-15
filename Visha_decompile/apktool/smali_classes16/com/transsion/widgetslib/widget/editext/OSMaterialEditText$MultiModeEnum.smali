.class public final enum Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiModeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

.field public static final enum BOTTOM:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

.field public static final enum MIDDLE:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

.field public static final enum NORMAL:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

.field public static final enum TOP:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;


# direct methods
.method private static synthetic $values()[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;
    .locals 4

    sget-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->NORMAL:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    sget-object v1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->TOP:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    sget-object v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->MIDDLE:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    sget-object v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->BOTTOM:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->NORMAL:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    new-instance v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    const-string v1, "TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->TOP:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    new-instance v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    const-string v1, "MIDDLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->MIDDLE:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    new-instance v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->BOTTOM:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-static {}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->$values()[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->$VALUES:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;
    .locals 1

    const-class v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->$VALUES:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v0}, [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    return-object v0
.end method
