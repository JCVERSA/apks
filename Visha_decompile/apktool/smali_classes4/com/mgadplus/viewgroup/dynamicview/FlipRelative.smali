.class public Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;
.super Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;
.source "SourceFile"


# instance fields
.field public I:Z

.field public J:Landroid/widget/TextView;

.field public K:Landroid/view/View;

.field public L:Landroid/widget/ImageView;

.field public M:Z

.field public N:Lcom/mgmi/model/VASTFloatAd;

.field public O:Landroid/view/ViewGroup;

.field public P:Landroid/view/ViewGroup$MarginLayoutParams;

.field public Q:Lcom/mgadplus/viewgroup/dynamicview/a$a;

.field public R:Z

.field public S:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->M:Z

    .line 3
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->R:Z

    .line 4
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->S:Landroid/view/GestureDetector;

    .line 5
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->M:Z

    .line 8
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->R:Z

    .line 9
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->S:Landroid/view/GestureDetector;

    .line 10
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->M:Z

    .line 13
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->R:Z

    .line 14
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->S:Landroid/view/GestureDetector;

    .line 15
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic h(Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;)Lcom/mgadplus/viewgroup/dynamicview/a$a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->Q:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " flipCorner preAnimation  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->K:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4d;->a(Landroid/view/View;F)V

    .line 3
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->L:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Ll4d;->a(Landroid/view/View;F)V

    .line 4
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->w:Landroid/widget/FrameLayout;

    invoke-static {p0, v1}, Ll4d;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 4

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->M:Z

    .line 6
    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->N:Lcom/mgmi/model/VASTFloatAd;

    .line 7
    sget v1, Lcom/mgmi/R$id;->closeAdIcon:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->L:Landroid/widget/ImageView;

    .line 8
    new-instance v2, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative$c;

    invoke-direct {v2, p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative$c;-><init>(Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getClose()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->L:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->L:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :goto_0
    sget v1, Lcom/mgmi/R$id;->connerTitleLayout:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->K:Landroid/view/View;

    .line 13
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->K:Landroid/view/View;

    invoke-static {v0, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 15
    sget v0, Lcom/mgmi/R$id;->connerTitle:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->J:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->J:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->K:Landroid/view/View;

    invoke-static {v0, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 19
    :cond_2
    :goto_1
    sget v0, Lcom/mgmi/R$id;->mgmi_ad_dec:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isShowAdLog()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    invoke-static {v0, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 22
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mgmi/R$string;->mgmi_adform_dsc:I

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 24
    :cond_3
    const-string p1, "\u5e7f\u544a"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-static {v0, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 26
    :catchall_0
    :cond_5
    :goto_2
    sget p1, Lcom/mgmi/R$id;->image_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->w:Landroid/widget/FrameLayout;

    .line 27
    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->x:Landroid/widget/FrameLayout;

    return-void
.end method

.method public appear(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->O:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->O:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->P:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, p0, v1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->M:Z

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->f()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->a()V

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->c()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "flipCorner afterAnimation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->L:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ll4d;->a(Landroid/view/View;F)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->w:Landroid/widget/FrameLayout;

    invoke-static {p0, v1}, Ll4d;->a(Landroid/view/View;F)V

    return-void
.end method

.method public synthetic bindData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->a(Lcom/mgmi/model/VASTFloatAd;)V

    return-void
.end method

.method public c()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flipCorner playCornnerPicIn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lw1d;

    invoke-direct {v0}, Lw1d;-><init>()V

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lw1d;->e(Landroid/view/View;)Lw1d;

    move-result-object v0

    sget-object v1, Lcom/mgadplus/a/b;->SCALEMIDDLE:Lcom/mgadplus/a/b;

    invoke-virtual {v0, v1}, Lw1d;->f(Lcom/mgadplus/a/b;)Lw1d;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lw1d;->c(I)Lw1d;

    move-result-object v0

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative$a;

    invoke-direct {v1, p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;)V

    invoke-virtual {v0, v1}, Lw1d;->d(Landroid/animation/Animator$AnimatorListener;)Lw1d;

    move-result-object p0

    invoke-virtual {p0}, Lw1d;->a()Lw1d;

    move-result-object p0

    invoke-virtual {p0}, Lw1d;->h()V

    return-void
.end method

.method public d()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "flipCorner playCornnerTextIn"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->K:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->N:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->N:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lw1d;

    invoke-direct {v0}, Lw1d;-><init>()V

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->K:Landroid/view/View;

    invoke-virtual {v0, v1}, Lw1d;->e(Landroid/view/View;)Lw1d;

    move-result-object v0

    sget-object v1, Lcom/mgadplus/a/b;->SCALE:Lcom/mgadplus/a/b;

    invoke-virtual {v0, v1}, Lw1d;->f(Lcom/mgadplus/a/b;)Lw1d;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lw1d;->c(I)Lw1d;

    move-result-object v0

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative$b;

    invoke-direct {v1, p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative$b;-><init>(Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;)V

    invoke-virtual {v0, v1}, Lw1d;->d(Landroid/animation/Animator$AnimatorListener;)Lw1d;

    move-result-object p0

    invoke-virtual {p0}, Lw1d;->a()Lw1d;

    move-result-object p0

    invoke-virtual {p0}, Lw1d;->h()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->b()V

    :goto_1
    return-void
.end method

.method public disappear(Z)V
    .locals 0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->O:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->M:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->S:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->R:Z

    return p0
.end method

.method public bridge synthetic getSchemeView()Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;

    move-result-object p0

    return-object p0
.end method

.method public getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;
    .locals 0

    .line 1
    return-object p0
.end method

.method public isVisiblity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->M:Z

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->I:Z

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

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->onFinishInflate()V

    return-void
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

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->I:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->S:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p2}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public prepareContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup$MarginLayoutParams;)Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->O:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->P:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method public setCloseAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->R:Z

    return-void
.end method

.method public setEventListener(Lcom/mgadplus/viewgroup/dynamicview/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->Q:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-void
.end method

.method public setInterectAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/mgadplus/viewgroup/dynamicview/a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setScropContainerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->u:I

    return-void
.end method

.method public setScropContainerWidth(I)V
    .locals 0

    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->t:I

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
