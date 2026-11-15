.class public Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;
.super Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;",
        "Landroid/view/GestureDetector$OnGestureListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;"
    }
.end annotation


# instance fields
.field public A:Landroid/view/ViewGroup;

.field public B:Landroid/widget/RelativeLayout;

.field public C:Lcom/mgadplus/viewgroup/dynamicview/ParentClickHorizontalScrollView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:I

.field public H:I

.field public I:Landroid/widget/ImageView;

.field public J:I

.field public K:I

.field public L:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$i;

.field public M:I

.field public N:I

.field public r:Landroid/view/GestureDetector;

.field public t:Z

.field public u:Lly3;

.field public v:Landroid/view/ViewGroup;

.field public w:Z

.field public x:Landroid/view/ViewGroup$MarginLayoutParams;

.field public y:Lcom/mgadplus/viewgroup/dynamicview/a$a;

.field public z:Lcom/mgmi/model/VASTFloatAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->r:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->w:Z

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->G:I

    const/16 v0, 0x4b0

    .line 5
    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->H:I

    .line 6
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->M:I

    .line 7
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->r:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->w:Z

    const/4 p2, 0x2

    .line 11
    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->G:I

    const/16 p2, 0x4b0

    .line 12
    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->H:I

    .line 13
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->M:I

    .line 14
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->r:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->w:Z

    const/4 p2, 0x2

    .line 18
    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->G:I

    const/16 p2, 0x4b0

    .line 19
    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->H:I

    .line 20
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->M:I

    .line 21
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->K:I

    return p0
.end method

.method private b()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getClose()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->L:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$i;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$i;

    invoke-direct {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$i;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->L:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$i;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->L:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$i;

    if-eqz v0, :cond_1

    const/16 v2, 0x11

    const-wide/16 v3, 0x3e8

    .line 6
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->o()V

    .line 8
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Lcom/mgmi/model/VASTFloatAd;->setHasRender(Z)V

    :cond_2
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->I:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 2
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->C:Lcom/mgadplus/viewgroup/dynamicview/ParentClickHorizontalScrollView;

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 3
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->B:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 4
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->E:Landroid/widget/TextView;

    invoke-static {p0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic d(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->B:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->I:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 3
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->C:Lcom/mgadplus/viewgroup/dynamicview/ParentClickHorizontalScrollView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 4
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->B:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 5
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->E:Landroid/widget/TextView;

    invoke-static {p0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic e(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->c()V

    return-void
.end method

.method public static synthetic f(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->p()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->I:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->C:Lcom/mgadplus/viewgroup/dynamicview/ParentClickHorizontalScrollView;

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->B:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->E:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic h(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->g()V

    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getCaption()Lcom/mgmi/model/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getCaption()Lcom/mgmi/model/c;

    move-result-object v0

    iget-object v0, v0, Lcom/mgmi/model/c;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->G:I

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getSkipTimeout()I

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->J:I

    if-gez v0, :cond_1

    iput v1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->J:I

    :cond_1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->D:Landroid/widget/TextView;

    const-string v1, ""

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v3}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->D:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v2}, Lcom/mgmi/model/VASTFloatAd;->getCaption()Lcom/mgmi/model/c;

    move-result-object v2

    iget-object v2, v2, Lcom/mgmi/model/c;->a:Ljava/lang/String;

    invoke-static {v2}, Lg4d;->w(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->D:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v2}, Lcom/mgmi/model/VASTFloatAd;->getCaption()Lcom/mgmi/model/c;

    move-result-object v2

    iget-object v2, v2, Lcom/mgmi/model/c;->b:Ljava/lang/String;

    invoke-static {v2}, Lg4d;->w(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->D:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v3}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTFloatAd;->getCaption()Lcom/mgmi/model/c;

    move-result-object v1

    iget-object v1, v1, Lcom/mgmi/model/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lg4d;->w(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->B:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTFloatAd;->getCaption()Lcom/mgmi/model/c;

    move-result-object p0

    iget-object p0, p0, Lcom/mgmi/model/c;->d:Ljava/lang/String;

    invoke-static {p0}, Lg4d;->w(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    return-void
.end method

.method public static synthetic j(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->n()V

    return-void
.end method

.method public static synthetic k(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->I:Landroid/widget/ImageView;

    return-object p0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getClose()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->A:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->A:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    :goto_0
    return-void
.end method

.method private m()V
    .locals 1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->A:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->B:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->c()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->K:I

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->H:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$f;

    invoke-direct {v2, p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$f;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$g;

    invoke-direct {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$g;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 24
    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->J:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->J:I

    const/16 v1, 0x11

    if-lez v0, :cond_0

    .line 25
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->L:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$i;

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x3e8

    .line 26
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->l()V

    .line 28
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->L:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$i;

    if-eqz p0, :cond_1

    .line 29
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 3

    .line 5
    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    .line 6
    sget v0, Lcom/mgmi/R$id;->sc_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/ParentClickHorizontalScrollView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->C:Lcom/mgadplus/viewgroup/dynamicview/ParentClickHorizontalScrollView;

    .line 7
    sget v0, Lcom/mgmi/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->E:Landroid/widget/TextView;

    .line 8
    sget v0, Lcom/mgmi/R$id;->mgmi_ad_dec:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->F:Landroid/widget/TextView;

    .line 9
    sget v0, Lcom/mgmi/R$id;->tv_introduce:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->D:Landroid/widget/TextView;

    .line 10
    sget v0, Lcom/mgmi/R$id;->iv_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->I:Landroid/widget/ImageView;

    .line 11
    sget v0, Lcom/mgmi/R$id;->mgmi_id_close_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->A:Landroid/view/ViewGroup;

    .line 12
    sget v0, Lcom/mgmi/R$id;->rl_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->B:Landroid/widget/RelativeLayout;

    .line 13
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->C:Lcom/mgadplus/viewgroup/dynamicview/ParentClickHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/ParentClickHorizontalScrollView;->setParentView(Landroid/view/View;)V

    .line 14
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->m()V

    .line 15
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->A:Landroid/view/ViewGroup;

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$c;

    invoke-direct {v1, p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$c;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->F:Landroid/widget/TextView;

    invoke-static {p1, v0}, Llvd;->b(Lcom/mgmi/model/VASTAd;Landroid/widget/TextView;)V

    .line 17
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->I:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Llbd;->E:Llbd;

    invoke-static {p1, v2}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object p1

    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v2}, Llbd$b;->n(I)Llbd$b;

    move-result-object p1

    invoke-virtual {p1}, Llbd$b;->t()Llbd;

    move-result-object p1

    new-instance v2, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$d;

    invoke-direct {v2, p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$d;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V

    .line 20
    invoke-static {v0, v1, p1, v2}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->d()V

    .line 22
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->i()V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->appear(Z)V

    return-void
.end method

.method public a(ZLacc;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->c(Lacc;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->L:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$i;

    if-eqz p1, :cond_1

    const/16 v0, 0x11

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_1
    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$1;

    invoke-direct {p1, p0, p2}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$1;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;Lacc;)V

    invoke-static {p1}, Lj4d;->b(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public appear(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->v:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->v:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->x:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, p0, v1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->w:Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->z:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->isHasRender()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->l()V

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->c()V

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->p()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic bindData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->a(Lcom/mgmi/model/VASTFloatAd;)V

    return-void
.end method

.method public c(Lacc;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->B:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->I:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-static {v0}, Ll4d;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->w:Z

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$11;

    invoke-direct {v0, p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$11;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;Lacc;)V

    invoke-static {v0}, Lj4d;->b(Ljava/lang/Runnable;)Z

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 10
    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->H:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$a;

    invoke-direct {v1, p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;

    invoke-direct {v1, p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 14
    :cond_2
    :goto_0
    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$10;

    invoke-direct {v0, p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$10;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;Lacc;)V

    invoke-static {v0}, Lj4d;->b(Ljava/lang/Runnable;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public disappear(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->a(ZLacc;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->r:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getSchemeView()Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    move-result-object p0

    return-object p0
.end method

.method public getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;
    .locals 0

    .line 1
    return-object p0
.end method

.method public isVisiblity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->w:Z

    return p0
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->I:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->c()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mgmi/R$anim;->middle_marquee_scale_enter:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$h;

    invoke-direct {v1, p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$h;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->t:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    const/high16 p1, 0x41a00000    # 20.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x43480000    # 200.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->u:Lly3;

    if-eqz v0, :cond_0

    const v5, -0x3b864000    # -999.0f

    const v6, -0x3b864000    # -999.0f

    const v1, -0x3b864000    # -999.0f

    const v2, -0x3b864000    # -999.0f

    const v3, -0x3b864000    # -999.0f

    const v4, -0x3b864000    # -999.0f

    invoke-interface/range {v0 .. v6}, Lly3;->onTp(FFFFFF)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->t:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->r:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p2}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final p()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->E:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->C:Lcom/mgadplus/viewgroup/dynamicview/ParentClickHorizontalScrollView;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->E:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->C:Lcom/mgadplus/viewgroup/dynamicview/ParentClickHorizontalScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->C:Lcom/mgadplus/viewgroup/dynamicview/ParentClickHorizontalScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v3, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->N:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_2

    iput v1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->M:I

    goto :goto_0

    :cond_2
    neg-float v2, v2

    float-to-int v2, v2

    iput v2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->M:I

    :goto_0
    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->E:Landroid/widget/TextView;

    int-to-float v3, v3

    iget v4, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->M:I

    int-to-float v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v1

    aput v4, v5, v0

    const-string v1, "translationX"

    invoke-static {v2, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->G:I

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->g()V

    return-void
.end method

.method public prepareContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup$MarginLayoutParams;)Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->v:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->x:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method public setEventListener(Lcom/mgadplus/viewgroup/dynamicview/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->y:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-void
.end method

.method public setInterectAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/mgadplus/viewgroup/dynamicview/a;
    .locals 0

    return-object p0
.end method

.method public setOnFlipTouchEvent(ZLly3;)V
    .locals 0

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->u:Lly3;

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->t:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$e;

    invoke-direct {p1, p0, p2}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$e;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;Lly3;)V

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->setTapclickListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;)V

    :cond_0
    return-void
.end method

.method public startTurning()V
    .locals 0

    return-void
.end method

.method public stopTurning()V
    .locals 0

    return-void
.end method
