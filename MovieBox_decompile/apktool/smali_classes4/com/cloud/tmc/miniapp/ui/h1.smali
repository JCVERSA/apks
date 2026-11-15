.class public final synthetic Lcom/cloud/tmc/miniapp/ui/h1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

.field public final synthetic b:Lcom/cloud/tmc/integration/structure/Page;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/h1;->a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/h1;->b:Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/h1;->a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/h1;->b:Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->d0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
