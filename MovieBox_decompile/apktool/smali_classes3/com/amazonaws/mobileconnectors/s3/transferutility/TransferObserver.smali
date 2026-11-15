.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field private h:Ljava/lang/String;

.field private i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

.field private j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;


# direct methods
.method constructor <init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 4
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e:J

    .line 8
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-void
.end method

.method constructor <init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 10
    invoke-virtual {p0, p6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->f:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic c(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e:J

    .line 2
    .line 3
    return-wide p1
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    .line 8
    .line 9
    invoke-static {v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->j(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    .line 22
    .line 23
    invoke-static {v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->j(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    .line 27
    .line 28
    :cond_1
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->d()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$1;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    .line 14
    .line 15
    iget v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->g(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 21
    .line 22
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->g(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1

    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "TransferObserver{id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", bucket=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", key=\'"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", bytesTotal="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e:J

    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", bytesTransferred="

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->f:J

    .line 60
    .line 61
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", transferState="

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ", filePath=\'"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->h:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x7d

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method
