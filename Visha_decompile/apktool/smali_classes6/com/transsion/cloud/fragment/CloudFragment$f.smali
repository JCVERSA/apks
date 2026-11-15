.class public final Lcom/transsion/cloud/fragment/CloudFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;


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

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$f;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppBarCollapsed()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$f;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {v0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMAppBarLayout$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$f;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-virtual {v0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMIsAppbarExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$f;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->setMIsAppbarExpanded(Z)V

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$f;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMAppBarLayout$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_0
    return-void
.end method

.method public onAppBarExpanded()V
    .locals 0

    return-void
.end method
