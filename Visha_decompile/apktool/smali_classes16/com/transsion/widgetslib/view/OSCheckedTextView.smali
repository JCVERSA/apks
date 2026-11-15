.class public Lcom/transsion/widgetslib/view/OSCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "OSCheckedTextView"


# instance fields
.field public b:I

.field public c:Lcv8;

.field public d:Lcv8;

.field public e:Lcv8;

.field public f:Landroid/graphics/drawable/StateListDrawable;

.field public g:Lcv8;

.field public h:Lcv8;

.field public i:Lcv8;

.field public j:Landroid/graphics/drawable/StateListDrawable;

.field public k:Lcv8;

.field public l:Lcv8;

.field public m:Lcv8;

.field public n:Landroid/graphics/drawable/StateListDrawable;

.field public o:Lcv8;

.field public p:Lcv8;

.field public q:Lcv8;

.field public r:Landroid/graphics/drawable/StateListDrawable;

.field public s:Lcv8;

.field public t:Lcv8;

.field public u:Lcv8;

.field public v:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b:I

    .line 6
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b:I

    .line 9
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101021a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ultra_small_btn_check_material_anim:I

    invoke-static {p0, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010219

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ultra_small_btn_radio_material_anim:I

    invoke-static {p0, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getReverseDrawableBean()Lyu8;
    .locals 3

    sget-boolean v0, Lolb;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckDrawables(Landroid/content/Context;)Lyu8;

    move-result-object v1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSCheckedTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Lcom/transsion/widgetslib/R$styleable;->OSCheckedTextView_check_mark_style:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->c()V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lyu8;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->v:Landroid/graphics/drawable/StateListDrawable;

    :cond_1
    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->t:Lcv8;

    :cond_2
    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->u:Lcv8;

    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->t:Lcv8;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->u:Lcv8;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcv8;Lcv8;)Lcv8;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->s:Lcv8;

    return-void
.end method

.method public final c()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lyu8;

    move-result-object v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->f:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->d:Lcv8;

    :cond_4
    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->e:Lcv8;

    :cond_5
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->d:Lcv8;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->e:Lcv8;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcv8;Lcv8;)Lcv8;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->c:Lcv8;

    return-void
.end method

.method public final d()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lyu8;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->n:Landroid/graphics/drawable/StateListDrawable;

    :cond_1
    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->l:Lcv8;

    :cond_2
    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->m:Lcv8;

    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->l:Lcv8;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->m:Lcv8;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcv8;Lcv8;)Lcv8;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->k:Lcv8;

    return-void
.end method

.method public final e()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lyu8;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->j:Landroid/graphics/drawable/StateListDrawable;

    :cond_1
    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->h:Lcv8;

    :cond_2
    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->i:Lcv8;

    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->h:Lcv8;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->i:Lcv8;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcv8;Lcv8;)Lcv8;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->g:Lcv8;

    return-void
.end method

.method public final f()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lyu8;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lyu8;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->r:Landroid/graphics/drawable/StateListDrawable;

    :cond_1
    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lyu8;->getCheckedDrawable()Lcv8;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->p:Lcv8;

    :cond_2
    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lyu8;->getNormalDrawable()Lcv8;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->q:Lcv8;

    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->p:Lcv8;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->q:Lcv8;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcv8;Lcv8;)Lcv8;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->o:Lcv8;

    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    instance-of v0, p1, Ld57;

    if-eqz v0, :cond_1

    sget-boolean p1, Lolb;->E:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b()V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->v:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lha7;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getCurrentDrawable(ZLcv8;Lcv8;)Lcv8;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    return-object p2
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    instance-of v0, p1, Ld57;

    if-eqz v0, :cond_1

    sget-boolean p1, Lolb;->E:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->d()V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->n:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lha7;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    instance-of v0, p1, Ld57;

    if-eqz v0, :cond_1

    sget-boolean p1, Lolb;->E:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->e()V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->j:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lha7;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    instance-of v0, p1, Ld57;

    if-eqz v0, :cond_1

    sget-boolean p1, Lolb;->E:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->b:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->f()V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->r:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lha7;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->c:Lcv8;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcv8;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->g:Lcv8;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcv8;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->k:Lcv8;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcv8;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->o:Lcv8;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcv8;->stop()V

    :cond_3
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->s:Lcv8;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcv8;->stop()V

    :cond_4
    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->f:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->d:Lcv8;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->e:Lcv8;

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    sget-object v0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked, checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getParent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->c:Lcv8;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->d:Lcv8;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->e:Lcv8;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_0

    if-ne v1, v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableCheckMark: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->d:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-ne v1, v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableCheckMark: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->e:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->c:Lcv8;

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->g:Lcv8;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->h:Lcv8;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->i:Lcv8;

    if-eqz v3, :cond_7

    if-eqz p1, :cond_4

    if-ne v1, v2, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableStart: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->h:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    if-nez p1, :cond_5

    if-ne v1, v3, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableStart: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->i:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move-object v2, v3

    :goto_1
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->g:Lcv8;

    :cond_7
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->k:Lcv8;

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->l:Lcv8;

    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->m:Lcv8;

    if-eqz v3, :cond_b

    if-eqz p1, :cond_8

    if-ne v1, v2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableEnd: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->l:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    if-nez p1, :cond_9

    if-ne v1, v3, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableEnd: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->m:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move-object v2, v3

    :goto_2
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->k:Lcv8;

    :cond_b
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->o:Lcv8;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->p:Lcv8;

    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->q:Lcv8;

    if-eqz v3, :cond_f

    if-eqz p1, :cond_c

    if-ne v1, v2, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableTop: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->p:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p1, :cond_d

    if-ne v1, v3, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableTop: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->q:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    if-eqz p1, :cond_e

    goto :goto_3

    :cond_e
    move-object v2, v3

    :goto_3
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->o:Lcv8;

    :cond_f
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->s:Lcv8;

    if-eqz v1, :cond_13

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->t:Lcv8;

    if-eqz v2, :cond_13

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->u:Lcv8;

    if-eqz v3, :cond_13

    if-eqz p1, :cond_10

    if-ne v1, v2, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableBottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->t:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    if-nez p1, :cond_11

    if-ne v1, v3, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableBottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->u:Lcv8;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    if-eqz p1, :cond_12

    goto :goto_4

    :cond_12
    move-object v2, v3

    :goto_4
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->s:Lcv8;

    :cond_13
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p4}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p4}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
