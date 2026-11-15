.class Lcom/mgtv/downloader/a/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/downloader/a/a$a;->a(Ljava/lang/String;IIZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:J

.field final synthetic g:Lcom/mgtv/downloader/a/a$a;


# direct methods
.method public constructor <init>(Lcom/mgtv/downloader/a/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/a/a$a$1;->g:Lcom/mgtv/downloader/a/a$a;

    iput-object p2, p0, Lcom/mgtv/downloader/a/a$a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/downloader/a/a$a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mgtv/downloader/a/a$a$1;->c:Ljava/lang/String;

    iput p5, p0, Lcom/mgtv/downloader/a/a$a$1;->d:I

    iput-boolean p6, p0, Lcom/mgtv/downloader/a/a$a$1;->e:Z

    iput-wide p7, p0, Lcom/mgtv/downloader/a/a$a$1;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "DownloadSDK_1.8.0"

    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hunantv/imgo/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "+++ Verify File MD5 +++"

    invoke-static {v2, v0}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MD5("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, v1, Lcom/mgtv/downloader/a/a$a$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mgtv/downloader/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MD5_RESULT("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIME(ms): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "+++++++++++++++++++++++"

    invoke-static {v2, v3}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a$1;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ", fileMD5Calc: "

    const-string v4, "taskID: "

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$a$1;->g:Lcom/mgtv/downloader/a/a$a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", check MD5 success, fileMD5: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$a$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mgtv/downloader/a/a$a$1;->g:Lcom/mgtv/downloader/a/a$a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/mgtv/downloader/net/entity/a;->k(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a$1;->g:Lcom/mgtv/downloader/a/a$a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-string v5, "0"

    invoke-virtual {v2, v5}, Lcom/mgtv/downloader/net/entity/a;->k(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$a$1;->g:Lcom/mgtv/downloader/a/a$a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", check MD5 failed, fileMD5: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$a$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldmd5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&newmd5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    :goto_1
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a$1;->g:Lcom/mgtv/downloader/a/a$a;

    iget-object v3, v2, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a$1;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&ft=mp4&ex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v11, v1, Lcom/mgtv/downloader/a/a$a$1;->d:I

    iget-boolean v12, v1, Lcom/mgtv/downloader/a/a$a$1;->e:Z

    iget-wide v14, v1, Lcom/mgtv/downloader/a/a$a$1;->f:J

    const-string v16, ""

    const/4 v4, 0x1

    const-string v6, "305004"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/16 v13, 0xc8

    invoke-static/range {v3 .. v16}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    :goto_2
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$a$1;->g:Lcom/mgtv/downloader/a/a$a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/mgtv/downloader/a/a$a$1;->g:Lcom/mgtv/downloader/a/a$a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a$1;->g:Lcom/mgtv/downloader/a/a$a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v2

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a$1;->g:Lcom/mgtv/downloader/a/a$a;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v0, v2, v1}, Lcom/mgtv/downloader/a/b;->d(ILcom/mgtv/downloader/net/entity/a;)V

    :cond_1
    return-void
.end method
