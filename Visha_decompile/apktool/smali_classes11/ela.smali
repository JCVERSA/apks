.class public final Lela;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lela$a;,
        Lela$b;
    }
.end annotation


# static fields
.field public static final b:Lela$a;


# instance fields
.field public final a:Llw4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lela$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lela$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lela;->b:Lela$a;

    return-void
.end method

.method public constructor <init>(Llw4;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lela;->a:Llw4;

    return-void
.end method

.method public synthetic constructor <init>(Llw4;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lela;-><init>(Llw4;)V

    return-void
.end method

.method public static final A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lzfb;
    .locals 1

    const-string v0, "dt"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p6}, Li16;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzfb;
    .locals 1

    const-string v0, "dt"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Li16;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzfb;
    .locals 1

    const-string v0, "dt"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Li16;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lela;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lela;->r(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lzfb;
    .locals 0

    invoke-static/range {p0 .. p6}, Lela;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lzfb;
    .locals 0

    invoke-static/range {p0 .. p6}, Lela;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lela;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lela;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;Lela;Ljava/lang/Throwable;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lela;->s(Ljava/lang/String;Lela;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lela;->t(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;Lela;Lcom/transsion/retrofit/reponse/BaseResponse;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lela;->q(Ljava/lang/String;Lela;Lcom/transsion/retrofit/reponse/BaseResponse;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Ljava/lang/String;Lela;Lcom/transsion/retrofit/reponse/BaseResponse;)Lzfb;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "post log success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lela;->o(Ljava/lang/String;Lcom/transsion/retrofit/reponse/BaseResponse;Ljava/lang/Throwable;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final r(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final s(Ljava/lang/String;Lela;Ljava/lang/Throwable;)Lzfb;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post log failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lela;->o(Ljava/lang/String;Lcom/transsion/retrofit/reponse/BaseResponse;Ljava/lang/Throwable;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final t(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzfb;
    .locals 1

    const-string v0, "dt"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Li16;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lzfb;
    .locals 1

    const-string v0, "dt"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p6}, Li16;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final B(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)V
    .locals 2

    new-instance v0, Lyka;

    invoke-direct {v0}, Lyka;-><init>()V

    invoke-virtual {p0, p1, v0}, Lela;->m(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Lw74;)V

    const-string v0, "video_play_auto"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lela;->p(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method

.method public final D(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)V
    .locals 2

    new-instance v0, Lxka;

    invoke-direct {v0}, Lxka;-><init>()V

    invoke-virtual {p0, p1, v0}, Lela;->m(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Lw74;)V

    const-string v0, "video_play_draw"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lela;->p(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method

.method public final F(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;J)V
    .locals 8

    const-wide/16 v0, 0x3e8

    div-long v6, p2, v0

    const-wide/16 p2, 0x1

    cmp-long p0, v6, p2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;->getVideoDuration()D

    move-result-wide p2

    double-to-long p2, p2

    :goto_0
    move-wide v4, p2

    goto :goto_1

    :cond_1
    const-wide/16 p2, 0x0

    goto :goto_0

    :goto_1
    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_2

    :cond_2
    move-object v2, p0

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getArticleClass()Ljava/lang/String;

    move-result-object p0

    :cond_3
    move-object v3, p0

    invoke-static/range {v2 .. v7}, Li16;->l(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public final j(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/Long;Ljava/lang/Integer;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;->setDocId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getArticleClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;->setArticleClass(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getReqId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;->setReqId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lela;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;->setDt(Ljava/lang/String;)V

    sget-object p1, Lela;->b:Lela$a;

    invoke-static {}, Lydc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lela$a;->a(Lela$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;->setAppVersion(Ljava/lang/String;)V

    invoke-virtual {p0}, Lela;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;->setCountry(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;->setDuration(Ljava/lang/Long;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;->setPercent(Ljava/lang/Integer;)V

    :cond_2
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    sget-object p0, Lela;->b:Lela$a;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lela$a;->a(Lela$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    sget-object p0, Lela;->b:Lela$a;

    sget-object v0, Lcom/transsion/utils/deviceinfo/a;->d:Lcom/transsion/utils/deviceinfo/a$a;

    invoke-virtual {v0}, Lcom/transsion/utils/deviceinfo/a$a;->b()Lcom/transsion/utils/deviceinfo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/utils/deviceinfo/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lela$a;->a(Lela$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Lw74;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getReqId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lela;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lela;->k()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, v0, p1, p0}, Lw74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "athena common mark error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final n(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;JILz74;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getReqId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    invoke-virtual {p0}, Lela;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lela;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, p5

    invoke-interface/range {v0 .. v6}, Lz74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "athena over mark error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final o(Ljava/lang/String;Lcom/transsion/retrofit/reponse/BaseResponse;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "fail"

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0, p3}, Lela;->u(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Li16;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const-string p0, "success"

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Li16;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "unknown"

    invoke-static {p1, v0, p0}, Li16;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mark post result error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final p(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "TiktokTracker"

    iget-object v1, p0, Lela;->a:Llw4;

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lela;->j(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/Long;Ljava/lang/Integer;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "post eventType: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lela;->a:Llw4;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string p4, "singletonList(...)"

    invoke-static {p2, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Llw4;->b(Ljava/lang/String;Ljava/util/List;)Lmc7;

    move-result-object p2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p3, Lzka;

    invoke-direct {p3, p1, p0}, Lzka;-><init>(Ljava/lang/String;Lela;)V

    new-instance p4, Lala;

    invoke-direct {p4, p3}, Lala;-><init>(Le74;)V

    new-instance p3, Lbla;

    invoke-direct {p3, p1, p0}, Lbla;-><init>(Ljava/lang/String;Lela;)V

    new-instance v2, Lcla;

    invoke-direct {v2, p3}, Lcla;-><init>(Le74;)V

    invoke-virtual {p2, p4, v2}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post error: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v1, p2}, Lela;->o(Ljava/lang/String;Lcom/transsion/retrofit/reponse/BaseResponse;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final u(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    const-string v0, "unknown"

    if-eqz p1, :cond_7

    const/4 v1, 0x6

    if-ge p0, v1, :cond_7

    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_6

    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    instance-of v1, p1, Lretrofit2/HttpException;

    if-nez v1, :cond_5

    instance-of v1, p1, Lcom/google/gson/JsonSyntaxException;

    if-nez v1, :cond_5

    instance-of v1, p1, Lcom/google/gson/JsonParseException;

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/net/ConnectException;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/net/NoRouteToHostException;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string p0, "network"

    return-object p0

    :cond_5
    :goto_2
    const-string p0, "http"

    return-object p0

    :cond_6
    :goto_3
    const-string p0, "timeout"

    return-object p0

    :cond_7
    return-object v0
.end method

.method public final v(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)V
    .locals 2

    new-instance v0, Ldla;

    invoke-direct {v0}, Ldla;-><init>()V

    invoke-virtual {p0, p1, v0}, Lela;->m(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Lw74;)V

    const-string v0, "client_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lela;->p(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method

.method public final x(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;JI)V
    .locals 6

    new-instance v5, Lwka;

    invoke-direct {v5}, Lwka;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lela;->n(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;JILz74;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "video_over_auto"

    invoke-virtual {p0, p4, p1, p2, p3}, Lela;->p(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method

.method public final z(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;JI)V
    .locals 6

    new-instance v5, Lvka;

    invoke-direct {v5}, Lvka;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lela;->n(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;JILz74;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "video_over_draw"

    invoke-virtual {p0, p4, p1, p2, p3}, Lela;->p(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method
