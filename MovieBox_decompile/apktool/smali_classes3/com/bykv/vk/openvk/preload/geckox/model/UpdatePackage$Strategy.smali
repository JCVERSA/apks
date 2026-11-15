.class public Lcom/bykv/vk/openvk/preload/geckox/model/UpdatePackage$Strategy;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/model/UpdatePackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strategy"
.end annotation


# instance fields
.field private deleteIfFail:Z
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "del_if_download_failed"
    .end annotation
.end field

.field private deleteOldPackageBeforeDownload:Z
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "del_old_pkg_before_download"
    .end annotation
.end field

.field private needUnzip:Z
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "need_unzip"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/model/UpdatePackage$Strategy;->deleteIfFail:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public isDeleteIfFail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/model/UpdatePackage$Strategy;->deleteIfFail:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDeleteOldPackageBeforeDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/model/UpdatePackage$Strategy;->deleteOldPackageBeforeDownload:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNeedUnzip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/model/UpdatePackage$Strategy;->needUnzip:Z

    .line 2
    .line 3
    return v0
.end method

.method public setDeleteIfFail(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/preload/geckox/model/UpdatePackage$Strategy;->deleteIfFail:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDeleteOldPackageBeforeDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/preload/geckox/model/UpdatePackage$Strategy;->deleteOldPackageBeforeDownload:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNeedUnzip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/preload/geckox/model/UpdatePackage$Strategy;->needUnzip:Z

    .line 2
    .line 3
    return-void
.end method
