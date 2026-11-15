.class Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "TranThubLightingManager"

    const-string v1, "ITranLightingManager binder died, notifying listeners"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->access$000(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    :try_start_1
    invoke-interface {v0}, Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;->onServiceDied()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TranThubLightingManager"

    const-string v2, "Error notifying listener on service death"

    invoke-static {v1, v2, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
