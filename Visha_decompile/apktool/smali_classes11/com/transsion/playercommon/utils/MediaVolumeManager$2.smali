.class Lcom/transsion/playercommon/utils/MediaVolumeManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/utils/MediaVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/utils/MediaVolumeManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/MediaVolumeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$2;->this$0:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$2;->this$0:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$2;->this$0:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeDialog Dismiss Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaVolumeManager"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
