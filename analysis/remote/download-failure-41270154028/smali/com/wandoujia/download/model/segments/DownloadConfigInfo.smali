.class public Lcom/wandoujia/download/model/segments/DownloadConfigInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2e61781474689c0bL


# instance fields
.field private backupUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/DownloadUrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/segments/DownloadBlockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private resSign:Ljava/lang/String;

.field private segInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/SegmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private segSize:J

.field private totalCrc:Ljava/lang/String;

.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->backupUrls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->blocks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->segInfos:Ljava/util/List;

    return-void
.end method

.method public static a()I
    .locals 5

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/tu1;->a(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public static fromDServiceInfo(Lcom/wandoujia/download/model/DserviceInfo;)Lcom/wandoujia/download/model/segments/DownloadConfigInfo;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/download/model/DserviceInfo;->getDownload_urls()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/gz1;->e(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/download/model/DserviceInfo;->getDownload_urls()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/download/model/DownloadUrlInfo;

    invoke-static {v0}, Lo/gz1;->c(Lcom/wandoujia/download/model/DownloadUrlInfo;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/download/model/DserviceInfo;->getMeta()Lcom/wandoujia/download/model/DownloadSegMetaData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/download/model/DserviceInfo;->getMeta()Lcom/wandoujia/download/model/DownloadSegMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/download/model/DownloadSegMetaData;->getTotal_size()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/wandoujia/download/model/DownloadUrlInfo;->getSize()J

    move-result-wide v2

    :cond_1
    :goto_0
    invoke-static {}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->a()I

    move-result v0

    int-to-long v4, v0

    div-long v4, v2, v4

    new-instance v6, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    invoke-direct {v6}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/wandoujia/download/model/DserviceInfo;->getDownload_urls()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->setBackupUrls(Ljava/util/List;)V

    invoke-virtual {v6, v2, v3}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->setTotalSize(J)V

    :goto_1
    if-ge v1, v0, :cond_3

    new-instance v7, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;

    int-to-long v8, v1

    mul-long v10, v8, v4

    add-int/lit8 v8, v0, -0x1

    const-wide/16 v12, 0x1

    if-ge v1, v8, :cond_2

    add-int/lit8 v8, v1, 0x1

    int-to-long v8, v8

    mul-long v8, v8, v4

    sub-long/2addr v8, v12

    :goto_2
    move-wide v12, v8

    goto :goto_3

    :cond_2
    sub-long v8, v2, v12

    goto :goto_2

    :goto_3
    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object v8, v7

    move v9, v1

    invoke-direct/range {v8 .. v16}, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;-><init>(IJJJI)V

    iget-object v8, v6, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->blocks:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v6
.end method

.method public static fromDlinkInfo(Lcom/wandoujia/download/model/DlinkInfo;)Lcom/wandoujia/download/model/segments/DownloadConfigInfo;
    .locals 10

    if-eqz p0, :cond_0

    new-instance v0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    invoke-direct {v0}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/download/model/DlinkInfo;->songLinkEntries:Ljava/util/List;

    new-instance v2, Lcom/wandoujia/download/model/segments/DownloadConfigInfo$a;

    invoke-direct {v2}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo$a;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p0, p0, Lcom/wandoujia/download/model/DlinkInfo;->songLinkEntries:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->setBackupUrls(Ljava/util/List;)V

    new-instance p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;-><init>(IJJJI)V

    iget-object v1, v0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->blocks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "dlinkinfo cann\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/wandoujia/download/model/segments/DownloadConfigInfo;
    .locals 1

    const-class v0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    invoke-static {p0, v0}, Lo/j23;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    return-object p0
.end method


# virtual methods
.method public getBackupUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/DownloadUrlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->backupUrls:Ljava/util/List;

    return-object v0
.end method

.method public getBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/segments/DownloadBlockInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->blocks:Ljava/util/List;

    return-object v0
.end method

.method public getSegInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/SegmentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->segInfos:Ljava/util/List;

    return-object v0
.end method

.method public getSegSize()J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->segSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->totalSize:J

    return-wide v0
.end method

.method public setBackupUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/DownloadUrlInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->backupUrls:Ljava/util/List;

    return-void
.end method

.method public setResSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->resSign:Ljava/lang/String;

    return-void
.end method

.method public setSegInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/SegmentInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->segInfos:Ljava/util/List;

    return-void
.end method

.method public setSegSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->segSize:J

    return-void
.end method

.method public setTotalCrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->totalCrc:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->totalSize:J

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lo/j23;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public updateBlockInfo(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->blocks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->blocks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->setCurrentSize(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "try to update not existed block info"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
