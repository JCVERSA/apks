.class public Lcom/transsion/hubsdk/api/graphics/TranCanvas;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;
    }
.end annotation


# static fields
.field private static final CORNER_VALUES:[I

.field private static final INSTANCE:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

.field private static final INSTANCE_ENABLED:Z = false

.field private static final ROUND_RATIO:F = 1.4f


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospCanvas;

.field private mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->values()[Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->CORNER_VALUES:[I

    sget-object v1, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->TOP_LEFT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    sget-object v2, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->TOP_RIGHT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x2

    aput v4, v0, v3

    sget-object v3, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->BOTTOM_RIGHT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v0, v4

    sget-object v4, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->BOTTOM_LEFT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v0, v5

    sget-object v5, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->LEFT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v0, v6

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v0, v7

    or-int/2addr v6, v7

    aput v6, v0, v5

    sget-object v5, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->TOP:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v0, v6

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v0, v7

    or-int/2addr v6, v7

    aput v6, v0, v5

    sget-object v5, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->RIGHT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v0, v6

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v0, v7

    or-int/2addr v6, v7

    aput v6, v0, v5

    sget-object v5, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->BOTTOM:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v0, v6

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v0, v7

    or-int/2addr v6, v7

    aput v6, v0, v5

    sget-object v5, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->ALL:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v0, v2

    or-int/2addr v1, v2

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v0, v2

    or-int/2addr v1, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v0, v2

    or-int/2addr v1, v2

    aput v1, v0, v5

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->INSTANCE:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/hubsdk/api/graphics/TranCanvas;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->INSTANCE:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    return-object v0
.end method


# virtual methods
.method public clipRRect(Landroid/graphics/Canvas;FFFFFLcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;)Z
    .locals 8

    if-eqz p1, :cond_0

    const v0, 0x3fb33333    # 1.4f

    mul-float v6, p6, v0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranCanvasAdapter;

    move-result-object v0

    sget-object v1, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->CORNER_VALUES:[I

    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v7, v1, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/transsion/hubsdk/interfaces/graphics/ITranCanvasAdapter;->clipRRect(Landroid/graphics/Canvas;FFFFFI)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameters canvas == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 8

    if-eqz p1, :cond_0

    const v0, 0x3fb33333    # 1.4f

    mul-float v6, p6, v0

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranCanvasAdapter;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/transsion/hubsdk/interfaces/graphics/ITranCanvasAdapter;->drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameters canvas == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFLcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;Landroid/graphics/Paint;)V
    .locals 9

    if-eqz p1, :cond_0

    const v0, 0x3fb33333    # 1.4f

    mul-float v6, p6, v0

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranCanvasAdapter;

    move-result-object v0

    sget-object v1, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->CORNER_VALUES:[I

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v7, v1, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/transsion/hubsdk/interfaces/graphics/ITranCanvasAdapter;->drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFILandroid/graphics/Paint;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameters canvas == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranCanvasAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospCanvas;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/graphics/TranAospCanvas;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/graphics/TranAospCanvas;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospCanvas;

    :cond_2
    return-object p1
.end method

.method public smoothcornerCubicEdgeEnabled()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranCanvasAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/graphics/ITranCanvasAdapter;->smoothcornerCubicEdgeEnabled()Z

    move-result p0

    return p0
.end method
