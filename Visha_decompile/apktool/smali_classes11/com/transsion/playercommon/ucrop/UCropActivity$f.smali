.class public Lcom/transsion/playercommon/ucrop/UCropActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/ucrop/UCropActivity;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/ucrop/UCropActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/ucrop/UCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$f;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 3

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    const v0, 0x466a6000    # 15000.0f

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$f;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {p2}, Lcom/transsion/playercommon/ucrop/UCropActivity;->r0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$f;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {v1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->r0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$f;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {v2}, Lcom/transsion/playercommon/ucrop/UCropActivity;->r0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v2

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$f;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {p0}, Lcom/transsion/playercommon/ucrop/UCropActivity;->r0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result p0

    sub-float/2addr v2, p0

    div-float/2addr v2, v0

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-virtual {p2, v1}, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$f;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {p2}, Lcom/transsion/playercommon/ucrop/UCropActivity;->r0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$f;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {v1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->r0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$f;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {v2}, Lcom/transsion/playercommon/ucrop/UCropActivity;->r0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v2

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$f;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {p0}, Lcom/transsion/playercommon/ucrop/UCropActivity;->r0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result p0

    sub-float/2addr v2, p0

    div-float/2addr v2, v0

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-virtual {p2, v1}, Lcom/yalantis/ucrop/view/CropImageView;->zoomOutImage(F)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$f;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {p0}, Lcom/transsion/playercommon/ucrop/UCropActivity;->r0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$f;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {p0}, Lcom/transsion/playercommon/ucrop/UCropActivity;->r0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->cancelAllAnimations()V

    return-void
.end method
