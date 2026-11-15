.class public final Lio/appmetrica/analytics/impl/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ServiceStorageProvider;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/Wk;

.field public final c:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Wk;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ck;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ck;->b:Lio/appmetrica/analytics/impl/Wk;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/ck;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public final getAppDataStorage()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ck;->a:Landroid/content/Context;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getAppDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final getAppFileStorage()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ck;->a:Landroid/content/Context;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getAppStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final getDbStorage()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ck;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object p0
.end method

.method public final getSdkDataStorage()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ck;->a:Landroid/content/Context;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->sdkStorage(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final getTempCacheStorage()Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;
    .locals 6

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ck;->a:Landroid/content/Context;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->o:Lio/appmetrica/analytics/impl/Qm;

    if-nez v0, :cond_1

    new-instance v0, Lio/appmetrica/analytics/impl/Qm;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/g7;->e:Landroid/content/Context;

    sget-object v2, Lio/appmetrica/analytics/impl/um;->a:Lio/appmetrica/analytics/impl/um;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/g7;->n:Lio/appmetrica/analytics/impl/Pm;

    if-nez v3, :cond_0

    new-instance v3, Lio/appmetrica/analytics/impl/Pm;

    new-instance v4, Lio/appmetrica/analytics/impl/Sk;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g7;->h()Lio/appmetrica/analytics/impl/f7;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/Sk;-><init>(Lio/appmetrica/analytics/impl/f7;)V

    const-string v5, "temp_cache"

    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/Pm;-><init>(Lio/appmetrica/analytics/impl/F6;Ljava/lang/String;)V

    iput-object v3, p0, Lio/appmetrica/analytics/impl/g7;->n:Lio/appmetrica/analytics/impl/Pm;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/g7;->n:Lio/appmetrica/analytics/impl/Pm;

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/Qm;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/um;Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g7;->o:Lio/appmetrica/analytics/impl/Qm;

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g7;->o:Lio/appmetrica/analytics/impl/Qm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final legacyModulePreferences()Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Eb;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ck;->b:Lio/appmetrica/analytics/impl/Wk;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/Eb;-><init>(Lio/appmetrica/analytics/impl/Wk;)V

    return-object v0
.end method

.method public final modulePreferences(Ljava/lang/String;)Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/cd;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ck;->b:Lio/appmetrica/analytics/impl/Wk;

    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/impl/cd;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Wk;)V

    return-object v0
.end method
