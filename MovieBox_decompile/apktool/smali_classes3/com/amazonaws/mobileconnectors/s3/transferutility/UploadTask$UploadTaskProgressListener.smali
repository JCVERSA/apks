.class Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadTaskProgressListener"
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide p1, p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i:J

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->a:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized b(IJ)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b()Lcom/amazonaws/logging/Log;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "Update received for unknown part. Ignoring."

    .line 23
    .line 24
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :try_start_1
    iput-wide p2, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->c:J

    .line 32
    .line 33
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-wide/16 p2, 0x0

    .line 46
    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 64
    .line 65
    iget-wide v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->c:J

    .line 66
    .line 67
    add-long/2addr p2, v0

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->a:J

    .line 70
    .line 71
    cmp-long p1, p2, v0

    .line 72
    .line 73
    if-lez p1, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget v1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 88
    .line 89
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-wide v4, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 96
    .line 97
    const/4 v6, 0x1

    .line 98
    move-wide v2, p2

    .line 99
    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    .line 100
    .line 101
    .line 102
    iput-wide p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    :cond_2
    monitor-exit p0

    .line 105
    return-void

    .line 106
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    throw p1
.end method
