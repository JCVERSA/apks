.class public final synthetic Lcom/cloud/tmc/miniapp/ui/extension/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;ZIILcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->a:Landroid/view/ViewGroup;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->b:Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->c:Lcom/cloud/tmc/integration/structure/App;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->d:Z

    .line 11
    .line 12
    iput p5, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->e:I

    .line 13
    .line 14
    iput p6, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->f:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->g:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->b:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->c:Lcom/cloud/tmc/integration/structure/App;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->d:Z

    .line 8
    .line 9
    iget v4, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->e:I

    .line 10
    .line 11
    iget v5, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->f:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->g:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->b(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;ZIILcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
