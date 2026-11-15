.class public final Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxy0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$a;

.field public static volatile h:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

.field public static i:J


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lmq3;

.field public c:Leu9;

.field public d:Lapb;

.field public final e:Lhk1;

.field public final f:Lnk1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->g:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$a;

    invoke-static {}, Laz8;->a()Laz8;

    move-result-object v0

    const-string v1, "key_cloud_last_config_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Laz8;->c(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->i:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->a:Landroid/content/Context;

    sget-object p1, Lhk1;->w1:Lhk1$b;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$b;

    invoke-direct {v0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$b;-><init>(Lhk1$b;)V

    iput-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->e:Lhk1;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    invoke-interface {p1, v0}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->f:Lnk1;

    sget-object p1, Lcom/transsion/cloudcore/cloudapi/impl/a;->a:Lcom/transsion/cloudcore/cloudapi/impl/a;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object v0

    invoke-virtual {v0}, Lrz0;->c()Lmq3;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->b:Lmq3;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object p1

    invoke-virtual {p1}, Lrz0;->d()Leu9;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->c:Leu9;

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->getInstance()Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->videoCloudCacheDao()Lapb;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->d:Lapb;

    return-void
.end method

.method public static final A(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lzm9;)V
    .locals 6

    const-string v0, "emitter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File ID cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lzm9;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->b:Lmq3;

    if-eqz v0, :cond_1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lmq3$a;->b(Lmq3;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-interface {p2}, Lzm9;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lzm9;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lzm9;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    instance-of v0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-interface {p2}, Lzm9;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lzm9;->onError(Ljava/lang/Throwable;)V

    :cond_4
    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->s(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;I)V

    :cond_5
    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz p1, :cond_7

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-interface {p2}, Lzm9;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lzm9;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {p2}, Lzm9;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FileManager is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lzm9;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-interface {p2}, Lzm9;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {p2, p0}, Lzm9;->onError(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static final C(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lzm9;)V
    .locals 10

    const-string v0, "emitter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File ID cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lzm9;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p1, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->b:Lmq3;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareId()Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x28

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-wide/32 v5, 0x15180

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v9}, Lmq3$a;->e(Lmq3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_8

    instance-of p2, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz p2, :cond_5

    move-object p2, p0

    check-cast p2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-interface {p3}, Lzm9;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v0, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;->getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v1, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;->getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->getTemplateList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;

    const-string v5, "finished"

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->setTemplateList(Ljava/util/List;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v1, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p2, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;->getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;-><init>(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;)V

    invoke-interface {p3, v0}, Lzm9;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p2}, Lzm9;->onError(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    instance-of p2, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz p2, :cond_7

    move-object p2, p0

    check-cast p2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-interface {p3}, Lzm9;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lzm9;->onError(Ljava/lang/Throwable;)V

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->s(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;I)V

    :cond_7
    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz p1, :cond_9

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-interface {p3}, Lzm9;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lzm9;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-interface {p3}, Lzm9;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_9

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FileManager is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lzm9;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-interface {p3}, Lzm9;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-interface {p3, p0}, Lzm9;->onError(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public static final D(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lzm9;)V
    .locals 7

    const-string v0, "emitter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File ID cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lzm9;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p1, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->b:Lmq3;

    if-eqz v0, :cond_1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/32 v3, 0x15180

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lmq3$a;->f(Lmq3;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_8

    instance-of v0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-interface {p2}, Lzm9;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v1, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v2, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->getTemplateList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;

    const-string v6, "finished"

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->setTemplateList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lzm9;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lzm9;->onError(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    instance-of v0, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-interface {p2}, Lzm9;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lzm9;->onError(Ljava/lang/Throwable;)V

    :cond_6
    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->s(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;I)V

    :cond_7
    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz p1, :cond_9

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-interface {p2}, Lzm9;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lzm9;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-interface {p2}, Lzm9;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_9

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FileManager is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lzm9;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-interface {p2}, Lzm9;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-interface {p2, p0}, Lzm9;->onError(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public static synthetic o(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lzm9;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->A(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lzm9;)V

    return-void
.end method

.method public static synthetic p()V
    .locals 0

    invoke-static {}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->y()V

    return-void
.end method

.method public static synthetic q(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lzm9;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->D(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lzm9;)V

    return-void
.end method

.method public static synthetic r(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lzm9;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->C(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lzm9;)V

    return-void
.end method

.method public static final synthetic s(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->x(I)V

    return-void
.end method

.method public static final synthetic t(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;)Lmq3;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->b:Lmq3;

    return-object p0
.end method

.method public static final synthetic u()Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;
    .locals 1

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->h:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    return-object v0
.end method

.method public static final synthetic v(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;)Lapb;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->d:Lapb;

    return-object p0
.end method

.method public static final synthetic w(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;)V
    .locals 0

    sput-object p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->h:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    return-void
.end method

.method public static final y()V
    .locals 3

    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final B()Lnk1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->f:Lnk1;

    return-object p0
.end method

.method public a(Lcom/transsion/cloud_drive/base/api/request/MccMap;Le74;)V
    .locals 5

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->c:Leu9;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Leu9;->b(Lcom/transsion/cloud_drive/base/api/request/MccMap;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_4

    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    const-string v1, "CloudManagerImpl"

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->getCloudSpaceSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestReceiveFreeSpace onSuccess "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    const-string p1, "requestReceiveFreeSpace onError"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    const-string p0, "requestReceiveFreeSpace onException"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;)Lxm9;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr21;

    invoke-direct {v0, p1, p0}, Lr21;-><init>(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;)V

    invoke-static {v0}, Lxm9;->d(Ljn9;)Lxm9;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Lu74;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->c:Leu9;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Leu9;->c()Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    instance-of v1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    const-string v2, "CloudManagerImpl"

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    const-string v3, "getCloudStorageInfo onSuccess"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v3, v1, v0}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCloudStorageInfo onError errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    instance-of v1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v1, :cond_3

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    const-string p0, "getCloudStorageInfo onException"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0, v0}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public d(Ljava/lang/String;Le74;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->b:Lmq3;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmq3;->delete(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public e(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;Ls74;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->b:Lmq3;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lmq3;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_4

    instance-of p2, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, v1, p2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    instance-of p2, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v1, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result p2

    invoke-static {p0, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->s(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;I)V

    :cond_3
    instance-of p0, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p0, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :cond_5
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p0, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)Lxm9;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileShareInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lq21;

    invoke-direct {v0, p1, p0, p2}, Lq21;-><init>(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)V

    invoke-static {v0}, Lxm9;->d(Ljn9;)Lxm9;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public g()J
    .locals 2

    sget-wide v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->i:J

    return-wide v0
.end method

.method public h(Lcom/transsion/cloud_drive/base/api/request/MccMap;Le74;)V
    .locals 6

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->c:Leu9;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Leu9;->a(Lcom/transsion/cloud_drive/base/api/request/MccMap;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_7

    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    const-string v1, "CloudManagerImpl"

    if-eqz p1, :cond_5

    move-object p1, p0

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getCloudSpaceSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getEffectiveDays()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFreeSpaceInfo onSuccess "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getCloudSpaceSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    :goto_3
    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz p1, :cond_6

    move-object p1, p0

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    const-string p1, "getFreeSpaceInfo onError"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz p1, :cond_7

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    const-string p0, "getFreeSpaceInfo onException"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ls74;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->b:Lmq3;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lmq3;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_4

    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    instance-of p1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p0, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :cond_5
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p0, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/util/List;)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->b:Lmq3;

    if-eqz v1, :cond_0

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v3, v2}, Lmq3;->i(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    instance-of v1, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v1

    invoke-static {p0, v1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->s(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;I)V

    :cond_2
    instance-of p0, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public k(Ljava/util/List;Le74;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->z(Ljava/util/List;Le74;)V

    return-void
.end method

.method public l(Ljava/lang/String;)Lxm9;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lp21;

    invoke-direct {v0, p1, p0}, Lp21;-><init>(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;)V

    invoke-static {v0}, Lxm9;->d(Ljn9;)Lxm9;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public m(Lcom/transsion/dbdata/beans/VideoCloudData;Le74;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->b:Lmq3;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmq3;->delete(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v0, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->s(Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;I)V

    :cond_2
    instance-of p0, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public n(Ls74;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->i:J

    invoke-static {}, Laz8;->a()Laz8;

    move-result-object v0

    const-string v1, "key_cloud_last_config_time"

    sget-wide v2, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->i:J

    invoke-virtual {v0, v1, v2, v3}, Laz8;->g(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->b:Lmq3;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmq3;->getConfig()Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    instance-of v1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    const-string v2, "CloudManagerImpl"

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    const-string v1, "getConfig onSuccess"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfig onError errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    instance-of v1, p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v1, :cond_3

    check-cast p0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    const-string p0, "getConfig onException"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final x(I)V
    .locals 0

    const/16 p0, 0x4e77

    if-ne p1, p0, :cond_0

    new-instance p0, Lo21;

    invoke-direct {p0}, Lo21;-><init>()V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final z(Ljava/util/List;Le74;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->f:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, p2, v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl$deleteFileAsync$1;-><init>(Ljava/util/List;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Le74;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method
