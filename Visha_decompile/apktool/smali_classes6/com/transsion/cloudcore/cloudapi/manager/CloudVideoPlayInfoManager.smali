.class public final Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper$b;


# static fields
.field public static final a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashMap;

.field public static final d:Ljava/util/HashMap;

.field public static final e:Ljava/util/HashMap;

.field public static final f:Ljava/util/HashMap;

.field public static final g:Ljava/util/HashMap;

.field public static final h:Ljava/util/HashMap;

.field public static final i:Ljava/util/HashMap;

.field public static final j:Ljava/util/HashMap;

.field public static k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-direct {v0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;-><init>()V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->c:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->e:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->g:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->h:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->L()V

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->m()V

    invoke-static {v0}, Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper;->f(Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper$b;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init CloudVideoPlayInfoManager setCloudVideoInfoHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Lzfb;
    .locals 5

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->getTemplateList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->Z(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->T(Ljava/lang/String;J)V

    invoke-virtual {v0, p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->H(Ljava/lang/String;)V

    sget-object v1, Lsrb;->a:Lsrb;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->getTemplateList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lsrb;->a(Ljava/util/List;)Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->Y(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b0(Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final B(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final I(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileInfo;)Lzfb;
    .locals 5

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->U(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileInfo;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->V(Ljava/lang/String;J)V

    invoke-virtual {v0, p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b0(Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final J(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic X(Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;Ljava/lang/String;JLjava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->W(Ljava/lang/String;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->x(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->w(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->J(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->B(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->A(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->z(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->y(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileInfo;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->I(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileInfo;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final w(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Lzfb;
    .locals 0

    sget-object p1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-virtual {p1, p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->H(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final x(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final y(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Lzfb;
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->getTemplateList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->h:Ljava/util/HashMap;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-virtual {v0, p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->H(Ljava/lang/String;)V

    sget-object v1, Lsrb;->a:Lsrb;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->getTemplateList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lsrb;->a(Ljava/util/List;)Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->Y(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final z(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;
    .locals 3

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->v(Ljava/lang/String;)Lxm9;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v1, v2, v0}, Lxm9;->u(JLjava/util/concurrent/TimeUnit;)Lxm9;

    move-result-object p0

    invoke-virtual {p0}, Lxm9;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get video info for fileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CloudVideoPlayInfoManager"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final D(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;
    .locals 0

    const-string p0, "fileId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    return-object p0
.end method

.method public final E()V
    .locals 0

    return-void
.end method

.method public final F(Ljava/lang/String;)Z
    .locals 2

    const-string p0, "fileId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->j:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final G(Ljava/lang/String;)Z
    .locals 2

    const-string p0, "fileId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final H(Ljava/lang/String;)V
    .locals 2

    const-string p0, "fileId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, La41;->a:La41;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, La41;->c(Landroid/content/Context;)Lxy0;

    move-result-object p0

    invoke-interface {p0, p1}, Lxy0;->b(Ljava/lang/String;)Lxm9;

    move-result-object p0

    new-instance v0, Ls41;

    invoke-direct {v0, p1}, Ls41;-><init>(Ljava/lang/String;)V

    new-instance p1, Lt41;

    invoke-direct {p1, v0}, Lt41;-><init>(Le74;)V

    invoke-virtual {p0, p1}, Lxm9;->e(Lzf1;)Lxm9;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxm9;->m(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p0

    invoke-virtual {p0}, Lxm9;->n()Lrc2;

    return-void
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 p0, 0x1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    invoke-static {p2}, Lr0a;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->getNamePath()Ljava/lang/String;

    move-result-object v3

    new-array v4, p0, [C

    const/16 v1, 0x2f

    const/4 v5, 0x0

    aput-char v1, v4, v5

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lj1a;->N0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, p0

    invoke-interface {v1, v3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, "/"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->setNamePath(Ljava/lang/String;)V

    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->copy$default(Lcom/transsion/cloud_drive/base/api/model/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final L()V
    .locals 13

    const-string p0, "CloudVideoPlayInfoManagercloud_file_info_expire"

    const-string v0, "CloudVideoPlayInfoManagercloud_file_info"

    const-string v1, "CloudVideoPlayInfoManagercloud_video_template"

    const-string v2, "CloudVideoPlayInfoManagercloud_video_access_time"

    const-string v3, "CloudVideoPlayInfoManagercloud_video_info_position"

    const-string v4, "CloudVideoPlayInfoManagercloud_video_info_expire"

    const-string v5, "CloudVideoPlayInfoManagercloud_video_info"

    const-string v6, " items"

    const-string v7, "fromJson(...)"

    const-string v8, ""

    const-string v9, "CloudVideoPlayInfoManager"

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v10

    invoke-virtual {v10, v5, v8}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_0

    new-instance v11, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$infoMap$1;

    invoke-direct {v11}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$infoMap$1;-><init>()V

    invoke-virtual {v11}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static {v10, v11}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/util/HashMap;

    sget-object v11, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Restored video info cache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to restore video info cache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_1

    new-instance v10, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$expireMap$1;

    invoke-direct {v10}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$expireMap$1;-><init>()V

    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v5, v10}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/HashMap;

    sget-object v10, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->c:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Restored expire time cache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to restore expire time cache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;)V

    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    invoke-virtual {v4, v3, v8}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$positionMap$1;

    invoke-direct {v5}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$positionMap$1;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/HashMap;

    sget-object v5, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->d:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restored position cache: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to restore position cache: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;)V

    :cond_2
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    invoke-virtual {v3, v2, v8}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    new-instance v4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$accessTimeMap$1;

    invoke-direct {v4}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$accessTimeMap$1;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v3, v4}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/HashMap;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restored access time cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to restore access time cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;)V

    :cond_3
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-virtual {v2, v1, v8}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$templateMap$1;

    invoke-direct {v3}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$templateMap$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/HashMap;

    sget-object v3, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restored template cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore template cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;)V

    :cond_4
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$fileInfoMap$1;

    invoke-direct {v2}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$fileInfoMap$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/HashMap;

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restored file info cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore file info cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;)V

    :cond_5
    :goto_5
    :try_start_6
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0, v8}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$fileInfoExpireMap$1;

    invoke-direct {v1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$restoreFromCache$fileInfoExpireMap$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored file info expire time cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restore file info expire time cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;)V

    :cond_6
    :goto_6
    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    sget-object v3, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    sget-object v5, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->j:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cache restore completed - INFO: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", EXPIRE: "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", POSITION: "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ACCESS: "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", TEMPLATE: "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", FILE_INFO: "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", FILE_INFO_EXPIRE: "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final M()V
    .locals 3

    const-string p0, "CloudVideoPlayInfoManager"

    :try_start_0
    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->e:Ljava/util/HashMap;

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "CloudVideoPlayInfoManagercloud_video_access_time"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Saved access time to cache"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save access time to cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final N()V
    .locals 3

    const-string p0, "CloudVideoPlayInfoManager"

    :try_start_0
    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->c:Ljava/util/HashMap;

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "CloudVideoPlayInfoManagercloud_video_info_expire"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Saved expire time to cache"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save expire time to cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final O()V
    .locals 3

    const-string p0, "CloudVideoPlayInfoManager"

    :try_start_0
    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->j:Ljava/util/HashMap;

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "CloudVideoPlayInfoManagercloud_file_info_expire"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Saved file info expire time to cache"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save file info expire time to cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final P()V
    .locals 3

    const-string p0, "CloudVideoPlayInfoManager"

    :try_start_0
    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "CloudVideoPlayInfoManagercloud_file_info"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Saved file info to cache"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save file info to cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final Q()V
    .locals 3

    const-string p0, "CloudVideoPlayInfoManager"

    :try_start_0
    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "CloudVideoPlayInfoManagercloud_video_info"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Saved video info to cache"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save video info to cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final R()V
    .locals 3

    const-string p0, "CloudVideoPlayInfoManager"

    :try_start_0
    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->d:Ljava/util/HashMap;

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "CloudVideoPlayInfoManagercloud_video_info_position"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Saved position to cache"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save position to cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final S()V
    .locals 3

    const-string p0, "CloudVideoPlayInfoManager"

    :try_start_0
    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "CloudVideoPlayInfoManagercloud_video_template"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Saved template selection to cache"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save template selection to cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final T(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object p3, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->c:Ljava/util/HashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->N()V

    return-void
.end method

.method public final U(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileInfo;)V
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->l()V

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->P()V

    return-void
.end method

.method public final V(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object p3, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->j:Ljava/util/HashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->O()V

    return-void
.end method

.method public final W(Ljava/lang/String;JLjava/lang/Runnable;)V
    .locals 7

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    sub-long v3, p2, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Position changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", updating cache..."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->R()V

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public final Y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->S()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set template ID for file: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", template: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "CloudVideoPlayInfoManager"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final Z(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)V
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->k()V

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->Q()V

    return-void
.end method

.method public a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 4

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileSize()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareCreatorId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileCoverUrl()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->h:Ljava/util/HashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-virtual {p1, p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->s(Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final a0(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)V
    .locals 0

    const-string p0, "fileId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shareInfo"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper$a;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper$a;

    invoke-direct {v0}, Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper$a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->C(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-virtual {p1, p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->s(Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper$a;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final b0(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->e:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->k:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->k:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->M()V

    const/4 p0, 0x0

    sput p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->k:I

    const-string p0, "Batch saved access time after 10 updates"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "CloudVideoPlayInfoManager"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 3

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x50

    if-lt v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") reached cleanup threshold (80), starting eviction"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CloudVideoPlayInfoManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->q()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x50

    if-lt v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File info cache size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") reached cleanup threshold (80), starting eviction"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CloudVideoPlayInfoManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->p()V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->c:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->j:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->j:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->Q()V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->N()V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->M()V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->P()V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->O()V

    const/4 p0, 0x0

    sput p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->k:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleared expired cache for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " video files and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " file info entries"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "CloudVideoPlayInfoManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->j:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final p()V
    .locals 7

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-gtz v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->e:Ljava/util/HashMap;

    invoke-static {v1}, Lmy5;->E(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$evictFileInfoLRUCache$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$evictFileInfoLRUCache$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-lt v4, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v5}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->F(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->o(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v4, v0, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lt v4, v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v3}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->o(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->P()V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->O()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File info LRU eviction completed: evicted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " files, current size: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "CloudVideoPlayInfoManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final q()V
    .locals 8

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-gtz v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->e:Ljava/util/HashMap;

    invoke-static {v1}, Lmy5;->E(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$evictLRUCache$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager$evictLRUCache$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lt v5, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v6}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->G(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v6}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->n(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v5, v0, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lt v5, v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0, v3}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->n(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->Q()V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->N()V

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->M()V

    sput v4, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->k:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LRU eviction completed: evicted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " files, current size: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "CloudVideoPlayInfoManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final r(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "fileId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->getNamePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final s(Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)Ljava/lang/String;
    .locals 2

    const-string v0, "videoPlayInfoResult"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->getTemplateList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final t(Ljava/lang/String;)J
    .locals 3

    const-string p0, "fileId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    const-wide/16 v0, 0x64

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    sub-long/2addr p0, v0

    :cond_1
    return-wide p0
.end method

.method public final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b0(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->getTemplateList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lsrb;->a:Lsrb;

    invoke-virtual {v0, p0}, Lsrb;->a(Ljava/util/List;)Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method public final v(Ljava/lang/String;)Lxm9;
    .locals 4

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;

    const-string v1, "doOnSuccess(...)"

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->G(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->b0(Ljava/lang/String;)V

    invoke-static {v0}, Lxm9;->k(Ljava/lang/Object;)Lxm9;

    move-result-object p0

    new-instance v0, Lm41;

    invoke-direct {v0, p1}, Lm41;-><init>(Ljava/lang/String;)V

    new-instance p1, Ln41;

    invoke-direct {p1, v0}, Ln41;-><init>(Le74;)V

    invoke-virtual {p0, p1}, Lxm9;->e(Lzf1;)Lxm9;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lxm9;->k(Ljava/lang/Object;)Lxm9;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    const-string v0, "getApp(...)"

    if-eqz p0, :cond_2

    sget-object v2, La41;->a:La41;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, La41;->c(Landroid/content/Context;)Lxy0;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lxy0;->f(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)Lxm9;

    move-result-object p0

    new-instance v0, Lo41;

    invoke-direct {v0, p1}, Lo41;-><init>(Ljava/lang/String;)V

    new-instance p1, Lp41;

    invoke-direct {p1, v0}, Lp41;-><init>(Le74;)V

    invoke-virtual {p0, p1}, Lxm9;->e(Lzf1;)Lxm9;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    sget-object p0, La41;->a:La41;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, La41;->c(Landroid/content/Context;)Lxy0;

    move-result-object p0

    invoke-interface {p0, p1}, Lxy0;->l(Ljava/lang/String;)Lxm9;

    move-result-object p0

    new-instance v0, Lq41;

    invoke-direct {v0, p1}, Lq41;-><init>(Ljava/lang/String;)V

    new-instance p1, Lr41;

    invoke-direct {p1, v0}, Lr41;-><init>(Le74;)V

    invoke-virtual {p0, p1}, Lxm9;->e(Lzf1;)Lxm9;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
