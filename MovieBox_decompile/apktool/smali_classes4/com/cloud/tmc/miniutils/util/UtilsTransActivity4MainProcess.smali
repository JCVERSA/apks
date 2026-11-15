.class public Lcom/cloud/tmc/miniutils/util/UtilsTransActivity4MainProcess;
.super Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/cloud/tmc/miniutils/util/Utils$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;",
            ")V"
        }
    .end annotation

    .line 4
    const-class v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity4MainProcess;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    const-class v1, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity4MainProcess;

    invoke-static {p0, v0, p1, v1}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    return-void
.end method

.method public static start(Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniutils/util/Utils$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    const-class v1, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity4MainProcess;

    invoke-static {v0, p0, p1, v1}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    return-void
.end method

.method public static start(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    const-class v1, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity4MainProcess;

    invoke-static {v0, v0, p0, v1}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    return-void
.end method
