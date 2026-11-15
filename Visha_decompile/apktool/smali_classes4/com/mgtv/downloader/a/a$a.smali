.class final Lcom/mgtv/downloader/a/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/downloader/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/downloader/a/a;

.field private volatile b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mgtv/downloader/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/downloader/a/a$a;->b:Z

    iput-object p2, p0, Lcom/mgtv/downloader/a/a$a;->c:Ljava/lang/String;

    return-void
.end method

.method private a()I
    .locals 14

    .line 212
    const-string v0, ""

    const-string v1, "taskID: "

    const/4 v2, -0x2

    const/4 v3, 0x4

    :try_start_0
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v4

    .line 213
    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v5

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v7}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", check file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 215
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_0

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", empty file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v7

    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 217
    :cond_0
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 218
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 219
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v12}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", filePath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", dir: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", filename: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v4, v6}, Lcom/mgtv/downloader/dir/a;->b(Ljava/lang/String;)Z

    move-result v4

    const/4 v8, 0x5

    if-nez v4, :cond_2

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", file path can\'t write!, fileDir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 222
    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 223
    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v4

    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    iget-object v6, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v6, v6, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v8, 0x6

    invoke-interface {v4, v5, v6, v8, v0}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    :cond_1
    return v7

    .line 225
    :cond_2
    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v4}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v4}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 226
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 228
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_5

    .line 229
    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 230
    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v4

    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    iget-object v6, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v6, v6, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v4, v5, v6, v3, v0}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    .line 231
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", create file failed, path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v2

    .line 232
    :cond_5
    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v4}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_7

    .line 233
    const-string v4, "DownloadSDK_1.8.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "complete size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v6, v6, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v6}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hunantv/imgo/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Long;)V

    .line 235
    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 236
    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 237
    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v4

    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    iget-object v6, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v6, v6, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v4, v5, v6, v8, v0}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    .line 238
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", downloading file might been deleted, block and activate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :cond_7
    return v9

    .line 239
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 241
    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v5

    iget-object v6, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v6

    iget-object v7, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v7, v7, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v5, v6, v7, v3, v0}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    .line 242
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failed to create file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exception: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v2
.end method

.method private a(II)I
    .locals 37

    move-object/from16 v1, p0

    .line 58
    const-string v2, " / "

    const-string v3, "/"

    const-string v4, ", download file end"

    const-string v5, "."

    const-string v6, ""

    iget-object v7, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v7, v7, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v7}, Lcom/mgtv/downloader/net/entity/a;->j()Ljava/lang/String;

    move-result-object v7

    .line 59
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    .line 60
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v9, v9, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v9}, Lcom/mgtv/downloader/net/entity/a;->b()Ljava/lang/String;

    move-result-object v23

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 62
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v9, v9, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v9}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v9

    .line 63
    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v10}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v26, 0x0

    cmp-long v10, v10, v26

    const/4 v15, 0x4

    const-string v14, "taskID: "

    if-lez v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v12, v12, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v12}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", video already downloaded, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 65
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 66
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v3

    iget v3, v3, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->checkMD5Success:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mgtv/downloader/net/entity/a;->k(Ljava/lang/String;)V

    .line 67
    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v19, 0xc8

    const-string v22, ""

    const/4 v10, 0x0

    const-string v12, ""

    const-string v13, "&ft=hls"

    const/16 v16, 0x1

    move-object v9, v1

    move-object/from16 v11, v23

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    return v8

    .line 68
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/mgtv/downloader/a/a$a;->a()I

    move-result v13

    if-eq v8, v13, :cond_1

    .line 69
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/16 v19, 0xc8

    const-string v22, ""

    const/4 v10, -0x1

    const-string v12, "340001"

    const-string v1, "&ft=hls"

    const-wide/16 v14, -0x1

    move-object/from16 v11, v23

    move v2, v13

    move-object v13, v1

    move/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    return v2

    .line 70
    :cond_1
    :try_start_0
    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v10}, Lcom/mgtv/downloader/net/entity/a;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 71
    const-string v11, "arange"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 72
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 73
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 74
    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v12, v12, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v12}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v12, v12, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v12}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mgtv/downloader/net/entity/a;->l(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v10, v0

    goto/16 :goto_2

    .line 75
    :cond_2
    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v8

    const-string v13, ".m3u8"

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 76
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "playlist"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    .line 77
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_0

    .line 78
    :cond_4
    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v12, v12, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/mgtv/downloader/net/entity/a;->l(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 79
    :cond_5
    :goto_0
    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".0"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/mgtv/downloader/net/entity/a;->l(Ljava/lang/String;)V

    goto :goto_3

    .line 80
    :cond_6
    :goto_1
    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v12, v12, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v12}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v12, v12, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v12}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mgtv/downloader/net/entity/a;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 81
    :goto_2
    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v13, v13, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v13}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/mgtv/downloader/net/entity/a;->l(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    :goto_3
    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v5

    .line 84
    const-string v10, ".mp4"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "hls"

    const/4 v13, 0x0

    if-nez v10, :cond_8

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 86
    :cond_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 87
    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v5, v3}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/String;)V

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newPath: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "DownloadSDK_1.8.0"

    invoke-static {v10, v5}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/mgtv/downloader/a/a$a;->b()Z

    move-result v5

    const/16 v28, -0x2

    if-nez v5, :cond_a

    .line 91
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/16 v19, 0xc8

    const-string v22, ""

    const/4 v10, -0x1

    const-string v12, "340002"

    const-string v13, "&ft=hls"

    const-wide/16 v14, -0x1

    move-object/from16 v11, v23

    move/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    return v28

    .line 92
    :cond_a
    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v29, -0x5

    if-eq v5, v8, :cond_b

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", switching to pause after open local file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 94
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/16 v19, 0xc8

    const-string v22, ""

    const/4 v10, 0x0

    const-string v12, "340003"

    const-string v13, "&ft=hls"

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    move-object/from16 v11, v23

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    return v29

    .line 95
    :cond_b
    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v10

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v11

    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v12, v12, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    .line 96
    invoke-virtual {v12}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v13, v13, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    .line 97
    invoke-virtual {v13}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v15, v15, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    .line 98
    invoke-virtual {v15}, Lcom/mgtv/downloader/net/entity/a;->m()Ljava/lang/String;

    move-result-object v15

    .line 99
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object v9, v10

    move v10, v11

    move-object/from16 v11, v23

    move-object v8, v14

    move-object v14, v15

    const/16 v31, 0x4

    move-object v15, v3

    move-wide/from16 v16, v18

    move/from16 v18, v7

    .line 100
    invoke-virtual/range {v9 .. v18}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->createDownloadTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)I

    move-result v3

    invoke-static {v5, v3}, Lcom/mgtv/downloader/a/a;->d(Lcom/mgtv/downloader/a/a;I)I

    .line 101
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    const/4 v5, -0x1

    if-gez v3, :cond_d

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hls create failed, ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 103
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v2

    const-string v3, "33."

    const/16 v4, -0x10

    if-ne v4, v2, :cond_c

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startTask failed, url not m3u8 url, ret: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 105
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    mul-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v19, 0xc8

    const-string v22, ""

    const/4 v10, -0x1

    const-string v13, "&ft=hls"

    const-wide/16 v14, -0x1

    move-object/from16 v11, v23

    move/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    goto :goto_7

    .line 106
    :cond_c
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    mul-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v19, 0xc8

    const-string v22, ""

    const/4 v10, -0x1

    const-string v13, "&ft=hls"

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    move-object/from16 v11, v23

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    :goto_7
    const/4 v1, -0x6

    return v1

    .line 107
    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 108
    invoke-static {}, Lcom/mgtv/downloader/a/a;->m()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "offline_limit_speed"

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setUserData(Ljava/util/Map;)V

    .line 110
    :try_start_1
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v9, v9, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v9}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v9

    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", begin seek file to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", begin read stream from connection"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 112
    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 113
    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_e

    .line 114
    :try_start_2
    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v10

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v11

    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v12, v12, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v10, v11, v12, v6}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1e

    :catch_1
    move-exception v0

    move-object v14, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    :goto_8
    const/16 v26, 0x0

    const/16 v30, 0x0

    goto/16 :goto_15

    .line 115
    :cond_e
    :goto_9
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 116
    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;Z)Z

    .line 117
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v13}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", STREAM START: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/hunantv/imgo/util/f;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    move-wide v11, v10

    move-object v10, v9

    move v9, v5

    .line 118
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v15, v11

    const-wide/16 v17, 0x3e8

    cmp-long v13, v15, v17

    if-ltz v13, :cond_11

    .line 119
    :try_start_4
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v11

    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v12}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v12

    iget-object v13, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v13, v13, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v11, v12, v13}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getDownloadInfoParameter(ILcom/mgtv/downloader/net/entity/a;)V

    .line 120
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v11

    iget-wide v11, v11, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->downloadSize:J

    cmp-long v11, v11, v26

    if-lez v11, :cond_f

    .line 121
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v5

    iget-wide v9, v5, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->downloadSize:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 122
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v5

    iget v5, v5, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->totalTsNum:I

    .line 123
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v9

    iget v9, v9, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->playableTsNum:I

    .line 124
    :cond_f
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v26

    if-eqz v11, :cond_10

    .line 125
    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v11, v10}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Long;)V

    .line 126
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 127
    iget-object v13, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v13}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v13

    if-eqz v13, :cond_11

    .line 128
    iget-object v13, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v13}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v13

    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v15}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v15

    iget-object v14, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v14, v14, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v13, v15, v14, v6}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_11
    move v14, v9

    move-object/from16 v32, v10

    move-wide/from16 v33, v11

    .line 129
    :try_start_5
    iget-boolean v9, v1, Lcom/mgtv/downloader/a/a$a;->b:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v9, :cond_12

    .line 130
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", download break - thread stoped"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_b
    const/4 v2, 0x2

    goto/16 :goto_c

    .line 131
    :cond_12
    :try_start_7
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v9, v9, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v9}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v10, 0x1

    if-eq v9, v10, :cond_13

    .line 132
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", download break - mission changed, status: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_b

    :cond_13
    if-lt v14, v5, :cond_15

    if-lez v5, :cond_15

    if-lez v14, :cond_15

    .line 133
    :try_start_9
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getHlsDownloadSelect()I

    move-result v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v10, 0x1

    if-ne v10, v9, :cond_15

    .line 134
    :try_start_a
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v9, v10, v11}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getDownloadInfoParameter(ILcom/mgtv/downloader/net/entity/a;)V

    .line 135
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v9

    iget-wide v9, v9, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->downloadSize:J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    cmp-long v9, v9, v26

    if-lez v9, :cond_14

    .line 136
    :try_start_b
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v5

    iget-wide v9, v5, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->downloadSize:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 137
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v5

    iget v5, v5, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->totalTsNum:I

    .line 138
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v9

    iget v14, v9, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->playableTsNum:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_14
    move-object/from16 v9, v32

    .line 139
    :try_start_c
    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v10, v9}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Long;)V

    .line 140
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", download break - already completed, size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v11}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", tsNum: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 141
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 142
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v5

    iget v5, v5, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->checkMD5Success:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mgtv/downloader/net/entity/a;->k(Ljava/lang/String;)V

    .line 143
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const-string v12, ""

    const-string v13, "&ft=hls"

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->cdnIP:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v10, 0x0

    const/16 v17, 0x1

    const/16 v19, 0xc8

    move-object v9, v2

    move-object/from16 v11, v23

    const/4 v2, 0x2

    move/from16 v16, v17

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    move-object/from16 v22, v5

    :try_start_d
    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_c
    move v5, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_d
    const/4 v13, 0x0

    const/16 v30, 0x0

    goto/16 :goto_14

    :catch_2
    move-exception v0

    :goto_e
    move-object v14, v0

    move v5, v2

    :goto_f
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    const/4 v2, 0x2

    goto :goto_e

    :cond_15
    const/4 v15, 0x2

    goto :goto_10

    :catch_4
    move-exception v0

    const/4 v15, 0x2

    move-object v14, v0

    move v5, v15

    goto :goto_f

    .line 144
    :goto_10
    :try_start_e
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getHasReportCDN3()I

    move-result v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-ne v9, v15, :cond_16

    .line 145
    :try_start_f
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v2

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v9, v9, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2, v5, v9}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getDownloadInfoParameter(ILcom/mgtv/downloader/net/entity/a;)V

    .line 146
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setHasReportCDN3(I)V

    .line 147
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getErrorCode()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "&ft=hls"

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->cdnIP:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/4 v10, -0x1

    const/16 v19, 0xc8

    move-object/from16 v11, v23

    move v5, v15

    move-wide/from16 v14, v16

    move/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    move-object/from16 v22, v2

    :try_start_10
    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", download break - three cdn failed, stop Task error: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getErrorCode()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    goto/16 :goto_d

    :catch_5
    move-exception v0

    :goto_11
    move-object v14, v0

    goto/16 :goto_f

    :catch_6
    move-exception v0

    move v5, v15

    goto :goto_11

    :cond_16
    move/from16 v30, v5

    move v5, v15

    const/4 v15, 0x0

    .line 149
    :try_start_11
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getHasReportCDN3()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_17

    .line 150
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v9, v10, v11}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getDownloadInfoParameter(ILcom/mgtv/downloader/net/entity/a;)V

    .line 151
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const-string v12, ""

    const-string v13, "&ft=hls"

    iget-object v10, v9, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v10}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v10

    iget-object v11, v10, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->cdnIP:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/4 v10, 0x0

    const/16 v18, 0x1

    const/16 v19, 0xc8

    move-object/from16 v22, v11

    move-object/from16 v11, v23

    move/from16 v35, v14

    move v3, v15

    move-wide/from16 v14, v16

    move/from16 v16, v18

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    :try_start_12
    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setHasReportCDN3(I)V

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", three cdn success, continue downloading"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_13

    :catch_7
    move-exception v0

    :goto_12
    move-object v14, v0

    move v2, v3

    move/from16 v26, v2

    move/from16 v30, v26

    goto/16 :goto_15

    :catch_8
    move-exception v0

    move v3, v15

    goto :goto_12

    :cond_17
    move/from16 v35, v14

    move v3, v15

    .line 154
    :goto_13
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getHlsDownloadSelect()I

    move-result v9

    if-ne v9, v5, :cond_1c

    .line 155
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getErrorCode()I

    move-result v2

    .line 156
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "&ft=hls"

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v10

    iget-object v14, v10, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->cdnIP:Ljava/lang/String;

    const/4 v10, -0x1

    const-wide/16 v15, -0x1

    const/16 v19, 0xc8

    move-object/from16 v11, v23

    move-object/from16 v22, v14

    move-wide v14, v15

    move/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 157
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", downloading break - stop Task"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const v9, 0x499c0

    if-ne v9, v2, :cond_18

    move v2, v3

    move v9, v2

    move/from16 v30, v9

    const/4 v13, 0x1

    goto :goto_14

    :cond_18
    const v9, 0x499c1

    if-ne v9, v2, :cond_19

    move v2, v3

    move v9, v2

    move v13, v9

    const/16 v30, 0x1

    goto :goto_14

    :cond_19
    const v9, 0x49a0a

    if-ne v9, v2, :cond_1a

    move v9, v3

    move v13, v9

    move/from16 v30, v13

    const/4 v2, 0x1

    goto :goto_14

    :cond_1a
    move v2, v3

    move v13, v2

    move/from16 v30, v13

    const/4 v9, 0x1

    .line 158
    :goto_14
    :try_start_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", STREAM END: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/hunantv/imgo/util/f;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 159
    :try_start_14
    iget-object v7, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v7}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 160
    iget-object v7, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v7}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v7

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v7, v10, v11, v6}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    .line 161
    :catch_9
    :cond_1b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v4

    iget-object v7, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v7}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->stopTask(I)I

    move/from16 v36, v13

    move v13, v3

    move/from16 v3, v30

    move/from16 v30, v36

    goto/16 :goto_1c

    :catch_a
    move-exception v0

    move-object v14, v0

    move/from16 v26, v9

    move/from16 v3, v30

    move/from16 v30, v13

    goto :goto_15

    :cond_1c
    move/from16 v5, v30

    move-object/from16 v10, v32

    move-wide/from16 v11, v33

    move/from16 v9, v35

    goto/16 :goto_a

    :catch_b
    move-exception v0

    move v5, v15

    const/4 v3, 0x0

    goto/16 :goto_12

    :catch_c
    move-exception v0

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto/16 :goto_12

    .line 163
    :goto_15
    :try_start_15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 164
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->l(Lcom/mgtv/downloader/a/a;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 165
    const-string v9, "99.2000"

    :goto_16
    move-object v12, v9

    goto :goto_17

    .line 166
    :cond_1d
    const-string v9, "33.2000"

    goto :goto_16

    .line 167
    :goto_17
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9, v14}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    .line 168
    const-string v9, "No+space+left+on+device"

    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_20

    const-string v9, "No space left on device"

    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1e

    goto :goto_18

    .line 169
    :cond_1e
    const-string v9, "write+failed"

    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1f

    const-string v9, "write failed"

    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 170
    :cond_1f
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v9, v9, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 171
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 172
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->f(Lcom/mgtv/downloader/a/a;)V

    .line 173
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v9

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    move/from16 v13, v31

    invoke-interface {v9, v10, v11, v13, v6}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    goto :goto_19

    .line 174
    :cond_20
    :goto_18
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v9, v9, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 175
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 176
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->f(Lcom/mgtv/downloader/a/a;)V

    .line 177
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v9

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v13, 0x1

    invoke-interface {v9, v10, v11, v13, v6}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    .line 178
    :cond_21
    :goto_19
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->l(Lcom/mgtv/downloader/a/a;)Z

    move-result v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const-string v10, "&ft=hls"

    const-string v11, "errmsg="

    if-eqz v9, :cond_22

    .line 179
    :try_start_16
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v10}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v10

    iget-object v11, v10, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->cdnIP:Ljava/lang/String;

    const/4 v10, -0x1

    const/16 v19, 0xc8

    move-object/from16 v22, v11

    move-object/from16 v11, v23

    move-object/from16 v31, v14

    move-object/from16 v27, v15

    move-wide/from16 v14, v16

    move/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    goto :goto_1a

    :cond_22
    move-object/from16 v31, v14

    move-object/from16 v27, v15

    .line 180
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v10}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v10

    iget-object v11, v10, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->cdnIP:Ljava/lang/String;

    const/4 v10, -0x1

    const/16 v19, 0xc8

    move-object/from16 v22, v11

    move-object/from16 v11, v23

    move/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, v7

    move-wide/from16 v20, v24

    invoke-static/range {v9 .. v22}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 181
    :goto_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", download file error: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_23

    move-object/from16 v15, v27

    goto :goto_1b

    :cond_23
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    :goto_1b
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 182
    :try_start_17
    iget-object v7, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v7}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v7

    if-eqz v7, :cond_24

    .line 183
    iget-object v7, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v7}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v7

    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v9

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v7, v9, v10, v6}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    .line 184
    :catch_d
    :cond_24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v9}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v4

    iget-object v7, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v7}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->stopTask(I)I

    move/from16 v9, v26

    const/4 v13, 0x1

    :goto_1c
    const/4 v4, -0x3

    if-nez v13, :cond_2c

    if-eqz v9, :cond_25

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", download failed, break"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v4

    :cond_25
    if-eqz v30, :cond_26

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", md5 check failed, break"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 v1, -0x8

    return v1

    :cond_26
    if-eqz v3, :cond_27

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", write local file failed, break"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v28

    :cond_27
    if-eqz v2, :cond_29

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", space not enough, notify app and break"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 190
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 191
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 192
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v2

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v4, v6}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    :cond_28
    return v28

    .line 193
    :cond_29
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2b

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_2b

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    .line 194
    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2a

    goto :goto_1d

    :cond_2a
    const/4 v2, 0x1

    return v2

    .line 195
    :cond_2b
    :goto_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", download pause, status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v29

    :cond_2c
    return v4

    .line 196
    :goto_1e
    :try_start_18
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 197
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v3

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    iget-object v7, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v7, v7, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v3, v5, v7, v6}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_e

    .line 198
    :catch_e
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v3

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->stopTask(I)I

    .line 200
    throw v2
.end method

.method private a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lcom/mgtv/irouting/okhttp/c;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/mgtv/irouting/okhttp/c;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Lcom/mgtv/irouting/okhttp/HttpDnsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/16 p1, 0xbb8

    .line 4
    invoke-virtual {v0, p1}, Lcom/mgtv/irouting/okhttp/c;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/mgtv/irouting/okhttp/c;->setReadTimeout(I)V

    .line 6
    const-string p1, "GET"

    invoke-virtual {v0, p1}, Lcom/mgtv/irouting/okhttp/c;->setRequestMethod(Ljava/lang/String;)V

    .line 7
    const-string p1, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/irouting/okhttp/c;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string p1, "Accept"

    const-string v1, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/irouting/okhttp/c;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string p1, "Accept-Language"

    const-string v1, "zh-CN"

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/irouting/okhttp/c;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object p1, p1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Referer"

    invoke-virtual {v0, v1, p1}, Lcom/mgtv/irouting/okhttp/c;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string p1, "Charset"

    const-string v1, "UTF-8"

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/irouting/okhttp/c;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string p1, "User-Agent"

    invoke-static {}, Lcom/mgtv/downloader/util/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/irouting/okhttp/c;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Range"

    invoke-virtual {v0, p1, p0}, Lcom/mgtv/irouting/okhttp/c;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;IIZJ)V
    .locals 11

    move-object v1, p0

    .line 201
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->k()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 204
    :cond_1
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 206
    :cond_2
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v4, 0x0

    if-nez v0, :cond_3

    move-wide v6, v4

    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_0
    cmp-long v0, v6, v4

    if-gtz v0, :cond_4

    return-void

    .line 208
    :cond_4
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_5

    move-wide v8, v4

    goto :goto_1

    .line 209
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_1
    cmp-long v0, v8, v4

    if-gtz v0, :cond_6

    return-void

    :cond_6
    cmp-long v0, v6, v8

    if-gez v0, :cond_7

    return-void

    .line 210
    :cond_7
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/mgtv/downloader/a/a$a$1;

    move-object v0, v10

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/mgtv/downloader/a/a$a$1;-><init>(Lcom/mgtv/downloader/a/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 211
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(ZI)V
    .locals 13

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [download thread]doDownload - retry: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->d(Lcom/mgtv/downloader/a/a;)V

    .line 16
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;Z)Z

    .line 17
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->e(Lcom/mgtv/downloader/a/a;)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x5

    if-eq v5, v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 19
    :goto_1
    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a/a;->f(Lcom/mgtv/downloader/a/a;)V

    .line 21
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->j()V

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", no url found, failed mURL="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_3
    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mgtv/downloader/util/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 24
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 25
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a/a;->f(Lcom/mgtv/downloader/a/a;)V

    .line 26
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->j()V

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", no domains found, failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v8, 0x4

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v8, 0x0

    move v9, v2

    :goto_2
    if-gt v9, v6, :cond_a

    .line 29
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 30
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mgtv/downloader/a/a$a;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v12}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", try with domain: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    if-nez p1, :cond_5

    if-ge p2, v7, :cond_6

    .line 32
    :cond_5
    iget-object v8, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v8}, Lcom/mgtv/downloader/a/a;->g(Lcom/mgtv/downloader/a/a;)I

    move-result v8

    if-eq v7, v8, :cond_6

    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    .line 33
    :cond_6
    iget-object v8, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v8, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v11}, Lcom/mgtv/downloader/net/entity/a;->v()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "&svrip=%s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->h(Lcom/mgtv/downloader/a/a;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 35
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mSwitchCDN:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v11}, Lcom/mgtv/downloader/a/a;->g(Lcom/mgtv/downloader/a/a;)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", retrying with url: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :cond_7
    if-ge v9, v6, :cond_8

    move v8, v2

    goto :goto_3

    :cond_8
    move v8, v7

    .line 36
    :goto_3
    iget-object v11, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {v11, v10, v8, v0}, Lcom/mgtv/downloader/a/a;->a(Ljava/lang/String;II)Lcom/mgtv/downloader/net/entity/DownloadData;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", get real url success = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/mgtv/downloader/net/entity/DownloadData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 38
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", get real url error downloadData = null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const-wide/16 v10, 0x3e8

    .line 39
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v10

    .line 40
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v12}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_a
    :goto_5
    if-eqz v8, :cond_e

    .line 41
    invoke-virtual {v8}, Lcom/mgtv/downloader/net/entity/DownloadData;->getInfo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto/16 :goto_8

    .line 42
    :cond_b
    invoke-virtual {v8}, Lcom/mgtv/downloader/net/entity/DownloadData;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v5, "error"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {v8}, Lcom/mgtv/downloader/net/entity/DownloadData;->getCode()I

    move-result p2

    const/16 v5, 0x26c

    if-lt p2, v5, :cond_d

    invoke-virtual {v8}, Lcom/mgtv/downloader/net/entity/DownloadData;->getCode()I

    move-result p2

    const/16 v5, 0x275

    if-gt p2, v5, :cond_d

    .line 43
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a/a;->f(Lcom/mgtv/downloader/a/a;)V

    .line 44
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a/a;->i(Lcom/mgtv/downloader/a/a;)I

    move-result p1

    if-ge p1, v4, :cond_c

    .line 45
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a/a;->j(Lcom/mgtv/downloader/a/a;)I

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", second layer return failed, need retry first layer, code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/mgtv/downloader/net/entity/DownloadData;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mSecondLayerTryTimes: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p2}, Lcom/mgtv/downloader/a/a;->i(Lcom/mgtv/downloader/a/a;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object p1, p1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 48
    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p0, v7}, Lcom/mgtv/downloader/a/a;->a(Z)I

    goto :goto_6

    .line 49
    :cond_c
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->j()V

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", second layer return failed, return failed, mSecondLayerTryTimes: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p2}, Lcom/mgtv/downloader/a/a;->i(Lcom/mgtv/downloader/a/a;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p0, v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;I)I

    :goto_6
    return-void

    .line 52
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start download after get real download url"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DownloadSDK_1.8.0"

    invoke-static {v1, p2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/mgtv/downloader/a/a$a;->b(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a/a;->f(Lcom/mgtv/downloader/a/a;)V

    :goto_7
    return-void

    .line 56
    :cond_e
    :goto_8
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a/a;->f(Lcom/mgtv/downloader/a/a;)V

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", get real url failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(II)I
    .locals 47

    move-object/from16 v1, p0

    .line 43
    const-string v2, "Content-Range"

    const-string v3, "errmsg="

    const-string v4, "ms"

    const-string v5, "close time= "

    const-string v6, "&ft=mp4"

    const-string v7, ", download file end"

    iget-object v8, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v8, v8, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v8}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v8

    .line 44
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    .line 45
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    cmp-long v9, v9, v11

    const/4 v10, 0x1

    .line 46
    const-string v14, "taskID: "

    if-lez v9, :cond_0

    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v9, v9, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v9}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v9, v15, v11

    if-lez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v15, v15, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v15}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v8, v8, v15

    if-ltz v8, :cond_0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video already downloaded, return "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v10

    .line 48
    :cond_0
    iget-object v8, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v8, v8, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v8}, Lcom/mgtv/downloader/net/entity/a;->j()Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v10

    .line 50
    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v9, v9, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v9}, Lcom/mgtv/downloader/net/entity/a;->b()Ljava/lang/String;

    move-result-object v9

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 52
    invoke-direct/range {p0 .. p0}, Lcom/mgtv/downloader/a/a$a;->a()I

    move-result v15

    if-eq v10, v15, :cond_1

    .line 53
    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/16 v25, 0xc8

    const-string v28, ""

    const/16 v16, -0x1

    const-string v18, "340001"

    const-string v19, "&ft=mp4"

    const-wide/16 v20, -0x1

    move v2, v15

    move-object v15, v1

    move-object/from16 v17, v9

    move/from16 v22, p1

    move/from16 v23, p2

    move/from16 v24, v8

    move-wide/from16 v26, v29

    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    return v2

    .line 54
    :cond_1
    new-instance v15, Lcom/mgtv/downloader/util/c$a;

    invoke-direct {v15}, Lcom/mgtv/downloader/util/c$a;-><init>()V

    const/16 v31, -0x3

    .line 55
    :try_start_0
    invoke-direct {v1, v9}, Lcom/mgtv/downloader/a/a$a;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v11

    .line 56
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    move/from16 v18, v12

    .line 57
    :goto_0
    invoke-virtual {v11, v10}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_17

    if-eqz v12, :cond_2

    move/from16 v19, v10

    .line 58
    :try_start_1
    const-string v10, "Content-Length"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 59
    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v20, v11

    move-wide/from16 v10, v16

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v10, v3

    move-object v11, v6

    move-object/from16 v33, v15

    :goto_1
    const-wide/16 v20, 0x0

    goto/16 :goto_2e

    :cond_2
    move/from16 v19, v10

    :cond_3
    if-nez v12, :cond_28

    move-object/from16 v20, v11

    const-wide/16 v10, 0x0

    .line 60
    :goto_2
    :try_start_2
    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v12, v12, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_16

    move-object/from16 v32, v3

    :try_start_3
    const-string v3, "%s"

    invoke-virtual {v12}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    add-long v16, v10, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v33, v7

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/mgtv/downloader/net/entity/a;->i(Ljava/lang/String;)V

    .line 61
    const-string v3, "Total=%d&Range_bytes=%d-&ContentLength=%d"

    iget-object v7, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v7, v7, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v7}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v7

    .line 62
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v13, v7, v12}, [Ljava/lang/Object;

    move-result-object v7

    .line 63
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_14

    move-object/from16 v34, v4

    move/from16 v12, v18

    move-object/from16 v7, v20

    :goto_3
    const/16 v4, 0x12e

    move-object/from16 v35, v5

    .line 64
    const-string v5, "301"

    move-object/from16 v36, v13

    const-string v13, "DownloadSDK_1.8.0"

    if-eq v12, v4, :cond_26

    const/16 v4, 0x12d

    if-ne v12, v4, :cond_4

    move-object/from16 v21, v2

    move-object/from16 v37, v7

    move-wide/from16 v40, v10

    move-object/from16 v10, v32

    move-object/from16 v4, v34

    move-object/from16 v7, v35

    move-object v11, v6

    move-object/from16 v6, v33

    move-object/from16 v33, v15

    move-object v15, v5

    move-object v5, v13

    move-object/from16 v13, v36

    goto/16 :goto_2d

    .line 65
    :cond_4
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v13

    iget-object v13, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v13, v13, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v13}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/mgtv/downloader/util/c$a;->b:Ljava/lang/String;

    .line 66
    invoke-virtual {v7, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_14

    const-string v13, ""

    if-nez v4, :cond_5

    move-object v2, v13

    goto :goto_4

    :cond_5
    :try_start_5
    invoke-virtual {v7, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, v15, Lcom/mgtv/downloader/util/c$a;->c:Ljava/lang/String;

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/mgtv/downloader/util/c$a;->a:Ljava/lang/String;

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/mgtv/downloader/util/c$a;->d:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_14

    const/16 v2, 0xc8

    if-eq v12, v2, :cond_6

    const/16 v2, 0xce

    if-eq v12, v2, :cond_6

    .line 69
    :try_start_6
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v4, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v4}, Lcom/mgtv/downloader/net/entity/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;Ljava/lang/String;)V

    .line 70
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v28, ""
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    const/16 v16, -0x1

    move-object v4, v15

    move-object v15, v2

    move-object/from16 v17, v9

    move-wide/from16 v20, v10

    move/from16 v22, p1

    move/from16 v23, p2

    move/from16 v24, v8

    move/from16 v25, v12

    move-wide/from16 v26, v29

    :try_start_7
    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getting length, got illegal response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    return v31

    :catch_1
    move-exception v0

    :goto_5
    move-object v2, v0

    move-object/from16 v33, v4

    move-wide/from16 v20, v10

    move-object/from16 v10, v32

    move-object v11, v6

    goto/16 :goto_2e

    :catch_2
    move-exception v0

    move-object v4, v15

    goto :goto_5

    :cond_6
    move-object v4, v15

    .line 72
    :try_start_8
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_13

    const-wide/32 v15, 0xc800

    cmp-long v5, v2, v15

    if-gez v5, :cond_8

    cmp-long v2, v10, v15

    if-gez v2, :cond_7

    .line 73
    :try_start_9
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v3, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;Ljava/lang/String;)V

    .line 74
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const-string v18, "305001"

    const-string v19, "&ft=mp4"

    const-string v28, ""

    const/16 v16, -0x1

    move-object/from16 v17, v9

    move-wide/from16 v20, v10

    move/from16 v22, p1

    move/from16 v23, p2

    move/from16 v24, v8

    move/from16 v25, v12

    move-wide/from16 v26, v29

    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->m(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-static {v2, v4, v5, v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;Lcom/mgtv/downloader/util/c$a;Lcom/mgtv/downloader/net/entity/a;I)V

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Length too small: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->m(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-static {v2, v4, v5, v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;Lcom/mgtv/downloader/util/c$a;Lcom/mgtv/downloader/net/entity/a;I)V

    return v31

    .line 77
    :cond_7
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    move-object/from16 v5, v36

    invoke-virtual {v2, v5}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Long;)V

    .line 78
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mgtv/downloader/net/entity/a;->b(Ljava/lang/Long;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    move-wide v2, v10

    goto/16 :goto_7

    :cond_8
    move-object/from16 v5, v36

    .line 79
    :try_start_a
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v15, v15, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v15}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide/from16 v17, v2

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_13

    add-long/2addr v2, v10

    cmp-long v2, v15, v2

    if-eqz v2, :cond_a

    .line 80
    :try_start_b
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v3, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;Ljava/lang/String;)V

    .line 81
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const-string v18, "305002"

    const-string v19, "&ft=mp4"

    const-string v28, ""

    const/16 v16, -0x1

    move-object/from16 v17, v9

    move-wide/from16 v20, v10

    move/from16 v22, p1

    move/from16 v23, p2

    move/from16 v24, v8

    move/from16 v25, v12

    move-wide/from16 v26, v29

    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid file length, stop, totalSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", CompleteSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", contentLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v7, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->m(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-static {v2, v4, v7, v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;Lcom/mgtv/downloader/util/c$a;Lcom/mgtv/downloader/net/entity/a;I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 83
    :try_start_c
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2, v5}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Long;)V

    .line 84
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2, v5}, Lcom/mgtv/downloader/net/entity/a;->b(Ljava/lang/Long;)V

    .line 85
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 86
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v2

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v2, v3, v5, v13}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 87
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    :cond_9
    :goto_6
    return v31

    :cond_a
    move-wide/from16 v2, v17

    .line 88
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/mgtv/downloader/a/a$a;->b()Z

    move-result v5

    if-nez v5, :cond_b

    .line 89
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/16 v25, 0xc8

    const-string v28, ""

    const/16 v16, -0x1

    const-string v18, "340002"

    const-string v19, "&ft=mp4"

    const-wide/16 v20, -0x1

    move-object/from16 v17, v9

    move/from16 v22, p1

    move/from16 v23, p2

    move/from16 v24, v8

    move-wide/from16 v26, v29

    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    const/4 v1, -0x2

    return v1

    :cond_b
    const/4 v5, -0x1

    .line 90
    :try_start_e
    iget-object v12, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v12, v12, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v12}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v12

    .line 91
    const-string v15, "/hls"

    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 92
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const-string v18, "340005"

    const-string v19, "&ft=mp4"

    const-string v28, ""

    const/16 v16, 0x0

    const-wide/16 v20, -0x1

    const/16 v22, 0x1

    const/16 v25, 0xc8

    move-object/from16 v17, v9

    move/from16 v23, p2

    move/from16 v24, v8

    move-wide/from16 v26, v29

    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    return v5

    :catch_4
    move-exception v0

    move-object v2, v0

    goto/16 :goto_29

    .line 93
    :cond_c
    new-instance v12, Ljava/io/RandomAccessFile;

    new-instance v15, Ljava/io/File;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "rw"

    invoke-direct {v12, v15, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_4

    .line 94
    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v38, -0x5

    const/4 v15, 0x1

    if-eq v5, v15, :cond_d

    .line 95
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/16 v25, 0xc8

    const-string v28, ""

    const/16 v16, 0x0

    const-string v18, "340003"

    const-string v19, "&ft=mp4"

    const-wide/16 v20, -0x1

    const/16 v22, 0x1

    move-object/from16 v17, v9

    move/from16 v23, p2

    move/from16 v24, v8

    move-wide/from16 v26, v29

    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 96
    :try_start_f
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 97
    :catch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", switching to pause after open local file, status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v38

    .line 98
    :cond_d
    :try_start_10
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v15, v15, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v15}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v15

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move-object/from16 v39, v6

    :try_start_11
    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", begin seek file to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", begin read stream from connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 102
    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    move-wide/from16 v40, v10

    const/4 v6, 0x1

    :try_start_12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 103
    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mgtv/downloader/net/entity/a;->b(Ljava/lang/Integer;)V

    .line 104
    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-eqz v5, :cond_e

    .line 105
    :try_start_13
    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v5

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v5, v10, v11, v13}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v33

    move-object/from16 v4, v34

    move-object/from16 v5, v37

    const/4 v15, 0x0

    :goto_8
    move-object/from16 v37, v7

    move-object/from16 v7, v35

    goto/16 :goto_24

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v34

    move-object/from16 v5, v37

    const/16 v34, 0x0

    :goto_9
    move-object/from16 v37, v7

    move-object/from16 v7, v35

    move-object/from16 v35, v33

    goto/16 :goto_18

    .line 106
    :cond_e
    :goto_a
    :try_start_14
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    const/16 v10, 0x1000

    .line 107
    :try_start_15
    new-array v10, v10, [B

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 109
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 110
    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/4 v6, 0x1

    invoke-static {v11, v6}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;Z)Z

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", STREAM START: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/hunantv/imgo/util/f;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    move-object/from16 v20, v15

    iget-object v15, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v11}, Lcom/mgtv/downloader/a/a;->m(Lcom/mgtv/downloader/a/a;)I

    move-result v11

    invoke-static {v6, v4, v15, v11}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;Lcom/mgtv/downloader/util/c$a;Lcom/mgtv/downloader/net/entity/a;I)V

    move-wide/from16 v42, v16

    move-wide/from16 v44, v18

    move-object/from16 v6, v20

    .line 112
    :goto_b
    iget-boolean v11, v1, Lcom/mgtv/downloader/a/a$a;->b:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-eqz v11, :cond_f

    .line 113
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", download break - thread stoped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v15, v5

    move-object/from16 v6, v33

    move-object/from16 v4, v34

    move-object/from16 v5, v37

    goto/16 :goto_8

    :catch_7
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v34

    move-object/from16 v34, v5

    move-object/from16 v5, v37

    goto/16 :goto_9

    .line 114
    :cond_f
    :try_start_17
    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v11}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    const/4 v15, 0x1

    if-eq v11, v15, :cond_10

    .line 115
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", download break - mission changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto :goto_c

    .line 116
    :cond_10
    :try_start_19
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    cmp-long v11, v15, v2

    if-ltz v11, :cond_11

    .line 117
    :try_start_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", download break - already completed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 118
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto :goto_c

    .line 119
    :cond_11
    :try_start_1b
    invoke-virtual {v5, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    const/4 v15, -0x1

    if-ne v11, v15, :cond_16

    .line 120
    :try_start_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", download break - no more input stream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 121
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STREAM END: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/hunantv/imgo/util/f;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v6, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->m(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-static {v2, v4, v6, v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;Lcom/mgtv/downloader/util/c$a;Lcom/mgtv/downloader/net/entity/a;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 122
    :try_start_1d
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    if-eqz v2, :cond_12

    .line 123
    :try_start_1e
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v2

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v2, v3, v4, v13}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v33

    goto :goto_f

    :catch_8
    move-object/from16 v4, v33

    move-object/from16 v3, v37

    goto/16 :goto_10

    .line 124
    :cond_12
    :goto_d
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    if-eqz v5, :cond_13

    .line 125
    :try_start_20
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_8
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 126
    :cond_13
    :try_start_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v35

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v34

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    move-object/from16 v3, v37

    :try_start_22
    invoke-static {v3, v2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 128
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v33

    :goto_e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_11

    :catchall_3
    move-exception v0

    move-object/from16 v4, v33

    move-object v2, v0

    goto :goto_f

    :catch_9
    move-object/from16 v4, v33

    goto :goto_10

    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 130
    throw v2

    .line 131
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 132
    :goto_11
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_15

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_15

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    .line 133
    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_14

    goto :goto_12

    :cond_14
    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v3, p1

    move/from16 v4, p2

    move v5, v8

    move-wide/from16 v6, v29

    .line 134
    invoke-direct/range {v1 .. v7}, Lcom/mgtv/downloader/a/a$a;->a(Ljava/lang/String;IIZJ)V

    const/4 v1, 0x1

    return v1

    .line 135
    :cond_15
    :goto_12
    const-string v1, "download pause"

    invoke-static {v3, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v38

    :catchall_4
    move-exception v0

    move-object/from16 v4, v33

    move-object/from16 v2, v34

    move-object/from16 v15, v35

    move-object/from16 v3, v37

    move-object v6, v4

    move-object/from16 v37, v7

    move-object v7, v15

    move-object v4, v2

    move-object v15, v5

    move-object v2, v0

    move-object v5, v3

    goto/16 :goto_24

    :catch_a
    move-exception v0

    move-object/from16 v4, v33

    move-object/from16 v2, v34

    move-object/from16 v15, v35

    move-object/from16 v3, v37

    move-object/from16 v35, v4

    move-object/from16 v34, v5

    move-object/from16 v37, v7

    move-object v7, v15

    move-object v4, v2

    move-object v5, v3

    :goto_13
    move-object v2, v0

    goto/16 :goto_18

    :cond_16
    move-object/from16 v16, v35

    move-object/from16 v35, v33

    move-object/from16 v33, v4

    move-object/from16 v4, v34

    move-object/from16 v34, v5

    move-object/from16 v5, v37

    .line 136
    :try_start_23
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const-string v18, ""

    const-string v19, "&ft=mp4"

    const-string v28, ""
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    const/16 v17, 0x0

    const/16 v22, 0x1

    const/16 v25, 0xc8

    move-object/from16 v37, v7

    move-object/from16 v7, v16

    move/from16 v16, v17

    move-object/from16 v17, v9

    move-wide/from16 v20, v40

    move/from16 v23, p2

    move/from16 v24, v8

    move-wide/from16 v26, v29

    :try_start_24
    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    const/4 v15, 0x0

    .line 137
    invoke-virtual {v12, v10, v15, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 138
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object v6, v10

    int-to-long v10, v11

    add-long v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 139
    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v11, v10}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Long;)V

    .line 140
    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v11}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v11, v18, v2

    if-ltz v11, :cond_17

    .line 141
    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Long;)V

    goto :goto_15

    :catchall_5
    move-exception v0

    :goto_14
    move-object v2, v0

    move-object/from16 v15, v34

    move-object/from16 v6, v35

    goto/16 :goto_24

    :catch_b
    move-exception v0

    goto :goto_13

    .line 142
    :cond_17
    :goto_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v20, v2

    sub-long v2, v18, v42

    const-wide/16 v18, 0x3e8

    cmp-long v11, v2, v18

    move-object v15, v10

    if-ltz v11, :cond_19

    sub-long v10, v16, v44

    long-to-float v10, v10

    long-to-float v2, v2

    div-float/2addr v10, v2

    float-to-int v2, v10

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mp4 downloading, taskID: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", videoID: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    .line 144
    invoke-virtual {v10}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v10}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    .line 145
    invoke-virtual {v10}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", speed: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "KB/S"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 147
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mgtv/downloader/net/entity/a;->b(Ljava/lang/Integer;)V

    .line 148
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 149
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v2

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v10, v10, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v2, v3, v10, v13}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    .line 150
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_b
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    move-wide/from16 v42, v2

    move-wide/from16 v44, v16

    :cond_19
    move-object v10, v6

    move-object v6, v15

    move-wide/from16 v2, v20

    move-object/from16 v46, v34

    move-object/from16 v34, v4

    move-object/from16 v4, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v7

    move-object/from16 v7, v37

    move-object/from16 v37, v5

    move-object/from16 v5, v46

    goto/16 :goto_b

    :catchall_6
    move-exception v0

    move-object/from16 v37, v7

    move-object/from16 v7, v16

    goto/16 :goto_14

    :catch_c
    move-exception v0

    move-object/from16 v37, v7

    move-object/from16 v7, v16

    goto/16 :goto_13

    :catchall_7
    move-exception v0

    move-object/from16 v4, v34

    move-object/from16 v34, v5

    move-object/from16 v5, v37

    move-object/from16 v37, v7

    move-object/from16 v7, v35

    move-object/from16 v35, v33

    goto/16 :goto_14

    :catch_d
    move-exception v0

    move-object/from16 v4, v34

    move-object/from16 v34, v5

    move-object/from16 v5, v37

    move-object/from16 v37, v7

    move-object/from16 v7, v35

    move-object/from16 v35, v33

    goto/16 :goto_13

    :catchall_8
    move-exception v0

    move-object/from16 v4, v34

    move-object/from16 v5, v37

    move-object/from16 v37, v7

    move-object/from16 v7, v35

    move-object/from16 v35, v33

    move-object v2, v0

    move-object/from16 v6, v35

    const/4 v15, 0x0

    goto/16 :goto_24

    :catch_e
    move-exception v0

    :goto_16
    move-object/from16 v4, v34

    move-object/from16 v5, v37

    move-object/from16 v37, v7

    move-object/from16 v7, v35

    move-object/from16 v35, v33

    move-object v2, v0

    const/16 v34, 0x0

    goto :goto_18

    :catch_f
    move-exception v0

    :goto_17
    move-wide/from16 v40, v10

    goto :goto_16

    :catch_10
    move-exception v0

    move-object/from16 v39, v6

    goto :goto_17

    .line 151
    :goto_18
    :try_start_25
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v6, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v6}, Lcom/mgtv/downloader/net/entity/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;Ljava/lang/String;)V

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Exception error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 153
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->l(Lcom/mgtv/downloader/a/a;)Z

    move-result v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    if-eqz v3, :cond_1a

    .line 154
    :try_start_26
    const-string v3, "99.2000"
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    :goto_19
    move-object/from16 v18, v3

    goto :goto_1a

    .line 155
    :cond_1a
    :try_start_27
    const-string v3, "33.2000"

    goto :goto_19

    .line 156
    :goto_1a
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3, v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v6, "No+space+left+on+device"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    const/16 v10, 0x8

    if-nez v6, :cond_1d

    :try_start_28
    const-string v6, "No space left on device"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_1b

    .line 158
    :cond_1b
    const-string v6, "write+failed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1c

    const-string v6, "write failed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 159
    :cond_1c
    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v6, v6, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 160
    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 161
    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->f(Lcom/mgtv/downloader/a/a;)V

    .line 162
    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v6

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v15, 0x4

    invoke-interface {v6, v10, v11, v15, v13}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    goto :goto_1c

    .line 163
    :cond_1d
    :goto_1b
    :try_start_29
    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v6, v6, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 164
    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v6
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    if-eqz v6, :cond_1e

    .line 165
    :try_start_2a
    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->f(Lcom/mgtv/downloader/a/a;)V

    .line 166
    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v6

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    iget-object v11, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v11, v11, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v15, 0x1

    invoke-interface {v6, v10, v11, v15, v13}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    .line 167
    :cond_1e
    :goto_1c
    :try_start_2b
    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->l(Lcom/mgtv/downloader/a/a;)Z

    move-result v6
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    if-eqz v6, :cond_1f

    .line 168
    :try_start_2c
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v32

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v39

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v28, ""

    const/16 v16, 0x1

    const/16 v25, 0xc8

    move-object/from16 v17, v9

    move-wide/from16 v20, v40

    move/from16 v22, p1

    move/from16 v23, p2

    move/from16 v24, v8

    move-wide/from16 v26, v29

    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    goto :goto_1d

    :cond_1f
    move-object/from16 v10, v32

    move-object/from16 v11, v39

    .line 169
    :try_start_2d
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v28, ""

    const/16 v16, -0x1

    const/16 v25, 0xc8

    move-object/from16 v17, v9

    move-wide/from16 v20, v40

    move/from16 v22, p1

    move/from16 v23, p2

    move/from16 v24, v8

    move-wide/from16 v26, v29

    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 170
    :goto_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v8}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", download file error: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_20

    goto :goto_1e

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    .line 171
    :try_start_2e
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_11
    .catchall {:try_start_2e .. :try_end_2e} :catchall_a

    if-eqz v2, :cond_21

    .line 172
    :try_start_2f
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v2

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    iget-object v6, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v6, v6, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v2, v3, v6, v13}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_11
    .catchall {:try_start_2f .. :try_end_2f} :catchall_9

    goto :goto_1f

    :catchall_9
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v35

    goto :goto_21

    :catch_11
    move-object/from16 v6, v35

    goto :goto_22

    .line 173
    :cond_21
    :goto_1f
    :try_start_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_11
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    if-eqz v34, :cond_22

    .line 174
    :try_start_31
    invoke-virtual/range {v34 .. v34}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_11
    .catchall {:try_start_31 .. :try_end_31} :catchall_9

    .line 175
    :cond_22
    :try_start_32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 177
    invoke-virtual/range {v37 .. v37}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_11
    .catchall {:try_start_32 .. :try_end_32} :catchall_a

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v35

    :goto_20
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_23

    :catchall_a
    move-exception v0

    move-object/from16 v6, v35

    move-object v2, v0

    :goto_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 179
    throw v2

    .line 180
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_20

    :goto_23
    return v31

    :catchall_b
    move-exception v0

    move-object/from16 v6, v35

    move-object v2, v0

    move-object/from16 v15, v34

    .line 181
    :goto_24
    :try_start_33
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 182
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v3

    iget-object v8, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v8}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v8

    iget-object v9, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v9, v9, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v3, v8, v9, v13}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    goto :goto_25

    :catchall_c
    move-exception v0

    move-object v2, v0

    goto :goto_27

    .line 183
    :cond_23
    :goto_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    if-eqz v15, :cond_24

    .line 184
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 185
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 187
    invoke-virtual/range {v37 .. v37}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_12
    .catchall {:try_start_33 .. :try_end_33} :catchall_c

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_26
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_28

    :goto_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 189
    throw v2

    .line 190
    :catch_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_26

    .line 191
    :goto_28
    throw v2

    .line 192
    :goto_29
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/16 v25, 0xc8

    const-string v28, ""

    const/16 v16, 0x0

    const-string v18, "340001"

    const-string v19, "&ft=mp4"

    const-wide/16 v20, -0x1

    const/16 v22, 0x1

    move-object/from16 v17, v9

    move/from16 v23, p2

    move/from16 v24, v8

    move-wide/from16 v26, v29

    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 193
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 194
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->f(Lcom/mgtv/downloader/a/a;)V

    .line 195
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v3

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v6, 0x5

    invoke-interface {v3, v4, v5, v6, v13}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    .line 196
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", video file not found, switching to failed, filePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cfnfe\uff1a"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :catch_13
    move-exception v0

    move-object/from16 v33, v4

    move-wide/from16 v40, v10

    :goto_2a
    move-object/from16 v10, v32

    :goto_2b
    move-object v11, v6

    :goto_2c
    move-object v2, v0

    move-wide/from16 v20, v40

    goto/16 :goto_2e

    :catch_14
    move-exception v0

    move-wide/from16 v40, v10

    move-object/from16 v33, v15

    goto :goto_2a

    :cond_26
    move-object/from16 v37, v7

    move-wide/from16 v40, v10

    move-object/from16 v10, v32

    move-object/from16 v4, v34

    move-object/from16 v7, v35

    move-object v11, v6

    move-object/from16 v6, v33

    move-object/from16 v33, v15

    move-object v15, v5

    move-object v5, v13

    move-object/from16 v13, v36

    move-object/from16 v21, v2

    .line 197
    :goto_2d
    :try_start_34
    const-string v2, "Location"

    move-object/from16 v34, v4

    move-object/from16 v4, v37

    invoke-virtual {v4, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v6

    const-string v6, "return 302,redirect url is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_27

    .line 199
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v4, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v4}, Lcom/mgtv/downloader/net/entity/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;Ljava/lang/String;)V

    .line 200
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v28, ""

    const/16 v16, -0x1

    move-object v15, v2

    move-object/from16 v17, v9

    move-wide/from16 v20, v40

    move/from16 v22, p1

    move/from16 v23, p2

    move/from16 v24, v8

    move/from16 v25, v12

    move-wide/from16 v26, v29

    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getting length, got 302 with invalid location"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v31

    :catch_15
    move-exception v0

    goto/16 :goto_2c

    .line 202
    :cond_27
    invoke-direct {v1, v2}, Lcom/mgtv/downloader/a/a$a;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_15

    move-object v5, v7

    move-object/from16 v32, v10

    move-object v6, v11

    move-object/from16 v15, v33

    move-object/from16 v33, v35

    move-wide/from16 v10, v40

    move-object v7, v2

    move-object/from16 v2, v21

    goto/16 :goto_3

    :catch_16
    move-exception v0

    move-wide/from16 v40, v10

    move-object/from16 v33, v15

    move-object v10, v3

    goto/16 :goto_2b

    :cond_28
    move-object/from16 v21, v2

    move-object v10, v3

    move-object/from16 v34, v4

    move-object/from16 v35, v7

    move-object/from16 v20, v11

    move-object/from16 v33, v15

    move-object v7, v5

    move-object v11, v6

    add-int/lit8 v2, v19, 0x1

    move-object/from16 v11, v20

    move-object/from16 v7, v35

    move v10, v2

    move-object/from16 v2, v21

    goto/16 :goto_0

    :catch_17
    move-exception v0

    move-object v10, v3

    move-object v11, v6

    move-object/from16 v33, v15

    move-object v2, v0

    goto/16 :goto_1

    .line 204
    :goto_2e
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    iget-object v15, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v25, 0xc8

    const-string v28, ""

    const/16 v16, -0x1

    const-string v18, "33.1000"

    move-object/from16 v17, v9

    move/from16 v22, p1

    move/from16 v23, p2

    move/from16 v24, v8

    move-wide/from16 v26, v29

    invoke-static/range {v15 .. v28}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid file length, stop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v3, v1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->m(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    move-object/from16 v4, v33

    invoke-static {v2, v4, v3, v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;Lcom/mgtv/downloader/util/c$a;Lcom/mgtv/downloader/net/entity/a;I)V

    return v31
.end method

.method private b(ZI)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgtv/downloader/a/a$a;->a(II)I

    move-result p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mgtv/downloader/a/a$a;->b(II)I

    move-result p2

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->f(Lcom/mgtv/downloader/a/a;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", unlock mDownloader ret= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xb

    const-string v4, ""

    if-ne v0, v3, :cond_1

    .line 7
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object p1

    iget-object p2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p2

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {p1, p2, p0, v4}, Lcom/mgtv/downloader/a/b;->c(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x5

    const/4 v3, 0x0

    if-ne v1, p2, :cond_a

    .line 9
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object p1, p1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    move p1, v0

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 11
    :goto_1
    iget-object p2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object p2, p2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x4

    if-eqz p2, :cond_5

    .line 12
    iget-object p2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object p2, p2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object p2

    const-wide/16 v5, 0x0

    if-nez p2, :cond_3

    move-wide v7, v5

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 14
    :goto_2
    iget-object p2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object p2, p2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_4

    move-wide v9, v5

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_3
    cmp-long p2, v7, v5

    if-lez p2, :cond_5

    cmp-long p2, v9, v5

    if-lez p2, :cond_5

    cmp-long p2, v7, v9

    if-ltz p2, :cond_5

    move p1, v1

    :cond_5
    const/4 p2, 0x2

    if-eq p1, p2, :cond_9

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    goto :goto_4

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->j()V

    goto :goto_4

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->k()V

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mission completed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 19
    :cond_8
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->i()V

    goto :goto_4

    .line 20
    :cond_9
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->h()V

    .line 21
    :goto_4
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1, v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", success, new status mReporter"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    const/4 v4, -0x8

    const/16 v5, 0xa

    if-eq p2, v4, :cond_11

    const/4 v4, -0x6

    if-eq p2, v4, :cond_10

    const/4 v0, -0x5

    if-eq p2, v0, :cond_f

    const/4 v0, -0x3

    if-eq p2, v0, :cond_c

    const/4 p1, -0x2

    if-eq p2, p1, :cond_13

    const/4 p1, -0x1

    if-eq p2, p1, :cond_b

    goto/16 :goto_7

    .line 23
    :cond_b
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->j()V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", failed, file error"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_c
    const-wide/16 v6, 0x7d0

    .line 25
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p2

    .line 26
    const-string v0, "DownloadSDK_1.8.0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/hunantv/imgo/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz p1, :cond_d

    .line 27
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a/a;->k(Lcom/mgtv/downloader/a/a;)I

    move-result p1

    if-nez p1, :cond_d

    .line 28
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1, v5}, Lcom/mgtv/downloader/a/a;->c(Lcom/mgtv/downloader/a/a;I)I

    .line 29
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->j()V

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", failed, retry failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 31
    :cond_d
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a/a;->k(Lcom/mgtv/downloader/a/a;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Lcom/mgtv/downloader/a/a;->c(Lcom/mgtv/downloader/a/a;I)I

    .line 32
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a/a;->k(Lcom/mgtv/downloader/a/a;)I

    move-result p1

    if-lt p1, v1, :cond_e

    .line 33
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a/a;->k(Lcom/mgtv/downloader/a/a;)I

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/mgtv/downloader/a/a$a;->a(ZI)V

    goto/16 :goto_7

    .line 34
    :cond_e
    invoke-direct {p0, v1, v3}, Lcom/mgtv/downloader/a/a$a;->a(ZI)V

    goto/16 :goto_7

    .line 35
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", failed, already been paused"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 36
    :cond_10
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p1, v0}, Lcom/mgtv/downloader/a/a;->c(I)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", failed, hls task create failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    if-eqz p1, :cond_12

    .line 38
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {p1, v5}, Lcom/mgtv/downloader/a/a;->c(I)V

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", md5 check failed, retry failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 40
    :cond_12
    invoke-direct {p0, v1, v3}, Lcom/mgtv/downloader/a/a$a;->a(ZI)V

    .line 41
    :cond_13
    :goto_6
    iget-object p1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/mgtv/downloader/a/a;->c(I)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", failed, file system error"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method private b()Z
    .locals 8

    .line 207
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 208
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taskID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", checkStorage: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 211
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgtv/downloader/dir/a;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 212
    iget-object v6, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v6, v6, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v6}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const/high16 v6, 0x6400000

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v7}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", file dir remains: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", file need: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    cmp-long v6, v0, v4

    const/4 v7, 0x1

    if-gez v6, :cond_1

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", not enough space remained, remain: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", needSize: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 216
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-string v3, ""

    invoke-interface {v0, v1, p0, v7, v3}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    return v7
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgtv/downloader/a/a$a;->b:Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->c(Lcom/mgtv/downloader/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/a/a;->h()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", lock is locked by other thread, ending download thread"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$a;->a:Lcom/mgtv/downloader/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;Z)Z

    invoke-direct {p0, v1, v1}, Lcom/mgtv/downloader/a/a$a;->a(ZI)V

    return-void
.end method
