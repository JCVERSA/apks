.class public Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/BubbleTextView;

.field public final synthetic c:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Lcom/transsion/widgets/BubbleTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;->c:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    iput-object p2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;->b:Lcom/transsion/widgets/BubbleTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;->b:Lcom/transsion/widgets/BubbleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;->c:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;->b:Lcom/transsion/widgets/BubbleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;->b:Lcom/transsion/widgets/BubbleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v4, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;->c:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Ld39;->a(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;->b:Lcom/transsion/widgets/BubbleTextView;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "padding:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "total:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "marginstart:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->V:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "w:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v4, v5, v6, v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "PlayerMainFragment"

    invoke-static {v4, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sput v1, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->V:I

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;->c:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v2}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->c0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Landroid/view/View;

    move-result-object v2

    sget v4, Lcom/transsion/magicmovie/R$color;->transparent:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    sget v2, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->V:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;->b:Lcom/transsion/widgets/BubbleTextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;->c:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->c0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6$1;

    invoke-direct {v1, p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6$1;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3
.end method
