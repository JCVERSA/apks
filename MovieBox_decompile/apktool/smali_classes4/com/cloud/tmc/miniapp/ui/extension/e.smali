.class public final synthetic Lcom/cloud/tmc/miniapp/ui/extension/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->a:Landroid/view/ViewGroup;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->b:Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->c:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->b:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->c:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
