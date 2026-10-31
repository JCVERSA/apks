.class public final Lo/pi2;
.super Ljava/lang/Object;

# interfaces
.implements Lo/a00;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->UPGRADE:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;

    const/4 v1, 0x0

    const-string v2, "cold_start"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->fetchUpgradeConfig(ZZLjava/lang/String;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/pi2$a;

    invoke-direct {v1}, Lo/pi2$a;-><init>()V

    invoke-virtual {v0, v1}, Lrx/c;->x0(Lo/tu7;)Lo/wu7;

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->y()V

    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 1

    const-string v0, "FetchUpgradeTask"

    return-object v0
.end method

.method public u()Lcom/mobiuspace/framework/launchconductor/Policy;
    .locals 1

    invoke-static {p0}, Lo/a00$a;->a(Lo/a00;)Lcom/mobiuspace/framework/launchconductor/Policy;

    move-result-object v0

    return-object v0
.end method
