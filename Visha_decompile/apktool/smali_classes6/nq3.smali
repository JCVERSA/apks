.class public final Lnq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmq3;


# instance fields
.field public final a:Lpr3;

.field public final b:Ljg9;


# direct methods
.method public constructor <init>(Lpr3;Ljg9;)V
    .locals 1

    const-string v0, "fileService"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareService"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnq3;->a:Lpr3;

    iput-object p2, p0, Lnq3;->b:Ljg9;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;I)Ljava/util/List;
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gt p0, p2, :cond_0

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez p2, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v0, p2}, Lxh8;->c(III)I

    move-result v0

    if-ltz v0, :cond_1

    :goto_0
    add-int v2, v1, p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step must be positive, was: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/RetryVideoTranscodeRequest;

    invoke-direct {v0, p1}, Lcom/transsion/cloud_drive/base/internal/request/RetryVideoTranscodeRequest;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnq3;->a:Lpr3;

    invoke-interface {p0, v0}, Lpr3;->i(Lcom/transsion/cloud_drive/base/internal/request/RetryVideoTranscodeRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileIds"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-object p0, p0, Lnq3;->b:Ljg9;

    invoke-interface {p0, p1, v0}, Ljg9;->h(Ljava/lang/String;Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 8

    const-string v0, "shareId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharePwd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/UpdateFileShareLinkRequest;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/transsion/cloud_drive/base/internal/request/UpdateFileShareLinkRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V

    iget-object p0, p0, Lnq3;->b:Ljg9;

    invoke-interface {p0, v0}, Ljg9;->e(Lcom/transsion/cloud_drive/base/internal/request/UpdateFileShareLinkRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public delete(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/DeleteFileRequest;

    invoke-direct {v0, p1}, Lcom/transsion/cloud_drive/base/internal/request/DeleteFileRequest;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnq3;->a:Lpr3;

    invoke-interface {p0, v0}, Lpr3;->k(Lcom/transsion/cloud_drive/base/internal/request/DeleteFileRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/GetShareFileListRequest;

    invoke-direct {v0, p2, p3}, Lcom/transsion/cloud_drive/base/internal/request/GetShareFileListRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnq3;->b:Ljg9;

    invoke-interface {p0, p1, v0, p4}, Ljg9;->f(Ljava/lang/String;Lcom/transsion/cloud_drive/base/internal/request/GetShareFileListRequest;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/GetVideoTranscodeStatusRequest;

    invoke-direct {v0, p1}, Lcom/transsion/cloud_drive/base/internal/request/GetVideoTranscodeStatusRequest;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnq3;->a:Lpr3;

    invoke-interface {p0, v0}, Lpr3;->j(Lcom/transsion/cloud_drive/base/internal/request/GetVideoTranscodeStatusRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "shareId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharePwd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p0, p0, Lnq3;->b:Ljg9;

    invoke-interface {p0, v0, p5}, Ljg9;->g(Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public getConfig()Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 0

    iget-object p0, p0, Lnq3;->a:Lpr3;

    invoke-interface {p0}, Lpr3;->getConfig()Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/GetShareFileDownloadUrlRequest;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/transsion/cloud_drive/base/internal/request/GetShareFileDownloadUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p0, p0, Lnq3;->b:Ljg9;

    invoke-interface {p0, p1, v0, p6}, Ljg9;->b(Ljava/lang/String;Lcom/transsion/cloud_drive/base/internal/request/GetShareFileDownloadUrlRequest;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "fileIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoBatchRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoBatchRequest;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object p0, p0, Lnq3;->a:Lpr3;

    invoke-interface {p0, v0}, Lpr3;->f(Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoBatchRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "shareId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkAnonymousRequest;

    invoke-direct {v0, p1}, Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkAnonymousRequest;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnq3;->b:Ljg9;

    invoke-interface {p0, v0, p2}, Ljg9;->d(Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkAnonymousRequest;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public k(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 7

    const-string v0, "fileIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharePwd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V

    iget-object p0, p0, Lnq3;->b:Ljg9;

    invoke-interface {p0, v0}, Ljg9;->c(Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;J)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/GetVideoFilePlayInfoRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/cloud_drive/base/internal/request/GetVideoFilePlayInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p0, p0, Lnq3;->a:Lpr3;

    invoke-interface {p0, v0}, Lpr3;->l(Lcom/transsion/cloud_drive/base/internal/request/GetVideoFilePlayInfoRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 7

    const-string v0, "token"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateId"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/GetShareVideoFilePlayInfoRequest;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/cloud_drive/base/internal/request/GetShareVideoFilePlayInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p0, p0, Lnq3;->b:Ljg9;

    invoke-interface {p0, p1, v0, p7}, Ljg9;->a(Ljava/lang/String;Lcom/transsion/cloud_drive/base/internal/request/GetShareVideoFilePlayInfoRequest;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/UpdateFileRequest;

    invoke-direct {v0, p1, p2}, Lcom/transsion/cloud_drive/base/internal/request/UpdateFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnq3;->a:Lpr3;

    invoke-interface {p0, v0}, Lpr3;->a(Lcom/transsion/cloud_drive/base/internal/request/UpdateFileRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    if-eqz p1, :cond_0

    sget-object p2, Lqn5;->a:Lqn5;

    const-string v0, "UTC"

    invoke-virtual {p2, v0}, Lqn5;->a(Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->setUpdateTime(Ljava/time/LocalDateTime;)V

    :cond_0
    return-object p0
.end method

.method public o(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object p0, p0, Lnq3;->a:Lpr3;

    invoke-interface {p0, v0}, Lpr3;->m(Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public p(Ljava/util/List;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 3

    const-string v0, "fileIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xc8

    invoke-virtual {p0, p1, v1}, Lnq3;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/transsion/cloud_drive/base/internal/request/DeleteFileBatchRequest;

    invoke-direct {v2, v1}, Lcom/transsion/cloud_drive/base/internal/request/DeleteFileBatchRequest;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lnq3;->a:Lpr3;

    invoke-interface {v1, v2}, Lpr3;->h(Lcom/transsion/cloud_drive/base/internal/request/DeleteFileBatchRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-direct {p0, v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
