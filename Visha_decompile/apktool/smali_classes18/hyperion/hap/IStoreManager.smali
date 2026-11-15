.class public interface abstract Lhyperion/hap/IStoreManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getKeys(I)Ljava/util/List;
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "hyperion.permission.USE_SECURE_STORAGE",
            "hyperion.permission.USE_PERSIST_STORAGE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getPersistKeys()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_PERSIST_STORAGE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lhyperion/hap/IStoreManager;->getKeys(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSecureKeys()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_STORAGE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lhyperion/hap/IStoreManager;->getKeys(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract loadByteArray(Ljava/lang/String;)[B
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_STORAGE"
    .end annotation
.end method

.method public abstract loadFile(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_STORAGE"
    .end annotation
.end method

.method public abstract loadString(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_STORAGE"
    .end annotation
.end method

.method public abstract loadStringPersist(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_PERSIST_STORAGE"
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;I)V
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "hyperion.permission.USE_SECURE_STORAGE",
            "hyperion.permission.USE_PERSIST_STORAGE"
        }
    .end annotation
.end method

.method public removePersistKey(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_PERSIST_STORAGE"
    .end annotation

    const/4 v0, 0x2

    invoke-interface {p0, p1, v0}, Lhyperion/hap/IStoreManager;->remove(Ljava/lang/String;I)V

    return-void
.end method

.method public removeSecureKey(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_STORAGE"
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lhyperion/hap/IStoreManager;->remove(Ljava/lang/String;I)V

    return-void
.end method

.method public abstract saveByteArray(Ljava/lang/String;[B)V
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_STORAGE"
    .end annotation
.end method

.method public abstract saveFile(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_STORAGE"
    .end annotation
.end method

.method public abstract saveString(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_STORAGE"
    .end annotation
.end method

.method public abstract saveStringPersist(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_PERSIST_STORAGE"
    .end annotation
.end method
