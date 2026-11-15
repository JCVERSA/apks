.class public Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/graphics/ITranCanvasAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubCanvas"


# instance fields
.field private mService:Lcom/transsion/hubsdk/graphics/TranCanvas;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/graphics/TranCanvas;

    invoke-direct {v0}, Lcom/transsion/hubsdk/graphics/TranCanvas;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->mService:Lcom/transsion/hubsdk/graphics/TranCanvas;

    return-void
.end method


# virtual methods
.method public clipRRect(Landroid/graphics/Canvas;FFFFFI)Z
    .locals 8

    iget-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->mService:Lcom/transsion/hubsdk/graphics/TranCanvas;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/hubsdk/graphics/TranCanvas;->clipRRect(Landroid/graphics/Canvas;FFFFFI)Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->TAG:Ljava/lang/String;

    const-string p1, "cannot get core"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFILandroid/graphics/Paint;)V
    .locals 9

    move-object v0, p0

    .line 4
    iget-object v0, v0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->mService:Lcom/transsion/hubsdk/graphics/TranCanvas;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 5
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/hubsdk/graphics/TranCanvas;->drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFILandroid/graphics/Paint;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->TAG:Ljava/lang/String;

    const-string v1, "cannot get core"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->mService:Lcom/transsion/hubsdk/graphics/TranCanvas;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/hubsdk/graphics/TranCanvas;->drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->TAG:Ljava/lang/String;

    const-string p1, "cannot get core"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public smoothcornerCubicEdgeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->mService:Lcom/transsion/hubsdk/graphics/TranCanvas;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/graphics/TranCanvas;->smoothcornerCubicEdgeEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
