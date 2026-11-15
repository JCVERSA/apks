.class public abstract Lcom/transsion/cloudcore/db/CloudTaskDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/transsion/cloudcore/db/CloudTaskEntity;,
        Lcom/transsion/dbdata/beans/VideoCloudCache;,
        Lcom/transsion/dbdata/beans/MIMediaLibraryCache;
    }
    exportSchema = false
    version = 0x2
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "cloud_task_v3.db"

.field static final MIGRATION_1_2:Landroidx/room/migration/Migration;

.field private static final TAG:Ljava/lang/String; = "CloudTaskDatabase"

.field private static volatile sSingleton:Lcom/transsion/cloudcore/db/CloudTaskDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDatabase$1;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/cloudcore/db/CloudTaskDatabase$1;-><init>(II)V

    sput-object v0, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static closeDatabase()V
    .locals 4

    const-string v0, "CloudTaskDatabase"

    sget-object v1, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->sSingleton:Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->sSingleton:Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->sSingleton:Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->close()V

    const/4 v1, 0x0

    sput-object v1, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->sSingleton:Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    const-string v1, "Cloud task database closed"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close cloud task database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/transsion/cloudcore/db/CloudTaskDatabase;
    .locals 5

    sget-object v0, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->sSingleton:Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->sSingleton:Lcom/transsion/cloudcore/db/CloudTaskDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    const-string v3, "cloud_task_v3.db"

    invoke-static {v1, v2, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    sget-object v2, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    new-instance v2, Lcom/transsion/cloudcore/db/CloudTaskDatabase$2;

    invoke-direct {v2}, Lcom/transsion/cloudcore/db/CloudTaskDatabase$2;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    sput-object v1, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->sSingleton:Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    const-string v1, "CloudTaskDatabase"

    const-string v2, "Cloud task database instance created"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "CloudTaskDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create cloud task database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->sSingleton:Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract cloudTaskDao()Lcom/transsion/cloudcore/db/CloudTaskDao;
.end method

.method public abstract miMediaLibraryCacheDao()Lhw5;
.end method

.method public abstract videoCloudCacheDao()Lapb;
.end method
