.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/callback/PackageInstallCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->a:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->c:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->d:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->a:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->c:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->d:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 8
    .line 9
    move v4, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
