.class public final synthetic Lcom/cloud/tmc/miniapp/ui/q1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentManager;

.field public final synthetic b:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/q1;->a:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/q1;->b:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/q1;->a:Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/q1;->b:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->a(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
