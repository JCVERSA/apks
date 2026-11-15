.class Lcom/amazonaws/services/s3/UploadObjectObserver$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/s3/UploadObjectObserver;->c(Lcom/amazonaws/services/s3/internal/PartCreationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/services/s3/model/UploadPartResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/amazonaws/services/s3/OnFileDelete;

.field final synthetic d:Lcom/amazonaws/services/s3/UploadObjectObserver;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/s3/UploadObjectObserver;Lcom/amazonaws/services/s3/model/UploadPartRequest;Ljava/io/File;Lcom/amazonaws/services/s3/OnFileDelete;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->d:Lcom/amazonaws/services/s3/UploadObjectObserver;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->c:Lcom/amazonaws/services/s3/OnFileDelete;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 5

    .line 1
    const-string v0, " which has already been uploaded"

    .line 2
    .line 3
    const-string v1, "Ignoring failure to delete file "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->d:Lcom/amazonaws/services/s3/UploadObjectObserver;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 9
    .line 10
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/UploadObjectObserver;->d(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    .line 11
    .line 12
    .line 13
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v2, v0}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->c:Lcom/amazonaws/services/s3/OnFileDelete;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-interface {v0, v2}, Lcom/amazonaws/services/s3/OnFileDelete;->b(Lcom/amazonaws/services/s3/internal/FileDeletionEvent;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-object v3

    .line 62
    :catchall_0
    move-exception v3

    .line 63
    iget-object v4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->c:Lcom/amazonaws/services/s3/OnFileDelete;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-interface {v0, v2}, Lcom/amazonaws/services/s3/OnFileDelete;->b(Lcom/amazonaws/services/s3/internal/FileDeletionEvent;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    .line 96
    .line 97
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v2, v0}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    throw v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->a()Lcom/amazonaws/services/s3/model/UploadPartResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
