.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferProgressListener"
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

.field private b:J

.field final synthetic c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->b()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a()Lcom/amazonaws/logging/Log;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "Reset Event triggered. Resetting the bytesCurrent to 0."

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->b:J

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->b:J

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->a()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    add-long v6, v0, v2

    .line 33
    .line 34
    iput-wide v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->b:J

    .line 35
    .line 36
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 37
    .line 38
    iget-wide v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i:J

    .line 39
    .line 40
    cmp-long v0, v6, v0

    .line 41
    .line 42
    if-lez v0, :cond_1

    .line 43
    .line 44
    iput-wide v6, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i:J

    .line 45
    .line 46
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 47
    .line 48
    iget v5, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 49
    .line 50
    iget-wide v8, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 51
    .line 52
    const/4 v10, 0x1

    .line 53
    invoke-virtual/range {v4 .. v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p1
.end method
