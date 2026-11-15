.class public final enum Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum BOTTOM_TOOLBAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum BUTTON:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum DEFAULT:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum DIALOG:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum FOB:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum FOOT_OPERATION_BAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum POPUP_WINDOW:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum SEARCH_BAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum SEGMENTED_TAB:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum TEXT_SELECTOR_COLLAPSE:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum TEXT_SELECTOR_EXPAND:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public static final enum TOOL_BAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;


# instance fields
.field private final k1:F

.field private final k2:F

.field private final k3:F

.field private final k4:F

.field private final k5:F

.field private final k6:F

.field private final mSpringDamping:F

.field private final mSpringStiffness:F


# direct methods
.method private static synthetic $values()[Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;
    .locals 12

    sget-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->FOB:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    sget-object v1, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->BUTTON:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    sget-object v2, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->SEARCH_BAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    sget-object v3, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->TOOL_BAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    sget-object v4, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->BOTTOM_TOOLBAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    sget-object v5, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->FOOT_OPERATION_BAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    sget-object v6, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->SEGMENTED_TAB:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    sget-object v7, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->DIALOG:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    sget-object v8, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->POPUP_WINDOW:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    sget-object v9, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->TEXT_SELECTOR_COLLAPSE:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    sget-object v10, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->TEXT_SELECTOR_EXPAND:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    sget-object v11, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->DEFAULT:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    filled-new-array/range {v0 .. v11}, [Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 23

    new-instance v11, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const v9, 0x3cf5c28f    # 0.03f

    const v10, 0x3d23d70a    # 0.04f

    const-string v1, "FOB"

    const/4 v2, 0x0

    const/high16 v3, 0x43160000    # 150.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3ccccccd    # 0.025f

    const v6, 0x3ccccccd    # 0.025f

    const v7, 0x3cf5c28f    # 0.03f

    const v8, 0x3d23d70a    # 0.04f

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v11, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->FOB:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const v21, 0x3b83126f    # 0.004f

    const v22, 0x3ccccccd    # 0.025f

    const-string v13, "BUTTON"

    const/4 v14, 0x1

    const/high16 v15, 0x437a0000    # 250.0f

    const v16, 0x3f19999a    # 0.6f

    const v17, 0x3cf5c28f    # 0.03f

    const v18, 0x3c449ba6    # 0.012f

    const v19, 0x3a03126f    # 5.0E-4f

    const v20, 0x3c75c28f    # 0.015f

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->BUTTON:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const v10, 0x3be56042    # 0.007f

    const v11, 0x3ccccccd    # 0.025f

    const-string v2, "SEARCH_BAR"

    const/4 v3, 0x2

    const/high16 v4, 0x437a0000    # 250.0f

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3cf5c28f    # 0.03f

    const v7, 0x3c75c28f    # 0.015f

    const v8, 0x399d4952    # 3.0E-4f

    const v9, 0x3c23d70a    # 0.01f

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->SEARCH_BAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const v21, 0x3cf5c28f    # 0.03f

    const v22, 0x3d23d70a    # 0.04f

    const-string v13, "TOOL_BAR"

    const/4 v14, 0x3

    const/high16 v15, 0x43160000    # 150.0f

    const/high16 v16, 0x3f000000    # 0.5f

    const v17, 0x3ccccccd    # 0.025f

    const v18, 0x3ccccccd    # 0.025f

    const v19, 0x3cf5c28f    # 0.03f

    const v20, 0x3d23d70a    # 0.04f

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->TOOL_BAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const-string v2, "BOTTOM_TOOLBAR"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->BOTTOM_TOOLBAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const v21, 0x3b83126f    # 0.004f

    const v22, 0x3ccccccd    # 0.025f

    const-string v13, "FOOT_OPERATION_BAR"

    const/4 v14, 0x5

    const/high16 v15, 0x437a0000    # 250.0f

    const v16, 0x3f19999a    # 0.6f

    const v17, 0x3cf5c28f    # 0.03f

    const v18, 0x3c449ba6    # 0.012f

    const v19, 0x3a03126f    # 5.0E-4f

    const v20, 0x3c75c28f    # 0.015f

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->FOOT_OPERATION_BAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const-string v2, "SEGMENTED_TAB"

    const/4 v3, 0x6

    const v8, 0x3951b717    # 2.0E-4f

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->SEGMENTED_TAB:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const v21, 0x399d4952    # 3.0E-4f

    const v22, 0x3a83126f    # 0.001f

    const-string v13, "DIALOG"

    const/4 v14, 0x7

    const v17, 0x3c23d70a    # 0.01f

    const v18, 0x3c23d70a    # 0.01f

    const v19, 0x3b03126f    # 0.002f

    const v20, 0x3b83126f    # 0.004f

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->DIALOG:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const v10, 0x3b449ba6    # 0.003f

    const v11, 0x3b449ba6    # 0.003f

    const-string v2, "POPUP_WINDOW"

    const/16 v3, 0x8

    const v6, 0x3c23d70a    # 0.01f

    const v7, 0x3c23d70a    # 0.01f

    const v8, 0x3b449ba6    # 0.003f

    const v9, 0x3b449ba6    # 0.003f

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->POPUP_WINDOW:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const v21, 0x3be56042    # 0.007f

    const v22, 0x3ccccccd    # 0.025f

    const-string v13, "TEXT_SELECTOR_COLLAPSE"

    const/16 v14, 0x9

    const v17, 0x3cf5c28f    # 0.03f

    const v18, 0x3c75c28f    # 0.015f

    const v19, 0x399d4952    # 3.0E-4f

    const v20, 0x3c23d70a    # 0.01f

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->TEXT_SELECTOR_COLLAPSE:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const-string v2, "TEXT_SELECTOR_EXPAND"

    const/16 v3, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->TEXT_SELECTOR_EXPAND:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v13, "DEFAULT"

    const/16 v14, 0xb

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;-><init>(Ljava/lang/String;IFFFFFFFF)V

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->DEFAULT:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-static {}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->$values()[Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->$VALUES:[Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFFFFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFFFF)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->mSpringStiffness:F

    iput p4, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->mSpringDamping:F

    iput p5, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k1:F

    iput p6, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k2:F

    iput p7, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k3:F

    iput p8, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k4:F

    iput p9, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k5:F

    iput p10, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k6:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;
    .locals 1

    const-class v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    return-object p0
.end method

.method public static values()[Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->$VALUES:[Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {v0}, [Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    return-object v0
.end method


# virtual methods
.method public getK1()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k1:F

    return p0
.end method

.method public getK2()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k2:F

    return p0
.end method

.method public getK3()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k3:F

    return p0
.end method

.method public getK4()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k4:F

    return p0
.end method

.method public getK5()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k5:F

    return p0
.end method

.method public getK6()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->k6:F

    return p0
.end method

.method public getSpringDamping()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->mSpringDamping:F

    return p0
.end method

.method public getSpringStiffness()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->mSpringStiffness:F

    return p0
.end method
