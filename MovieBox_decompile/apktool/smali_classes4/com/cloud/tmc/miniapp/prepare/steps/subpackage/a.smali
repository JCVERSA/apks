.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/callback/PackageInstallCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field public final synthetic c:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic d:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->a:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->b:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->c:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->d:Lcom/cloud/tmc/integration/model/AppModel;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->a:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->b:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->c:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->d:Lcom/cloud/tmc/integration/model/AppModel;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->e:Ljava/lang/String;

    .line 10
    .line 11
    move v5, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
