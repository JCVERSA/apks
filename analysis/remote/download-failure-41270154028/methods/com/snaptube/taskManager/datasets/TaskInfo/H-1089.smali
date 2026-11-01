.method public H(Landroid/database/Cursor;)V
    .locals 6

    const-string v0, "progress"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    :cond_0
    const-string v0, "total_bytes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    :cond_1
    const-string v0, "current_bytes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    :cond_2
    const-string v0, "download_speed"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f:J

    :cond_3
    const-string v0, "referer"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    :cond_4
    const-string v0, "status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->valueOf(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    :cond_5
    const-string v0, "runningDescription"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j:Ljava/lang/String;

    :cond_6
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    :cond_7
    const-string v0, "thumbnailUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    :cond_8
    const-string v0, "createdTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    :cond_9
    const-string v0, "filePath"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->n:Ljava/lang/String;

    :cond_a
    const-string v0, "requestUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    :cond_b
    const-string v0, "formatTag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    :cond_c
    const-string v0, "finalFormatTag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    :cond_d
    const-string v0, "contentType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phoenix/download/DownloadInfo$ContentType;->valueOf(Ljava/lang/String;)Lcom/phoenix/download/DownloadInfo$ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    :cond_e
    const-string v0, "media_duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->s:J

    :cond_f
    const-string v0, "unread"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_10

    const/4 v0, 0x1

    goto :goto_0

    :cond_10
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->t:Z

    :cond_11
    const-string v0, "current_download_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    :cond_12
    const-string v0, "md5"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    :cond_13
    const-string v0, "identity"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    :cond_14
    const-string v0, "visible"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_1

    :cond_15
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    :cond_16
    const-string v0, "meta_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->y:Ljava/lang/String;

    :cond_17
    const-string v0, "has_mp3_meta"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_18

    const/4 v0, 0x1

    goto :goto_2

    :cond_18
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->z:Z

    :cond_19
    const-string v0, "app_version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->A:Ljava/lang/String;

    :cond_1a
    const-string v0, "ad_pos_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->D:Ljava/lang/String;

    :cond_1b
    const-string v0, "category"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h:Ljava/lang/String;

    :cond_1c
    const-string v0, "lock"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_1d

    const/4 v0, 0x1

    goto :goto_3

    :cond_1d
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    :cond_1e
    const-string v0, "originPath"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    :cond_1f
    const-string v0, "lockTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->H:J

    :cond_20
    :try_start_0
    const-string v0, "content_type2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->valueOf(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->UNKNOWN:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    :cond_21
    :goto_4
    const-string v0, "task_fail_times"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    :cond_22
    const-string v0, "app_guide_home_install_times"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->E:I

    :cond_23
    const-string v0, "notification_send_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_25

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_24

    const/4 v0, 0x1

    goto :goto_5

    :cond_24
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Z:Z

    :cond_25
    const-string v0, "start_times"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_26

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    :cond_26
    const-string v0, "finishedTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_27

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h0:J

    :cond_27
    const-string v0, "has_auto_retry"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_29

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_28

    const/4 v0, 0x1

    goto :goto_6

    :cond_28
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i0:Z

    :cond_29
    const-string v0, "has_manual_retry"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_2a

    const/4 v2, 0x1

    :cond_2a
    iput-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j0:Z

    :cond_2b
    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->P(Landroid/database/Cursor;)V

    return-void
.end method
