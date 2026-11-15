.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/callback/PackageInstallCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field public final synthetic e:Lcom/cloud/tmc/integration/model/PrepareContext;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;->a:Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;->c:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;->d:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;->e:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;->a:Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;->c:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;->d:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/a;->e:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 10
    .line 11
    move v5, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;->a(Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
