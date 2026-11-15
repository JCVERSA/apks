.class public final synthetic Lcom/cloud/tmc/miniapp/utils/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/m;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/m;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/m;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/utils/m;->d:Landroid/os/Bundle;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/utils/m;->e:Landroid/os/Bundle;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/utils/m;->f:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/cloud/tmc/miniapp/utils/m;->g:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/m;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/m;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/m;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/utils/m;->d:Landroid/os/Bundle;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/utils/m;->e:Landroid/os/Bundle;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/m;->f:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/utils/m;->g:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
