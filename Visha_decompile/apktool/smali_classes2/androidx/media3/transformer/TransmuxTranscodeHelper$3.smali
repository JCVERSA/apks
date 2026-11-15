.class Landroidx/media3/transformer/TransmuxTranscodeHelper$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/TransmuxTranscodeHelper;->copyFileAsync(Ljava/io/File;Ljava/io/File;)Lim5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$copyFileSettableFuture:Lcom/google/common/util/concurrent/g;

.field final synthetic val$destination:Ljava/io/File;

.field final synthetic val$source:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/common/util/concurrent/g;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p2, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$3;->val$copyFileSettableFuture:Lcom/google/common/util/concurrent/g;

    iput-object p3, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$3;->val$source:Ljava/io/File;

    iput-object p4, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$3;->val$destination:Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$3;->val$copyFileSettableFuture:Lcom/google/common/util/concurrent/g;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$h;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$3;->val$source:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$3;->val$destination:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Lmo0;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    iget-object v3, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$3;->val$copyFileSettableFuture:Lcom/google/common/util/concurrent/g;

    invoke-virtual {v3, v0}, Lcom/google/common/util/concurrent/g;->set(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p0

    :goto_1
    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_2
    :try_start_4
    iget-object p0, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$3;->val$copyFileSettableFuture:Lcom/google/common/util/concurrent/g;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/g;->setException(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :catch_3
    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_4
    throw p0
.end method
