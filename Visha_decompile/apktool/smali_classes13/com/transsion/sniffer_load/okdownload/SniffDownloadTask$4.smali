.class public Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lzy/okgo/model/Progress;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->c:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    iput-object p2, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->a:Lcom/lzy/okgo/model/Progress;

    iput-object p3, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/lzy/okgo/model/Progress;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->b(Lcom/lzy/okgo/model/Progress;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/lzy/okgo/model/Progress;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/lzy/okgo/model/Progress;->getOriginSite()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lb23;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ".zip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lav3;->C(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decompressGzip result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanCompleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->a:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->c:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-static {p1}, Lzu3;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lr13;->m(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4$1;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4$1;-><init>(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->c:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-virtual {v0, p2}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->updateOriginUrl(Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->a:Lcom/lzy/okgo/model/Progress;

    new-instance p2, Lmq9;

    invoke-direct {p2, p0, p1}, Lmq9;-><init>(Lcom/lzy/okgo/model/Progress;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method
