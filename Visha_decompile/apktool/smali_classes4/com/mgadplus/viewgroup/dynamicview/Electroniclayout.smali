.class public Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;
.super Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;
.source "SourceFile"


# instance fields
.field public I:Z

.field public J:Landroid/widget/FrameLayout;

.field public K:Landroid/widget/FrameLayout;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/ImageView;

.field public Q:Z

.field public R:Landroid/view/ViewGroup;

.field public S:Landroid/view/ViewGroup$MarginLayoutParams;

.field public T:Lcom/mgadplus/viewgroup/dynamicview/a$a;

.field public U:Landroid/view/GestureDetector;


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
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->Q:Z

    .line 3
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->U:Landroid/view/GestureDetector;

    .line 4
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

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->Q:Z

    .line 7
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->U:Landroid/view/GestureDetector;

    .line 8
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

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->Q:Z

    .line 11
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->U:Landroid/view/GestureDetector;

    .line 12
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic h(Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;)Lcom/mgadplus/viewgroup/dynamicview/a$a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->T:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 5

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getECommerce()Le9d;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->R:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->R:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->S:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, p0, v1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->Q:Z

    .line 6
    sget v1, Lcom/mgmi/R$id;->closeAdIcon:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->P:Landroid/widget/ImageView;

    .line 7
    new-instance v2, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout$a;

    invoke-direct {v2, p0}, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getClose()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->P:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getECommerce()Le9d;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Le9d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    sget v0, Lcom/mgmi/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 14
    invoke-virtual {p1}, Le9d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_2
    sget v0, Lcom/mgmi/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :goto_1
    invoke-virtual {p1}, Le9d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    sget v0, Lcom/mgmi/R$id;->detaiButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->O:Landroid/widget/TextView;

    .line 19
    invoke-virtual {p1}, Le9d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_3
    sget v0, Lcom/mgmi/R$id;->message01:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->M:Landroid/widget/TextView;

    .line 21
    sget v0, Lcom/mgmi/R$id;->message02:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->N:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p1}, Le9d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\uffe5"

    if-nez v0, :cond_4

    .line 23
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->M:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le9d;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->M:Landroid/widget/TextView;

    invoke-static {v0, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 25
    :goto_2
    invoke-virtual {p1}, Le9d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 26
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->N:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 27
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->N:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le9d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->N:Landroid/widget/TextView;

    invoke-static {v0, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 29
    :goto_3
    sget v0, Lcom/mgmi/R$id;->detai:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->L:Landroid/widget/TextView;

    .line 30
    invoke-virtual {p1}, Le9d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 31
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->L:Landroid/widget/TextView;

    invoke-virtual {p1}, Le9d;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 32
    :cond_6
    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->L:Landroid/widget/TextView;

    invoke-static {p1, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 33
    :goto_4
    sget p1, Lcom/mgmi/R$id;->image_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->J:Landroid/widget/FrameLayout;

    .line 34
    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->K:Landroid/widget/FrameLayout;

    :cond_7
    :goto_5
    return-void
.end method

.method public appear(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->R:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->R:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->S:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, p0, v1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->Q:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->a()V

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->c()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public synthetic bindData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->a(Lcom/mgmi/model/VASTFloatAd;)V

    return-void
.end method

.method public disappear(Z)V
    .locals 0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->R:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->Q:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->U:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getSchemeView()Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;

    move-result-object p0

    return-object p0
.end method

.method public getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;

    move-result-object p0

    return-object p0
.end method

.method public isVisiblity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->Q:Z

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->I:Z

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

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->I:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->U:Landroid/view/GestureDetector;

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

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->R:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->S:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method public setEventListener(Lcom/mgadplus/viewgroup/dynamicview/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;->T:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-void
.end method

.method public setInterectAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/mgadplus/viewgroup/dynamicview/a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public startTurning()V
    .locals 0

    return-void
.end method

.method public stopTurning()V
    .locals 0

    return-void
.end method
