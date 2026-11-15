.class Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$3;->this$0:Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .locals 3
    .param p1    # Landroidx/sqlite/db/SupportSQLiteStatement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_1

    .line 6
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 8
    :goto_1
    iget-object p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_2

    .line 9
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 p0, 0x4

    .line 11
    iget-wide v0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 12
    iget p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    float-to-double v0, p0

    const/4 p0, 0x5

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 13
    iget p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 14
    iget-object p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    const/4 v0, 0x7

    if-nez p0, :cond_3

    .line 15
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 16
    :cond_3
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 17
    :goto_3
    iget p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    int-to-long v0, p0

    const/16 p0, 0x8

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 18
    iget p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    int-to-long v0, p0

    const/16 p0, 0x9

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 19
    iget p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    int-to-long v0, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 20
    iget-object p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    const/16 v0, 0xb

    if-nez p0, :cond_4

    .line 21
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 22
    :cond_4
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_4
    const/16 p0, 0xc

    .line 23
    iget-wide v0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xd

    .line 24
    iget-wide v0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xe

    .line 25
    iget-wide v0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 26
    iget p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    int-to-long v0, p0

    const/16 p0, 0xf

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 27
    iget-boolean p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    const/16 v0, 0x10

    int-to-long v1, p0

    .line 28
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 29
    iget-boolean p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    const/16 v0, 0x11

    int-to-long v1, p0

    .line 30
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 31
    iget-object p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    const/16 v0, 0x12

    if-nez p0, :cond_5

    .line 32
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 33
    :cond_5
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 34
    :goto_5
    iget-object p0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    const/16 p2, 0x13

    if-nez p0, :cond_6

    .line 35
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 36
    :cond_6
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_6
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroidx/sqlite/db/SupportSQLiteStatement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/cloudcore/db/CloudTaskEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "UPDATE OR ABORT `cloud_task` SET `task_id` = ?,`cloud_file_id` = ?,`file_name` = ?,`file_size` = ?,`progress` = ?,`local_file_id` = ?,`local_file_path` = ?,`task_type` = ?,`task_status` = ?,`file_type` = ?,`mime_type` = ?,`create_time` = ?,`update_time` = ?,`duration` = ?,`download_source` = ?,`isCloudFileExist` = ?,`isLocalFileExist` = ?,`cover_img_url` = ? WHERE `task_id` = ?"

    return-object p0
.end method
