.class public final Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->Q(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Ljava/time/LocalDateTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1",
        "Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;",
        "Ljava/lang/Void;",
        "doInBackground",
        "()Ljava/lang/Void;",
        "result",
        "Lzfb;",
        "onSuccess",
        "(Ljava/lang/Void;)V",
        "cloudcore_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $duration:J

.field final synthetic $startTime:J

.field final synthetic $taskId:Ljava/lang/String;

.field final synthetic $taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

.field final synthetic this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iput-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    iput-wide p4, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$startTime:J

    iput-wide p6, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$duration:J

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v6

    .line 2
    :goto_0
    iget-object v8, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {v8}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->o(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    iget-object v9, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_11

    iget-object v8, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {v8}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getStatus()Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    move-result-object v8

    sget-object v10, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->CANCELED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    if-ne v8, v10, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 4
    iget-wide v12, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$startTime:J

    sub-long/2addr v10, v12

    const/4 v8, 0x1

    if-nez v4, :cond_3

    const-wide/16 v12, 0x2710

    cmp-long v12, v10, v12

    if-ltz v12, :cond_3

    .line 5
    iget-object v2, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v3, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->p(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    iget-object v3, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v4, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskId:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-static {v3, v4, v5, v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->q(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v9

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 7
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v4, v8

    .line 8
    :cond_3
    const-string v12, "Get transcode status failed too many times"

    const/4 v13, 0x3

    if-lt v5, v13, :cond_4

    .line 9
    iget-object v1, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESS_FAIL:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    .line 10
    iget-object v1, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v0, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskId:Ljava/lang/String;

    new-instance v2, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v3, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v3

    invoke-direct {v2, v3, v12}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    return-object v9

    :cond_4
    long-to-float v10, v10

    .line 11
    iget-wide v14, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$duration:J

    long-to-float v11, v14

    div-float/2addr v10, v11

    const/16 v11, 0x64

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-long v10, v10

    const-wide/16 v14, 0x5

    cmp-long v16, v10, v14

    if-gez v16, :cond_5

    move-wide v10, v14

    :cond_5
    const-wide/16 v14, 0x63

    cmp-long v16, v10, v14

    if-lez v16, :cond_6

    move-wide/from16 v19, v14

    goto :goto_2

    :cond_6
    move-wide/from16 v19, v10

    :goto_2
    const-wide/16 v10, 0x32

    cmp-long v10, v19, v10

    if-ltz v10, :cond_9

    if-nez v6, :cond_9

    .line 12
    iget-object v2, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v3, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->p(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 13
    iget-object v3, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v5, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskId:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-static {v3, v5, v6, v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->q(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v9

    :cond_7
    move v5, v1

    goto :goto_3

    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 14
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v6, v8

    :cond_9
    if-lt v5, v13, :cond_a

    .line 15
    iget-object v1, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESS_FAIL:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    .line 16
    iget-object v1, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v0, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskId:Ljava/lang/String;

    new-instance v2, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v3, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v3

    invoke-direct {v2, v3, v12}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    return-object v9

    :cond_a
    cmp-long v10, v19, v14

    if-ltz v10, :cond_f

    if-nez v7, :cond_b

    .line 17
    iget-object v7, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v10, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskId:Ljava/lang/String;

    const-wide/16 v23, 0x63

    const-wide/16 v25, 0x64

    move-object/from16 v21, v7

    move-object/from16 v22, v10

    invoke-static/range {v21 .. v26}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->v(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;JJ)V

    move v7, v8

    .line 18
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    const-wide/16 v14, 0x1388

    cmp-long v8, v10, v14

    if-ltz v8, :cond_10

    .line 19
    iget-object v2, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v3, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->p(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 20
    iget-object v3, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v5, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskId:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-static {v3, v5, v8, v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->q(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v9

    :cond_c
    move v5, v1

    goto :goto_4

    :cond_d
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v13, :cond_e

    .line 21
    iget-object v1, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESS_FAIL:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    .line 22
    iget-object v1, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v0, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskId:Ljava/lang/String;

    new-instance v2, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v3, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v3

    invoke-direct {v2, v3, v12}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    return-object v9

    .line 23
    :cond_e
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_5

    .line 24
    :cond_f
    iget-object v8, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v10, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->$taskId:Ljava/lang/String;

    const-wide/16 v21, 0x64

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    invoke-static/range {v17 .. v22}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->v(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;JJ)V

    :cond_10
    :goto_5
    const-wide/16 v10, 0x3e8

    .line 25
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_11
    :goto_6
    return-object v9
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 1
    return-void
.end method
