.class public Lcom/yalantis/ucrop/UCropFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/UCropFragment$c;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/view/View;

.field public D:Landroid/graphics/Bitmap$CompressFormat;

.field public E:I

.field public F:[I

.field public G:Lcom/yalantis/ucrop/view/TransformImageView$b;

.field public final H:Landroid/view/View$OnClickListener;

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:Landroidx/transition/Transition;

.field public q:Lcom/yalantis/ucrop/view/UCropView;

.field public r:Lcom/yalantis/ucrop/view/GestureCropImageView;

.field public s:Lcom/yalantis/ucrop/view/OverlayView;

.field public t:Landroid/view/ViewGroup;

.field public u:Landroid/view/ViewGroup;

.field public v:Landroid/view/ViewGroup;

.field public w:Landroid/view/ViewGroup;

.field public x:Landroid/view/ViewGroup;

.field public y:Landroid/view/ViewGroup;

.field public z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->z:Ljava/util/List;

    sget-object v0, Lcom/yalantis/ucrop/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->D:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/yalantis/ucrop/UCropFragment;->E:I

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->F:[I

    new-instance v0, Lcom/yalantis/ucrop/UCropFragment$a;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/UCropFragment$a;-><init>(Lcom/yalantis/ucrop/UCropFragment;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->G:Lcom/yalantis/ucrop/view/TransformImageView$b;

    new-instance v0, Lcom/yalantis/ucrop/UCropFragment$b;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/UCropFragment$b;-><init>(Lcom/yalantis/ucrop/UCropFragment;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->H:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static bridge synthetic D(Lcom/yalantis/ucrop/UCropFragment;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropFragment;->M(F)V

    return-void
.end method

.method public static bridge synthetic E(Lcom/yalantis/ucrop/UCropFragment;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropFragment;->P(F)V

    return-void
.end method

.method public static bridge synthetic F(Lcom/yalantis/ucrop/UCropFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropFragment;->Q(I)V

    return-void
.end method

.method private H(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$id;->ucrop_photobox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropFragment;->p:Landroidx/transition/Transition;

    invoke-static {v0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->v:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->text_view_scale:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$id;->state_scale:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->t:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->text_view_crop:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    if-ne p1, v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment;->u:Landroid/view/ViewGroup;

    sget v0, Lcom/yalantis/ucrop/R$id;->text_view_rotate:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private L(I)V
    .locals 5

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropFragment;->F:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setScaleEnabled(Z)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment;->F:[I

    aget p0, p0, p1

    if-eq p0, v4, :cond_2

    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setRotateEnabled(Z)V

    return-void
.end method

.method private M(F)V
    .locals 2

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment;->A:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.1f\u00b0"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private O()V
    .locals 1

    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropFragment;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropFragment;->Q(I)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropFragment;->Q(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropFragment;->L(I)V

    :goto_0
    return-void
.end method

.method private P(F)V
    .locals 2

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment;->B:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d%%"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private Q(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropFragment;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->t:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->u:Landroid/view/ViewGroup;

    sget v4, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v4, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->v:Landroid/view/ViewGroup;

    sget v5, Lcom/yalantis/ucrop/R$id;->state_scale:I

    if-ne p1, v5, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->w:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    if-ne p1, v1, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v6

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->x:Landroid/view/ViewGroup;

    if-ne p1, v4, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->y:Landroid/view/ViewGroup;

    if-ne p1, v5, :cond_6

    move v6, v3

    :cond_6
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropFragment;->H(I)V

    if-ne p1, v5, :cond_7

    invoke-direct {p0, v3}, Lcom/yalantis/ucrop/UCropFragment;->L(I)V

    goto :goto_5

    :cond_7
    if-ne p1, v4, :cond_8

    invoke-direct {p0, v2}, Lcom/yalantis/ucrop/UCropFragment;->L(I)V

    goto :goto_5

    :cond_8
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropFragment;->L(I)V

    :goto_5
    return-void
.end method

.method public static bridge synthetic u(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/b;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/yalantis/ucrop/UCropFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment;->C:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/UCropView;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment;->q:Lcom/yalantis/ucrop/view/UCropView;

    return-object p0
.end method


# virtual methods
.method public final G(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->C:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->C:Landroid/view/View;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropFragment;->C:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->C:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_photobox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment;->C:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public I(Ljava/lang/Throwable;)Lcom/yalantis/ucrop/UCropFragment$c;
    .locals 3

    new-instance v0, Lcom/yalantis/ucrop/UCropFragment$c;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "release.Error"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x60

    invoke-direct {v0, p0, v1, p1}, Lcom/yalantis/ucrop/UCropFragment$c;-><init>(Lcom/yalantis/ucrop/UCropFragment;ILandroid/content/Intent;)V

    return-object v0
.end method

.method public final J(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/UCropView;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->q:Lcom/yalantis/ucrop/view/UCropView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->getCropImageView()Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->q:Lcom/yalantis/ucrop/view/UCropView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->getOverlayView()Lcom/yalantis/ucrop/view/OverlayView;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropFragment;->G:Lcom/yalantis/ucrop/view/TransformImageView$b;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView;->setTransformImageListener(Lcom/yalantis/ucrop/view/TransformImageView$b;)V

    sget v0, Lcom/yalantis/ucrop/R$id;->image_view_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/yalantis/ucrop/UCropFragment;->n:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/yalantis/ucrop/UCropFragment;->m:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final K(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "release.CompressionFormatName"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/yalantis/ucrop/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    :cond_1
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->D:Landroid/graphics/Bitmap$CompressFormat;

    const-string v0, "release.CompressionQuality"

    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropFragment;->E:I

    const-string v0, "release.AllowedGestures"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->F:[I

    :cond_2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const-string v1, "release.MaxBitmapSize"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView;->setMaxBitmapSize(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const-string v1, "release.MaxScaleMultiplier"

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->setMaxScaleMultiplier(F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const-string v1, "release.ImageToCropBoundsAnimDuration"

    const/16 v3, 0x1f4

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBoundsAnimDuration(J)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "release.FreeStyleCrop"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setFreestyleCropEnabled(Z)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_dimmed:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v3, "release.DimmedLayerColor"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setDimmedColor(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "release.CircleDimmedLayer"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCircleDimmedLayer(Z)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "release.ShowCropFrame"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropFrame(Z)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_frame:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v4, "release.CropFrameColor"

    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameColor(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_frame_stoke_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v4, "release.CropFrameStrokeWidth"

    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameStrokeWidth(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "release.ShowCropGrid"

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropGrid(Z)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "release.CropGridRowCount"

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridRowCount(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "release.CropGridColumnCount"

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColumnCount(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_grid:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v3, "release.CropGridColor"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColor(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->s:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_grid_stoke_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v3, "release.CropGridStrokeWidth"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridStrokeWidth(I)V

    const-string v0, "release.AspectRatioX"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const-string v3, "release.AspectRatioY"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v3, "release.AspectRatioSelectedByDefault"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "release.AspectRatioOptions"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-ltz v6, :cond_5

    cmpl-float v6, v1, v5

    if-ltz v6, :cond_5

    iget-object v3, p0, Lcom/yalantis/ucrop/UCropFragment;->t:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v5, v0

    :goto_1
    invoke-virtual {v1, v5}, Lcom/yalantis/ucrop/view/CropImageView;->setTargetAspectRatio(F)V

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioX()F

    move-result v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-virtual {v1}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioY()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v5, v0

    :goto_2
    invoke-virtual {v1, v5}, Lcom/yalantis/ucrop/view/CropImageView;->setTargetAspectRatio(F)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0, v5}, Lcom/yalantis/ucrop/view/CropImageView;->setTargetAspectRatio(F)V

    :goto_3
    const-string v0, "release.MaxSizeX"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "release.MaxSizeY"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez v0, :cond_8

    if-lez p1, :cond_8

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/view/CropImageView;->setMaxResultImageSizeX(I)V

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/CropImageView;->setMaxResultImageSizeY(I)V

    :cond_8
    return-void
.end method

.method public final N(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "release.InputUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "release.OutputUri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropFragment;->K(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropFragment;->r:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v2, v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropFragment;->I(Ljava/lang/Throwable;)Lcom/yalantis/ucrop/UCropFragment$c;

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    sget v1, Lcom/yalantis/ucrop/R$string;->ucrop_error_input_data_is_absent:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropFragment;->I(Ljava/lang/Throwable;)Lcom/yalantis/ucrop/UCropFragment$c;

    throw p1
.end method

.method public R(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$color;->ucrop_color_widget_active:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "release.UcropColorControlsWidgetActive"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropFragment;->l:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_logo:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "release.UcropLogoColor"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropFragment;->n:I

    const-string v0, "release.HideBottomControls"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/yalantis/ucrop/UCropFragment;->o:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$color;->ucrop_color_crop_background:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "release.UcropRootViewBackgroundColor"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/yalantis/ucrop/UCropFragment;->m:I

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropFragment;->J(Landroid/view/View;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement UCropFragmentCallback"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/yalantis/ucrop/R$layout;->ucrop_fragment_photobox:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yalantis/ucrop/UCropFragment;->R(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/yalantis/ucrop/UCropFragment;->N(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropFragment;->O()V

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropFragment;->G(Landroid/view/View;)V

    return-object p1
.end method
