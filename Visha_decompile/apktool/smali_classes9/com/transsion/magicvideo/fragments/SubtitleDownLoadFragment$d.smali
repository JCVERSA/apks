.class public Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y0(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;Lsz2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lsz2;

.field public final synthetic c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lsz2;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->b:Lsz2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;Lgu8;Lsz2;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->b(Lgu8;Lsz2;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Lgu8;Lsz2;)V
    .locals 5

    invoke-virtual {p1}, Lgu8;->e()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "statue"

    const-string v3, "vd_cp_subtitle_downloadsub_downloadstatue"

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    move-result-object v0

    invoke-static {v0}, Lay9;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {v1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lay9;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {v4}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->G:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {v3}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {v4}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->c:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->t0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lgu8;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lav3;->E(Ljava/lang/String;Lgu8;Lsz2;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    const-string p0, "response failed"

    invoke-interface {p2, p0}, Lsz2;->onFail(Ljava/lang/String;)V

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onResponse "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SubtitleDownActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubtitleDownActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "vd_cp_subtitle_downloadsub_downloadstatue"

    const-string v1, "statue"

    invoke-static {v0, v1, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->b:Lsz2;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lsz2;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->b:Lsz2;

    new-instance v0, Ls4a;

    invoke-direct {v0, p0, p2, p1}, Ls4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;Lgu8;Lsz2;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method
