.class final Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lo/bx2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->g(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/bx2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lo/mg8;",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1;->invoke()V

    sget-object v0, Lo/mg8;->a:Lo/mg8;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1;->$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v2

    const-string v3, "any_page_visible"

    invoke-virtual {v0, v1, v2, v3}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->r(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1;->$activity:Landroid/app/Activity;

    const-string v2, "any_page_visible_normal"

    invoke-static {v0, v1, v2}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->e(Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
