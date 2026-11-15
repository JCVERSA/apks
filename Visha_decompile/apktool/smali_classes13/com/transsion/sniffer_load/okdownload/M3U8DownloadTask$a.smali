.class public Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$a;
.super Ltz2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltz2;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 3

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDownloadDefault"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ltz2;->a(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public b(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 3

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onDownloadError"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ltz2;->b(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public c(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 3

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDownloadPause"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ltz2;->c(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public d(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 3

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDownloadPending"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ltz2;->d(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public e(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 3

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDownloadPrepare"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ltz2;->e(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isPaused()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public f(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-super {p0, p1}, Ltz2;->f(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isPaused()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public g(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 3

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDownloadStart"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ltz2;->g(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isPaused()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public h(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 4

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getDownloadSizeString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onDownloadSuccess"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ltz2;->h(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public i(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/lang/Exception;)V
    .locals 3

    sget-object p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHLSMergeFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    new-instance p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2014:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v0, p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    iget-object p2, p2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string p1, "dl_brower_sniff"

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    return-void
.end method

.method public j(Lcom/transsion/videodownloader/model/VideoTaskItem;F)V
    .locals 2

    sget-object p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHLSMergeProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public k(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 7

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getDownloadSizeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lyx2;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalFileName()Ljava/lang/String;

    move-result-object v6

    const-string v1, "onHLSMergeSuccess"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Ltz2;->k(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    new-instance p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2013:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v1, v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {p0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    iget-object v0, v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string p1, "dl_brower_sniff"

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    return-void
.end method
