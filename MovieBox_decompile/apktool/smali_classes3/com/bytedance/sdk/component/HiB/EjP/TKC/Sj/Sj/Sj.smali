.class public Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private Sj:I

.field private sP:Ljava/io/File;


# direct methods
.method private constructor <init>(ILjava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP:Ljava/io/File;

    .line 7
    .line 8
    return-void
.end method

.method private static EjP(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public static Sj(ILjava/io/File;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;-><init>(ILjava/io/File;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private Sj(Ljava/io/File;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 41
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 43
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 48
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    return-object v1

    :catchall_0
    :cond_4
    :goto_1
    return-object v0
.end method

.method private Sj(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 59
    invoke-static {p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->EjP(Ljava/io/File;)V

    .line 60
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 61
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method private TKC(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".temp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private TKC(Ljava/io/File;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Jcg;->sP(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private sP(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private sP(Ljava/io/File;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;Ljava/util/Map;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public declared-synchronized Sj(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 4
    monitor-exit p0

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :try_start_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->TKC(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    monitor-exit p0

    return-object v0

    .line 9
    :catchall_0
    monitor-exit p0

    return-object v1

    :catch_0
    move-object v0, v1

    .line 10
    :catch_1
    :try_start_4
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 11
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public declared-synchronized Sj(I)V
    .locals 3

    monitor-enter p0

    .line 49
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le p1, v0, :cond_0

    .line 50
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 54
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 57
    :cond_2
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized Sj(Ljava/lang/String;[B)Z
    .locals 6

    monitor-enter p0

    .line 12
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj:I

    const/4 v1, 0x0

    if-lez v0, :cond_7

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->TKC(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    const/4 v4, 0x0

    .line 14
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 15
    :try_start_2
    invoke-virtual {v5, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    .line 17
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, v0, p1, v4}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :cond_1
    :try_start_3
    invoke-static {v5}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj:I

    if-le p1, p2, :cond_2

    int-to-double p1, p2

    mul-double/2addr p1, v2

    double-to-int p1, p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_6

    .line 22
    :cond_2
    :goto_0
    monitor-exit p0

    return v4

    :catchall_1
    move-object v4, v5

    goto :goto_1

    :catch_0
    move-object v4, v5

    goto :goto_2

    .line 23
    :catchall_2
    :goto_1
    :try_start_4
    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj:I

    if-le p1, p2, :cond_3

    int-to-double p1, p2

    mul-double/2addr p1, v2

    double-to-int p1, p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    :cond_3
    monitor-exit p0

    return v1

    .line 28
    :catch_1
    :goto_2
    :try_start_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP:Ljava/io/File;

    if-eqz p1, :cond_4

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    goto :goto_4

    .line 30
    :cond_4
    :goto_3
    :try_start_6
    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj:I

    if-le p1, p2, :cond_5

    int-to-double p1, p2

    mul-double/2addr p1, v2

    double-to-int p1, p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 34
    :cond_5
    monitor-exit p0

    return v1

    .line 35
    :goto_4
    :try_start_7
    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 36
    iget-object p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP:Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 37
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj:I

    if-le p2, v0, :cond_6

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int p2, v0

    .line 38
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(I)V

    .line 39
    :cond_6
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 40
    :cond_7
    :goto_5
    monitor-exit p0

    return v1

    :goto_6
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method
