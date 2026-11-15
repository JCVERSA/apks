.class public Lcom/transsion/playercommon/utils/storage/FileOperateUtils$f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/utils/storage/FileOperateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$f;->a:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$f;->a:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->o(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Landroid/widget/SeekBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$f;->a:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->o(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$f;->a:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->K()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mAudioVolumeReceiver onReceive error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_FileOperateUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
