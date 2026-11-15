.class public Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;
.super Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;
.implements Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;",
        "Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;",
        "Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;"
    }
.end annotation


# instance fields
.field public r:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

.field public t:Landroid/view/View;

.field public u:Z

.field public v:Lcom/mgadplus/viewgroup/dynamicview/a$a;

.field public w:Lcom/mgmi/model/VASTFloatAd;

.field public x:Landroid/view/ViewGroup;

.field public y:Landroid/view/ViewGroup$MarginLayoutParams;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->u:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->u:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->u:Z

    return-void
.end method

.method public static synthetic b(Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;)Lcom/mgadplus/viewgroup/dynamicview/a$a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->v:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 1

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->w:Lcom/mgmi/model/VASTFloatAd;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->appear(Z)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->r:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->a(Lcom/mgmi/model/VASTFloatAd;)V

    :cond_0
    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->w:Lcom/mgmi/model/VASTFloatAd;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isShowAdLog()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->z:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->z:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ll4d;->f(Landroid/view/View;I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->startTurning()V

    return-void
.end method

.method public appear(Z)V
    .locals 1

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->x:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->y:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1, p0, v0}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->u:Z

    return-void
.end method

.method public synthetic bindData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->a(Lcom/mgmi/model/VASTFloatAd;)V

    return-void
.end method

.method public disappear(Z)V
    .locals 0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->x:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->stopTurning()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->u:Z

    return-void
.end method

.method public bridge synthetic getSchemeView()Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;

    move-result-object p0

    return-object p0
.end method

.method public getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;
    .locals 0

    .line 1
    return-object p0
.end method

.method public isVisiblity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->u:Z

    return p0
.end method

.method public leftClick()V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->r:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->leftClick()V

    :cond_0
    return-void
.end method

.method public onAddItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->r:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->w:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getClose()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->r:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

    invoke-virtual {v0, p1}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->t:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Ll4d;->a(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public onBindComplete()V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->r:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->onBindComplete()V

    :cond_0
    return-void
.end method

.method public onCloseClick()V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->v:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/a$a;->a()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/mgmi/R$id;->autoplayerview:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->r:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

    invoke-virtual {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->setOnAutoplayerAdaperClick(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;)V

    sget v0, Lcom/mgmi/R$id;->mgmi_ad_dec:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->z:Landroid/widget/TextView;

    sget v0, Lcom/mgmi/R$id;->closeIcon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->t:Landroid/view/View;

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout$a;

    invoke-direct {v1, p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->t:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll4d;->a(Landroid/view/View;F)V

    return-void
.end method

.method public onImageClick(Ll2d;)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->v:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ll2d;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/a$a;->a(I)V

    :cond_0
    return-void
.end method

.method public prepareContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup$MarginLayoutParams;)Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->x:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->y:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method public rightClick()V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->r:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->rightClick()V

    :cond_0
    return-void
.end method

.method public setEventListener(Lcom/mgadplus/viewgroup/dynamicview/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->v:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-void
.end method

.method public setInterectAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/mgadplus/viewgroup/dynamicview/a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public startTurning()V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->r:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->startTurning()V

    :cond_0
    return-void
.end method

.method public stopTurning()V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->r:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->stopTurning()V

    :cond_0
    return-void
.end method
