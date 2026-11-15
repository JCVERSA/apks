.class public Lme/zhanghai/android/materialratingbar/MaterialRatingBar;
.super Landroid/widget/RatingBar;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;,
        Lme/zhanghai/android/materialratingbar/MaterialRatingBar$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "MaterialRatingBar"


# instance fields
.field public b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

.field public c:Lme/zhanghai/android/materialratingbar/a;

.field public d:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;-><init>(Lme/zhanghai/android/materialratingbar/MaterialRatingBar$a;)V

    iput-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;-><init>(Lme/zhanghai/android/materialratingbar/MaterialRatingBar$a;)V

    iput-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p2, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;-><init>(Lme/zhanghai/android/materialratingbar/MaterialRatingBar$a;)V

    iput-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    .line 9
    invoke-virtual {p0, p2, p3}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-boolean v2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->o:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->p:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object v2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->m:Landroid/content/res/ColorStateList;

    iget-boolean v3, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->o:Z

    iget-object v4, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->n:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v5, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->p:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->f(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;Z)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-boolean v1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->c:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->d:Z

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x102000d

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->g(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object v4, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->a:Landroid/content/res/ColorStateList;

    iget-boolean v5, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->c:Z

    iget-object v6, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->b:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v7, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->d:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->f(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;Z)V

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-boolean v1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->k:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->l:Z

    if-eqz v0, :cond_2

    :cond_1
    const/high16 v0, 0x1020000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->g(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object v4, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->i:Landroid/content/res/ColorStateList;

    iget-boolean v5, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->k:Z

    iget-object v6, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->j:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v7, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->l:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->f(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;Z)V

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b()V

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->c()V

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->e()V

    return-void
.end method

.method public final e()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-boolean v1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->g:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->h:Z

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x102000f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->g(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object v4, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->e:Landroid/content/res/ColorStateList;

    iget-boolean v5, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->g:Z

    iget-object v6, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->f:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v7, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->h:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->f(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;Z)V

    :cond_2
    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;Z)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p5, :cond_5

    :cond_0
    if-eqz p3, :cond_2

    instance-of p3, p1, Lroa;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Lroa;

    invoke-interface {p3, p2}, Lroa;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->i()V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    if-eqz p5, :cond_4

    instance-of p2, p1, Lroa;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lroa;

    invoke-interface {p2, p4}, Lroa;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->i()V

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    return-void
.end method

.method public final g(IZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportIndeterminateTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getOnRatingChangeListener()Lme/zhanghai/android/materialratingbar/MaterialRatingBar$b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportProgressBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportProgressTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportSecondaryProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->getSupportSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getSupportIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->m:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getSupportIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->n:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getSupportProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->i:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getSupportProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->j:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getSupportProgressTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->a:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getSupportProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->b:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getSupportSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getSupportSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->f:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public final h(Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_progressTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->a:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->c:Z

    :cond_0
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_progressTintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v2}, Lp23;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->d:Z

    :cond_1
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_secondaryProgressTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->e:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->g:Z

    :cond_2
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_secondaryProgressTintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v2}, Lp23;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->f:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->h:Z

    :cond_3
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_progressBackgroundTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->i:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->k:Z

    :cond_4
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_progressBackgroundTintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v2}, Lp23;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->j:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->l:Z

    :cond_5
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_indeterminateTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->m:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->o:Z

    :cond_6
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_indeterminateTintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v2}, Lp23;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->n:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-boolean v1, p2, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->p:Z

    :cond_7
    sget p2, Lme/zhanghai/android/materialratingbar/R$styleable;->MaterialRatingBar_mrb_fillBackgroundStars:I

    invoke-virtual {p0}, Landroid/widget/RatingBar;->isIndicator()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    new-instance p1, Lme/zhanghai/android/materialratingbar/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lme/zhanghai/android/materialratingbar/a;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->c:Lme/zhanghai/android/materialratingbar/a;

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result p2

    invoke-virtual {p1, p2}, Lme/zhanghai/android/materialratingbar/a;->g(I)V

    iget-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->c:Lme/zhanghai/android/materialratingbar/a;

    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final i()V
    .locals 1

    sget-object p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->e:Ljava/lang/String;

    const-string v0, "Drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final j()V
    .locals 1

    sget-object p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->e:Ljava/lang/String;

    const-string v0, "Non-support version of tint method called, this is error-prone and will crash below Lollipop if you are calling it as a method of RatingBar instead of MaterialRatingBar"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized onMeasure(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float v0, p2

    iget-object v1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->c:Lme/zhanghai/android/materialratingbar/a;

    invoke-virtual {v1}, Lme/zhanghai/android/materialratingbar/a;->f()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->a()V

    :cond_0
    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setNumStars(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RatingBar;->setNumStars(I)V

    iget-object p0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->c:Lme/zhanghai/android/materialratingbar/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/a;->g(I)V

    :cond_0
    return-void
.end method

.method public setOnRatingChangeListener(Lme/zhanghai/android/materialratingbar/MaterialRatingBar$b;)V
    .locals 0

    return-void
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->d()V

    :cond_0
    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result p1

    iput p1, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->d:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->j()V

    invoke-virtual {p0, p1}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->setSupportSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setSupportIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->m:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->o:Z

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->a()V

    return-void
.end method

.method public setSupportIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->n:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->p:Z

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->a()V

    return-void
.end method

.method public setSupportProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->i:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->k:Z

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->c()V

    return-void
.end method

.method public setSupportProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->j:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->l:Z

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->c()V

    return-void
.end method

.method public setSupportProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->c:Z

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b()V

    return-void
.end method

.method public setSupportProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->d:Z

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b()V

    return-void
.end method

.method public setSupportSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->e:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->g:Z

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->e()V

    return-void
.end method

.method public setSupportSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->b:Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;

    iput-object p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->f:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lme/zhanghai/android/materialratingbar/MaterialRatingBar$c;->h:Z

    invoke-virtual {p0}, Lme/zhanghai/android/materialratingbar/MaterialRatingBar;->e()V

    return-void
.end method
