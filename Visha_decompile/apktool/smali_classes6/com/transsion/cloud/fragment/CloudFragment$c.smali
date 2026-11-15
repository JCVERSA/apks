.class public final Lcom/transsion/cloud/fragment/CloudFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$c;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragged(FI)V
    .locals 0

    return-void
.end method

.method public onEngaged()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$c;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMRefreshView$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onReleased()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$c;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMRefreshView$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method
