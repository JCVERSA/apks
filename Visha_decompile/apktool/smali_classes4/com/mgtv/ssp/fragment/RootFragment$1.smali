.class Lcom/mgtv/ssp/fragment/RootFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/fragment/RootFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/fragment/RootFragment;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/fragment/RootFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/fragment/RootFragment$1;->a:Lcom/mgtv/ssp/fragment/RootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment$1;->a:Lcom/mgtv/ssp/fragment/RootFragment;

    invoke-static {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->a(Lcom/mgtv/ssp/fragment/RootFragment;)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/ssp/fragment/RootFragment$1;->a:Lcom/mgtv/ssp/fragment/RootFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mgtv/ssp/fragment/RootFragment;->a(Lcom/mgtv/ssp/fragment/RootFragment;Z)Z

    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment$1;->a:Lcom/mgtv/ssp/fragment/RootFragment;

    iput-boolean v0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->j:Z

    return-void
.end method
