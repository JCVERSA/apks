.class public abstract Lo5b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/transsion/widgetslib/dialog/d;

.field public static b:Llpb;


# direct methods
.method public static synthetic a(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo5b;->g(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    const-string v0, "visha_ConvertUtils"

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/transsion/tranplayer/MediaMetadataRetriever;

    invoke-direct {v1}, Lcom/transsion/tranplayer/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0}, Lcom/transsion/tranplayer/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x10

    invoke-virtual {v1, p0}, Lcom/transsion/tranplayer/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasAudioTrack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "yes"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaMetadataRetriever;->release()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaMetadataRetriever;->release()V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasAudioTrack error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaMetadataRetriever;->release()V

    const/4 p0, -0x1

    return p0

    :goto_0
    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaMetadataRetriever;->release()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "TransMp3Utils.checkAudioTrack Can not be called in the main thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/app/Dialog;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lo5b;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-static {v0}, Lo5b;->c(Landroid/app/Dialog;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lo5b;->b(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.tools.activities.ConverterMainActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "video_to_mp3_item_id"

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lo5b;->f(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lk16;->b(Z)V

    return-void
.end method

.method public static h(Landroid/app/Activity;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x1f

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    sget v0, Lcom/transsion/playercommon/R$string;->convert_to_audio:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.audio.activities.AudioPlayerActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->toIntent(Landroid/content/Intent;)V

    if-nez p0, :cond_1

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static i()V
    .locals 2

    sget-object v0, Lo5b;->b:Llpb;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llpb;->j(Lii1;)V

    sget-object v0, Lo5b;->b:Llpb;

    invoke-virtual {v0}, Llpb;->k()V

    :cond_0
    invoke-static {}, Lo5b;->d()V

    return-void
.end method

.method public static j(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3

    invoke-static {}, Llpb;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Llpb;->h(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->B(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->s(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    new-instance v0, Ln5b;

    invoke-direct {v0, p0, p1}, Ln5b;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/playercommon/R$string;->have_add_to_converting_list:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->snackbar_check:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lgq9;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
