.class public final Lcom/cloud/h5update/utils/a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/h5update/download/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/h5update/utils/a;->a(Landroid/content/Context;Lcom/cloud/h5update/bean/PreloadResource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/h5update/bean/PreloadResource;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cloud/h5update/bean/PreloadResource;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/h5update/utils/a$a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/h5update/utils/a$a;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/h5update/download/DownloadTask;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lv6/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Lv6/b;->onZipDownloadCancel(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public b(Lcom/cloud/h5update/download/DownloadTask;)V
    .locals 6

    .line 1
    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lv6/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p1, p0, Lcom/cloud/h5update/utils/a$a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lcom/cloud/h5update/bean/DownloadEntity;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getCompletedSize()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget-object p1, p0, Lcom/cloud/h5update/utils/a$a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 26
    .line 27
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lcom/cloud/h5update/bean/DownloadEntity;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getTotalSize()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    invoke-interface/range {v0 .. v5}, Lv6/b;->onDownloadProcess(Ljava/lang/String;JJ)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public c(Lcom/cloud/h5update/download/DownloadTask;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Lcom/cloud/h5update/download/DownloadTask;I)V
    .locals 2

    .line 1
    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lv6/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x67

    .line 19
    .line 20
    const-string v1, "ERROR_DOWNLOAD"

    .line 21
    .line 22
    invoke-interface {p1, p2, v0, v1}, Lv6/b;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public e(Lcom/cloud/h5update/download/DownloadTask;)V
    .locals 3

    .line 1
    new-instance p1, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "url"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lv6/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Lv6/b;->onZipDownloadFinish(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/cloud/h5update/utils/a$a;->c:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/cloud/h5update/utils/l;->n(Landroid/content/Context;Lcom/cloud/h5update/bean/PreloadResource;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->i()Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->a()V

    .line 59
    .line 60
    .line 61
    return-void
.end method
