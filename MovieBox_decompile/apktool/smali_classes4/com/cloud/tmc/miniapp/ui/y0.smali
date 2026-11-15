.class public final synthetic Lcom/cloud/tmc/miniapp/ui/y0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/Page;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/y0;->a:Lcom/cloud/tmc/integration/structure/Page;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/y0;->b:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final success()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/y0;->a:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/y0;->b:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->e0(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
