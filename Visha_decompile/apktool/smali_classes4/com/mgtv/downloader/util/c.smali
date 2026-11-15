.class public Lcom/mgtv/downloader/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/downloader/util/c$a;
    }
.end annotation


# static fields
.field private static a:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 1
    sput p0, Lcom/mgtv/downloader/util/c;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 12
    sget v0, Lcom/mgtv/downloader/util/c;->a:I

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->b(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Network: %s, %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 13
    const-string v0, "DownloadSDK_1.8.0"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 14
    invoke-static {v0, p0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/mgtv/downloader/util/c$a;Lcom/mgtv/downloader/net/entity/a;I)V
    .locals 12

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    move-object v6, v2

    move-object v4, v3

    move-object v3, v0

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "unknown"

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_0
    const/4 p2, 0x1

    .line 7
    const-string v0, "DownloadSDK_1.8.0"

    const-string v1, "="

    const-string v11, "\"Network\":\"%s\",\"Desc\":\"%s\",\n\"DownloadDBInfo\":{\"VideoID\":\"%s\",\"TotalSize\":\"%s\",\"CompleteSize\":\"%s\",\"Url\":\"%s\"},\n\"HTTP\":{\"RspContentLength\":\"%s\",\"ReqRange\":\"%s\",\"RspRange\":\"%s\",\"RspCode\":\"%s\"}"

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/mgtv/downloader/util/c;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    const-string v10, ""

    const-string v7, ""

    const-string v8, ""

    move-object v2, p0

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v11, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {v0, p0, p2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 10
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/mgtv/downloader/util/c;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p1, Lcom/mgtv/downloader/util/c$a;->a:Ljava/lang/String;

    iget-object v8, p1, Lcom/mgtv/downloader/util/c$a;->b:Ljava/lang/String;

    iget-object v9, p1, Lcom/mgtv/downloader/util/c$a;->c:Ljava/lang/String;

    iget-object v10, p1, Lcom/mgtv/downloader/util/c$a;->d:Ljava/lang/String;

    move-object v2, p0

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v11, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {v0, p0, p2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 4
    const-string p0, "WIFI"

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 5
    const-string p0, "Mobile"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 6
    const-string p0, "Invalid"

    goto :goto_0

    .line 7
    :cond_2
    const-string p0, "unknown"

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/mgtv/downloader/util/c;->a:I

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->b(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Network: %s, %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    const-string v0, "DownloadSDK_1.8.0"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, p0, v1}, Lcom/hunantv/imgo/log/e;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method
