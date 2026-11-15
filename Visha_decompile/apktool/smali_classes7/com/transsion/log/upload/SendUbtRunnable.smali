.class public final Lcom/transsion/log/upload/SendUbtRunnable;
.super Lcom/transsion/log/common/SendLogRunnable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/log/upload/SendUbtRunnable;",
        "Lcom/transsion/log/common/SendLogRunnable;",
        "<init>",
        "()V",
        "Lec9;",
        "sendLogCallback",
        "Lzfb;",
        "setSendLogCallback",
        "(Lec9;)V",
        "Ljava/io/File;",
        "logFile",
        "sendLog",
        "(Ljava/io/File;)V",
        "mSendLogCallback",
        "Lec9;",
        "UBT_release"
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
.field private mSendLogCallback:Lec9;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/log/common/SendLogRunnable;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMSendAction$p$s346984188(Lcom/transsion/log/upload/SendUbtRunnable;)Lyb9;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/common/SendLogRunnable;->mSendAction:Lyb9;

    return-object p0
.end method

.method public static final synthetic access$getMSendLogCallback$p(Lcom/transsion/log/upload/SendUbtRunnable;)Lec9;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic access$sendLog$doUpload(Ljava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/log/upload/SendUbtRunnable;->sendLog$doUpload(Ljava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[JI)V

    return-void
.end method

.method private static final sendLog$doUpload(Ljava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[JI)V
    .locals 8

    if-eqz p0, :cond_0

    new-instance v7, Lcom/transsion/log/upload/SendUbtRunnable$a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/log/upload/SendUbtRunnable$a;-><init>(Ljava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;II[JLjava/io/File;)V

    sget-object p1, Lcom/transsion/log/upload/net/RequestManager;->a:Lcom/transsion/log/upload/net/RequestManager;

    invoke-virtual {p1}, Lcom/transsion/log/upload/net/RequestManager;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "getName(...)"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, p1, p0}, Lcom/transsion/log/upload/net/RequestManager;->b(Lcs4;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized sendLog(Ljava/io/File;)V
    .locals 5

    const/4 v0, 0x3

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/transsion/log/upload/record/UploadRecordUtil;->a:Lcom/transsion/log/upload/record/UploadRecordUtil;

    sget-object v2, Lvdb;->a:Lvdb$a;

    invoke-virtual {v2}, Lvdb$a;->h()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/log/common/SendLogRunnable;->mSendAction:Lyb9;

    invoke-virtual {v3}, Lyb9;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/log/upload/record/UploadRecordUtil;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v0, [J

    fill-array-data v1, :array_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p1, p0, v0, v1, v2}, Lcom/transsion/log/upload/SendUbtRunnable;->sendLog$doUpload(Ljava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[JI)V

    invoke-virtual {p0}, Lcom/transsion/log/common/SendLogRunnable;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "SendUbtRunnable"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :array_0
    .array-data 8
        0x0
        0x1388
        0x2710
    .end array-data
.end method

.method public final setSendLogCallback(Lec9;)V
    .locals 0

    return-void
.end method
