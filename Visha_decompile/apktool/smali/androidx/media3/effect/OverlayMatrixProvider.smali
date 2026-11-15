.class Landroidx/media3/effect/OverlayMatrixProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final MATRIX_OFFSET:I


# instance fields
.field private final aspectRatioMatrix:[F

.field private final backgroundFrameAnchorMatrix:[F

.field private backgroundSize:Landroidx/media3/common/util/Size;

.field private final overlayAspectRatioMatrix:[F

.field private final overlayAspectRatioMatrixInv:[F

.field private final overlayFrameAnchorMatrix:[F

.field private final rotateMatrix:[F

.field private final scaleMatrix:[F

.field private final scaleMatrixInv:[F

.field private final transformationMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->aspectRatioMatrix:[F

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->backgroundFrameAnchorMatrix:[F

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayFrameAnchorMatrix:[F

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->rotateMatrix:[F

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->scaleMatrix:[F

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->scaleMatrixInv:[F

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayAspectRatioMatrix:[F

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayAspectRatioMatrixInv:[F

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    return-void
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->aspectRatioMatrix:[F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    iget-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->backgroundFrameAnchorMatrix:[F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    iget-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayFrameAnchorMatrix:[F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    iget-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->scaleMatrix:[F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    iget-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->scaleMatrixInv:[F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    iget-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->rotateMatrix:[F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    iget-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayAspectRatioMatrix:[F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    iget-object v0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayAspectRatioMatrixInv:[F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    iget-object p0, p0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    return-void
.end method


# virtual methods
.method public configure(Landroidx/media3/common/util/Size;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/effect/OverlayMatrixProvider;->backgroundSize:Landroidx/media3/common/util/Size;

    return-void
.end method

.method public getTransformationMatrix(Landroidx/media3/common/util/Size;Landroidx/media3/common/OverlaySettings;)[F
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroidx/media3/effect/OverlayMatrixProvider;->reset()V

    invoke-interface/range {p2 .. p2}, Landroidx/media3/common/OverlaySettings;->getBackgroundFrameAnchor()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/effect/OverlayMatrixProvider;->backgroundFrameAnchorMatrix:[F

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v1, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v1, v0, Landroidx/media3/effect/OverlayMatrixProvider;->backgroundSize:Landroidx/media3/common/util/Size;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Landroidx/media3/effect/OverlayMatrixProvider;->aspectRatioMatrix:[F

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/media3/effect/OverlayMatrixProvider;->backgroundSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v3}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, v0, Landroidx/media3/effect/OverlayMatrixProvider;->backgroundSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v6}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v2, v3, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-interface/range {p2 .. p2}, Landroidx/media3/common/OverlaySettings;->getScale()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/effect/OverlayMatrixProvider;->scaleMatrix:[F

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v4, v3, v1, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v1, v0, Landroidx/media3/effect/OverlayMatrixProvider;->scaleMatrixInv:[F

    iget-object v2, v0, Landroidx/media3/effect/OverlayMatrixProvider;->scaleMatrix:[F

    invoke-static {v1, v4, v2, v4}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    invoke-interface/range {p2 .. p2}, Landroidx/media3/common/OverlaySettings;->getOverlayFrameAnchor()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayFrameAnchorMatrix:[F

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v3, v7

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v7

    invoke-static {v2, v4, v3, v1, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v7, v0, Landroidx/media3/effect/OverlayMatrixProvider;->rotateMatrix:[F

    invoke-interface/range {p2 .. p2}, Landroidx/media3/common/OverlaySettings;->getRotationDegrees()F

    move-result v9

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v1, v0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayAspectRatioMatrix:[F

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v4, v2, v6, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v1, v0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayAspectRatioMatrixInv:[F

    iget-object v2, v0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayAspectRatioMatrix:[F

    invoke-static {v1, v4, v2, v4}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    iget-object v7, v0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    iget-object v9, v0, Landroidx/media3/effect/OverlayMatrixProvider;->backgroundFrameAnchorMatrix:[F

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v5, v7

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v13, v0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    iget-object v15, v0, Landroidx/media3/effect/OverlayMatrixProvider;->aspectRatioMatrix:[F

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v11, v13

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v3, v0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    iget-object v5, v0, Landroidx/media3/effect/OverlayMatrixProvider;->scaleMatrix:[F

    const/4 v2, 0x0

    move-object v1, v3

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v9, v0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    iget-object v11, v0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayFrameAnchorMatrix:[F

    move-object v7, v9

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v3, v0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    iget-object v5, v0, Landroidx/media3/effect/OverlayMatrixProvider;->scaleMatrixInv:[F

    move-object v1, v3

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v9, v0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    iget-object v11, v0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayAspectRatioMatrix:[F

    move-object v7, v9

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v3, v0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    iget-object v5, v0, Landroidx/media3/effect/OverlayMatrixProvider;->rotateMatrix:[F

    move-object v1, v3

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v9, v0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    iget-object v11, v0, Landroidx/media3/effect/OverlayMatrixProvider;->overlayAspectRatioMatrixInv:[F

    move-object v7, v9

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v3, v0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    iget-object v5, v0, Landroidx/media3/effect/OverlayMatrixProvider;->scaleMatrix:[F

    move-object v1, v3

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, v0, Landroidx/media3/effect/OverlayMatrixProvider;->transformationMatrix:[F

    return-object v0
.end method
