.class public final Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/cloudcore/db/CloudTaskDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfCloudTaskEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfCloudTaskEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllCloudTask:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAllTasks:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteTaskById:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateDownloadTaskToFinished:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateDownloadTaskToFinished_1:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateTaskFileName:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateTaskProgress:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateTaskStatus:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateTaskStatusAndProgress:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateUploadTaskToFinished:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateUploadTaskToFinished_1:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfCloudTaskEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$1;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__insertionAdapterOfCloudTaskEntity:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$2;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__deletionAdapterOfCloudTaskEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$3;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__updateAdapterOfCloudTaskEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$4;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteTaskById:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$5;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteAllTasks:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$6;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteAllCloudTask:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$7;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskProgress:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$8;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$8;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskStatusAndProgress:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$9;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$9;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateUploadTaskToFinished:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$10;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$10;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateUploadTaskToFinished_1:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$11;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$11;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateDownloadTaskToFinished:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$12;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$12;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateDownloadTaskToFinished_1:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$13;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$13;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskStatus:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$14;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$14;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskFileName:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllCloudTask()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteAllCloudTask:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteAllCloudTask:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteAllCloudTask:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public deleteAllTasks()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteAllTasks:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteAllTasks:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteAllTasks:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public deleteTask(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__deletionAdapterOfCloudTaskEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteTaskById(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteTaskById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteTaskById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfDeleteTaskById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deleteTasks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__deletionAdapterOfCloudTaskEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteTasksByIds(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM cloud_task WHERE task_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    invoke-static {v0, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public getAllDownloadedTask()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM cloud_task WHERE task_type = 2 AND task_status = 5 ORDER BY update_time DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v3, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "task_id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "cloud_file_id"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "file_name"

    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_size"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "progress"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "local_file_id"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "local_file_path"

    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "task_type"

    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "task_status"

    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "file_type"

    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "mime_type"

    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "update_time"

    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "duration"

    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "download_source"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "isCloudFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "isLocalFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "cover_img_url"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v21, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v3}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v22, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    move-object/from16 v22, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    :goto_3
    move/from16 v23, v0

    goto :goto_4

    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    goto :goto_3

    :goto_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    goto :goto_5

    :cond_3
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    :goto_5
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    goto :goto_6

    :cond_4
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    :goto_6
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    move/from16 v0, v21

    move/from16 v21, v2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    move/from16 v1, v17

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    move/from16 v2, v18

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v18, 0x1

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_7

    :cond_5
    move/from16 v17, v0

    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_6

    move/from16 v19, v0

    move/from16 v0, v18

    goto :goto_8

    :cond_6
    move/from16 v19, v0

    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v18, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    :goto_9
    move-object/from16 v1, v22

    goto :goto_a

    :cond_7
    move/from16 v18, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    goto :goto_9

    :goto_a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v0

    move/from16 v0, v23

    move/from16 v24, v18

    move/from16 v18, v2

    move/from16 v2, v21

    move/from16 v21, v17

    move/from16 v17, v24

    goto/16 :goto_0

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllDownloadedTaskLiveData()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM cloud_task WHERE task_type = 2 AND task_status = 5 ORDER BY update_time DESC"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "cloud_task"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$17;

    invoke-direct {v4, p0, v0}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$17;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllDownloadingTask()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM cloud_task WHERE task_type = 2 AND task_status != 5 ORDER BY create_time DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v3, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "task_id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "cloud_file_id"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "file_name"

    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_size"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "progress"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "local_file_id"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "local_file_path"

    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "task_type"

    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "task_status"

    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "file_type"

    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "mime_type"

    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "update_time"

    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "duration"

    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "download_source"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "isCloudFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "isLocalFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "cover_img_url"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v21, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v3}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v22, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    move-object/from16 v22, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    :goto_3
    move/from16 v23, v0

    goto :goto_4

    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    goto :goto_3

    :goto_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    goto :goto_5

    :cond_3
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    :goto_5
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    goto :goto_6

    :cond_4
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    :goto_6
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    move/from16 v0, v21

    move/from16 v21, v2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    move/from16 v1, v17

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    move/from16 v2, v18

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v18, 0x1

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_7

    :cond_5
    move/from16 v17, v0

    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_6

    move/from16 v19, v0

    move/from16 v0, v18

    goto :goto_8

    :cond_6
    move/from16 v19, v0

    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v18, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    :goto_9
    move-object/from16 v1, v22

    goto :goto_a

    :cond_7
    move/from16 v18, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    goto :goto_9

    :goto_a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v0

    move/from16 v0, v23

    move/from16 v24, v18

    move/from16 v18, v2

    move/from16 v2, v21

    move/from16 v21, v17

    move/from16 v17, v24

    goto/16 :goto_0

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllDownloadingTaskLiveData()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM cloud_task WHERE task_type = 2 AND task_status != 5 ORDER BY create_time DESC"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "cloud_task"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$20;

    invoke-direct {v4, p0, v0}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$20;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllFinishTask()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM cloud_task WHERE task_status = 5 ORDER BY update_time DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v3, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "task_id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "cloud_file_id"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "file_name"

    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_size"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "progress"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "local_file_id"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "local_file_path"

    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "task_type"

    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "task_status"

    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "file_type"

    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "mime_type"

    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "update_time"

    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "duration"

    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "download_source"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "isCloudFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "isLocalFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "cover_img_url"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v21, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v3}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v22, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    move-object/from16 v22, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    :goto_3
    move/from16 v23, v0

    goto :goto_4

    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    goto :goto_3

    :goto_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    goto :goto_5

    :cond_3
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    :goto_5
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    goto :goto_6

    :cond_4
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    :goto_6
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    move/from16 v0, v21

    move/from16 v21, v2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    move/from16 v1, v17

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    move/from16 v2, v18

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v18, 0x1

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_7

    :cond_5
    move/from16 v17, v0

    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_6

    move/from16 v19, v0

    move/from16 v0, v18

    goto :goto_8

    :cond_6
    move/from16 v19, v0

    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v18, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    :goto_9
    move-object/from16 v1, v22

    goto :goto_a

    :cond_7
    move/from16 v18, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    goto :goto_9

    :goto_a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v0

    move/from16 v0, v23

    move/from16 v24, v18

    move/from16 v18, v2

    move/from16 v2, v21

    move/from16 v21, v17

    move/from16 v17, v24

    goto/16 :goto_0

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllFinishTaskLiveData()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM cloud_task WHERE task_status = 5 ORDER BY update_time DESC"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "cloud_task"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$18;

    invoke-direct {v4, p0, v0}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$18;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllUploadedTask()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM cloud_task WHERE task_type = 1 AND task_status = 5 ORDER BY update_time DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v3, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "task_id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "cloud_file_id"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "file_name"

    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_size"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "progress"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "local_file_id"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "local_file_path"

    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "task_type"

    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "task_status"

    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "file_type"

    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "mime_type"

    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "update_time"

    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "duration"

    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "download_source"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "isCloudFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "isLocalFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "cover_img_url"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v21, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v3}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v22, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    move-object/from16 v22, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    :goto_3
    move/from16 v23, v0

    goto :goto_4

    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    goto :goto_3

    :goto_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    goto :goto_5

    :cond_3
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    :goto_5
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    goto :goto_6

    :cond_4
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    :goto_6
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    move/from16 v0, v21

    move/from16 v21, v2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    move/from16 v1, v17

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    move/from16 v2, v18

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v18, 0x1

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_7

    :cond_5
    move/from16 v17, v0

    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_6

    move/from16 v19, v0

    move/from16 v0, v18

    goto :goto_8

    :cond_6
    move/from16 v19, v0

    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v18, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    :goto_9
    move-object/from16 v1, v22

    goto :goto_a

    :cond_7
    move/from16 v18, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    goto :goto_9

    :goto_a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v0

    move/from16 v0, v23

    move/from16 v24, v18

    move/from16 v18, v2

    move/from16 v2, v21

    move/from16 v21, v17

    move/from16 v17, v24

    goto/16 :goto_0

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllUploadedTaskLiveData()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM cloud_task WHERE task_type = 1 AND task_status = 5 ORDER BY update_time DESC"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "cloud_task"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$19;

    invoke-direct {v4, p0, v0}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$19;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllUploadingTask()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM cloud_task WHERE task_type = 1 AND task_status != 5 ORDER BY create_time DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v3, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "task_id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "cloud_file_id"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "file_name"

    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_size"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "progress"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "local_file_id"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "local_file_path"

    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "task_type"

    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "task_status"

    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "file_type"

    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "mime_type"

    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "update_time"

    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "duration"

    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "download_source"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "isCloudFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "isLocalFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "cover_img_url"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v21, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v3}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v22, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    move-object/from16 v22, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    :goto_3
    move/from16 v23, v0

    goto :goto_4

    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    goto :goto_3

    :goto_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    goto :goto_5

    :cond_3
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    :goto_5
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    goto :goto_6

    :cond_4
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    :goto_6
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    move/from16 v0, v21

    move/from16 v21, v2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    move/from16 v1, v17

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    move/from16 v2, v18

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v18, 0x1

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_7

    :cond_5
    move/from16 v17, v0

    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_6

    move/from16 v19, v0

    move/from16 v0, v18

    goto :goto_8

    :cond_6
    move/from16 v19, v0

    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v18, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    :goto_9
    move-object/from16 v1, v22

    goto :goto_a

    :cond_7
    move/from16 v18, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    goto :goto_9

    :goto_a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v0

    move/from16 v0, v23

    move/from16 v24, v18

    move/from16 v18, v2

    move/from16 v2, v21

    move/from16 v21, v17

    move/from16 v17, v24

    goto/16 :goto_0

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllUploadingTaskLiveData()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM cloud_task WHERE task_type = 1 AND task_status != 5 ORDER BY create_time DESC"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "cloud_task"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$21;

    invoke-direct {v4, p0, v0}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$21;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getTaskById(Ljava/lang/String;)Lcom/transsion/cloudcore/db/CloudTaskEntity;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM cloud_task WHERE task_id = ?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "task_id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "cloud_file_id"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_name"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_size"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "progress"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "local_file_id"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "local_file_path"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "task_type"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "task_status"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "file_type"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "mime_type"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "create_time"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "update_time"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "duration"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "download_source"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "isCloudFileExist"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "isLocalFileExist"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "cover_img_url"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-eqz v20, :cond_9

    move/from16 v20, v2

    new-instance v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v2}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_1

    move/from16 v21, v4

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    move/from16 v21, v4

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    :goto_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    :goto_3
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    goto :goto_4

    :cond_4
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    :goto_4
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    goto :goto_5

    :cond_5
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    :goto_5
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    iput-object v1, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    goto :goto_8

    :cond_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_8
    move-object v4, v2

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    move-object v4, v1

    :goto_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getTaskByIdLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM cloud_task WHERE task_id = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v1, "cloud_task"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$15;

    invoke-direct {v2, p0, v0}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$15;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v1, p0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getTaskCountByTypeAndStatus(II)I
    .locals 5

    const-string v0, "SELECT COUNT(*) FROM cloud_task WHERE task_type = ? AND task_status = ?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p2, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return p2

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public getTaskCountLiveData()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT COUNT(*) FROM cloud_task"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "cloud_task"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$16;

    invoke-direct {v4, p0, v0}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$16;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getTasksByCloudFileId(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM cloud_task WHERE cloud_file_id = ?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "task_id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "cloud_file_id"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_name"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_size"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "progress"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "local_file_id"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "local_file_path"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "task_type"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "task_status"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "file_type"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "mime_type"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "create_time"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "update_time"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "duration"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "download_source"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "isCloudFileExist"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "isLocalFileExist"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "cover_img_url"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v21, v4

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v4}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v22, v2

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_1
    move-object/from16 v22, v2

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    :goto_2
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    :goto_3
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    :goto_4
    move v2, v6

    move/from16 v23, v7

    goto :goto_5

    :cond_3
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    goto :goto_4

    :goto_5
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    iput v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    goto :goto_6

    :cond_4
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    :goto_6
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    goto :goto_7

    :cond_5
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    :goto_7
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    move v7, v0

    move/from16 v6, v21

    move/from16 v21, v1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    move/from16 v1, v18

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_6

    move/from16 v17, v0

    const/4 v0, 0x1

    goto :goto_8

    :cond_6
    move/from16 v17, v0

    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v19, v0

    if-eqz v18, :cond_7

    const/4 v0, 0x1

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v1

    const/4 v1, 0x0

    iput-object v1, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    :goto_a
    move-object/from16 v1, v22

    goto :goto_b

    :cond_8
    move/from16 v18, v1

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    goto :goto_a

    :goto_b
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v0

    move v0, v7

    move/from16 v7, v23

    move/from16 v24, v2

    move-object v2, v1

    move/from16 v1, v21

    move/from16 v21, v6

    move/from16 v6, v24

    goto/16 :goto_1

    :cond_9
    move-object v1, v2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getTasksByLocalFilePath(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM cloud_task WHERE local_file_path = ?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "task_id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "cloud_file_id"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_name"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_size"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "progress"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "local_file_id"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "local_file_path"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "task_type"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "task_status"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "file_type"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "mime_type"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "create_time"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "update_time"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "duration"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "download_source"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "isCloudFileExist"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "isLocalFileExist"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "cover_img_url"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v21, v4

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v4}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v22, v2

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_1
    move-object/from16 v22, v2

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    :goto_2
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    :goto_3
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    :goto_4
    move v2, v6

    move/from16 v23, v7

    goto :goto_5

    :cond_3
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    goto :goto_4

    :goto_5
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    iput v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    goto :goto_6

    :cond_4
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    :goto_6
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    goto :goto_7

    :cond_5
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    :goto_7
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    move v7, v0

    move/from16 v6, v21

    move/from16 v21, v1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    move/from16 v1, v18

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_6

    move/from16 v17, v0

    const/4 v0, 0x1

    goto :goto_8

    :cond_6
    move/from16 v17, v0

    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v19, v0

    if-eqz v18, :cond_7

    const/4 v0, 0x1

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v1

    const/4 v1, 0x0

    iput-object v1, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    :goto_a
    move-object/from16 v1, v22

    goto :goto_b

    :cond_8
    move/from16 v18, v1

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    goto :goto_a

    :goto_b
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v0

    move v0, v7

    move/from16 v7, v23

    move/from16 v24, v2

    move-object v2, v1

    move/from16 v1, v21

    move/from16 v21, v6

    move/from16 v6, v24

    goto/16 :goto_1

    :cond_9
    move-object v1, v2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getTasksByStatusWithPaging(III)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM cloud_task WHERE task_status = ? ORDER BY update_time DESC LIMIT ? OFFSET ?"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    move/from16 v3, p1

    int-to-long v3, v3

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v3, 0x2

    move/from16 v4, p2

    int-to-long v6, v4

    invoke-virtual {v1, v3, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    move/from16 v3, p3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v2, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "task_id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "cloud_file_id"

    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_name"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_size"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "progress"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "local_file_id"

    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "local_file_path"

    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "task_type"

    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "task_status"

    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "file_type"

    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "mime_type"

    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "create_time"

    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v5, "update_time"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v3, "duration"

    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "download_source"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p3, v1

    const-string v1, "isCloudFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "isLocalFileExist"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "cover_img_url"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v20, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v3}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v21, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    move-object/from16 v21, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    :goto_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    :goto_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    :goto_3
    move/from16 v22, v0

    goto :goto_4

    :cond_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    goto :goto_3

    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    goto :goto_5

    :cond_3
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    :goto_5
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    goto :goto_6

    :cond_4
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    :goto_6
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    move/from16 v0, v20

    move/from16 v20, v2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    move/from16 v1, p3

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    move/from16 v2, v17

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v17, v0

    const/4 v0, 0x1

    goto :goto_7

    :cond_5
    move/from16 v17, v0

    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_6

    move/from16 v18, v0

    const/4 v0, 0x1

    goto :goto_8

    :cond_6
    move/from16 v18, v0

    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_7

    move/from16 p3, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    :goto_9
    move-object/from16 v1, v21

    goto :goto_a

    :cond_7
    move/from16 p3, v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    goto :goto_9

    :goto_a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v19, v0

    move/from16 v0, v22

    move/from16 v23, v17

    move/from16 v17, v2

    move/from16 v2, v20

    move/from16 v20, v23

    goto/16 :goto_0

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public insertTask(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__insertionAdapterOfCloudTaskEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public insertTasks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__insertionAdapterOfCloudTaskEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public updateDownloadTaskToFinished(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 26
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateDownloadTaskToFinished_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p2

    .line 27
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x2

    .line 28
    invoke-interface {v0, p2, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x3

    if-nez p7, :cond_0

    .line 29
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v0, p2, p7}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x4

    if-nez p6, :cond_1

    .line 31
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 32
    :cond_1
    invoke-interface {v0, p2, p6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    int-to-long p2, p5

    const/4 p4, 0x5

    .line 33
    invoke-interface {v0, p4, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p4, 0x6

    .line 34
    invoke-interface {v0, p4, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x7

    if-nez p1, :cond_2

    .line 35
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 36
    :cond_2
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 37
    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 39
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :try_start_2
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateDownloadTaskToFinished_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 42
    :try_start_3
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 43
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :goto_3
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateDownloadTaskToFinished_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 45
    throw p1
.end method

.method public updateDownloadTaskToFinished(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateDownloadTaskToFinished:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p2

    .line 3
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x2

    .line 4
    invoke-interface {v0, p2, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x3

    if-nez p7, :cond_0

    .line 5
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, p2, p7}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x4

    if-nez p6, :cond_1

    .line 7
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v0, p2, p6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    int-to-long p2, p5

    const/4 p4, 0x5

    .line 9
    invoke-interface {v0, p4, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p4, 0x6

    if-nez p8, :cond_2

    .line 10
    invoke-interface {v0, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {v0, p4, p8}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 p4, 0x7

    int-to-long p5, p9

    .line 12
    invoke-interface {v0, p4, p5, p6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p4, 0x8

    .line 13
    invoke-interface {v0, p4, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p2, 0x9

    if-nez p1, :cond_3

    .line 14
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 16
    :goto_3
    :try_start_0
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 18
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :try_start_2
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateDownloadTaskToFinished:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 21
    :try_start_3
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 22
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :goto_4
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateDownloadTaskToFinished:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 24
    throw p1
.end method

.method public updateTask(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__updateAdapterOfCloudTaskEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public updateTaskFileName(Ljava/lang/String;Ljava/lang/String;J)I
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskFileName:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    invoke-interface {v0, p2, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x3

    if-nez p1, :cond_1

    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskFileName:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskFileName:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public updateTaskProgress(Ljava/lang/String;FJ)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskProgress:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    float-to-double v2, p2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    const/4 p2, 0x2

    invoke-interface {v0, p2, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x3

    if-nez p1, :cond_0

    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskProgress:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskProgress:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public updateTaskStatus(Ljava/lang/String;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x2

    invoke-interface {v0, p2, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x3

    if-nez p1, :cond_0

    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public updateTaskStatusAndProgress(Ljava/lang/String;IFJ)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskStatusAndProgress:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x2

    float-to-double v1, p3

    invoke-interface {v0, p2, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    const/4 p2, 0x3

    invoke-interface {v0, p2, p4, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x4

    if-nez p1, :cond_0

    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskStatusAndProgress:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateTaskStatusAndProgress:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public updateTasks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__updateAdapterOfCloudTaskEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public updateUploadTaskToFinished(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 24
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateUploadTaskToFinished_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p2

    .line 25
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x2

    .line 26
    invoke-interface {v0, p2, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x3

    if-nez p5, :cond_0

    .line 27
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v0, p2, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x4

    if-nez p6, :cond_1

    .line 29
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 30
    :cond_1
    invoke-interface {v0, p2, p6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p2, 0x5

    if-nez p1, :cond_2

    .line 31
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 32
    :cond_2
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 33
    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 35
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :try_start_2
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateUploadTaskToFinished_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 38
    :try_start_3
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 39
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :goto_3
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateUploadTaskToFinished_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 41
    throw p1
.end method

.method public updateUploadTaskToFinished(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateUploadTaskToFinished:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p2

    .line 3
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x2

    .line 4
    invoke-interface {v0, p2, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x3

    if-nez p5, :cond_0

    .line 5
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, p2, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x4

    if-nez p6, :cond_1

    .line 7
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v0, p2, p6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p2, 0x5

    if-nez p7, :cond_2

    .line 9
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v0, p2, p7}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 p2, 0x6

    int-to-long p3, p8

    .line 11
    invoke-interface {v0, p2, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x7

    if-nez p1, :cond_3

    .line 12
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 14
    :goto_3
    :try_start_0
    iget-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 16
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateUploadTaskToFinished:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 19
    :try_start_3
    iget-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 20
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :goto_4
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->__preparedStmtOfUpdateUploadTaskToFinished:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 22
    throw p1
.end method
