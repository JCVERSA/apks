.class public final Lcom/transsion/onlinevideo/tiktok/repository/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/tiktok/repository/a$a;,
        Lcom/transsion/onlinevideo/tiktok/repository/a$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/onlinevideo/tiktok/repository/a$a;


# instance fields
.field public final a:Llw4;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/repository/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/onlinevideo/tiktok/repository/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/repository/a;->c:Lcom/transsion/onlinevideo/tiktok/repository/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Llw4;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llw4;

    .line 5
    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/tiktok/repository/a;-><init>(Llw4;)V

    return-void
.end method

.method public constructor <init>(Llw4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/repository/a;->a:Llw4;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/repository/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final D(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Ljava/lang/String;)Lmc7;
    .locals 6

    const-string v0, "it"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x1

    iput-boolean p6, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "refreshBatch start reqKey="

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " docIds="

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p6, " batchReqId="

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p6, "TiktokPlayUrlRepository"

    invoke-static {p6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4, p2}, Lcom/transsion/onlinevideo/tiktok/repository/a;->K(Ljava/util/List;)Lmc7;

    move-result-object p0

    new-instance p6, Lpka;

    move-object v0, p6

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lpka;-><init>(Ljava/lang/String;Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    new-instance p2, Lqka;

    invoke-direct {p2, p6}, Lqka;-><init>(Le74;)V

    invoke-virtual {p0, p2}, Lmc7;->p(Lzf1;)Lmc7;

    move-result-object p0

    new-instance p2, Ldka;

    invoke-direct {p2, p1}, Ldka;-><init>(Ljava/lang/String;)V

    new-instance p3, Leka;

    invoke-direct {p3, p2}, Leka;-><init>(Le74;)V

    invoke-virtual {p0, p3}, Lmc7;->o(Lzf1;)Lmc7;

    move-result-object p0

    new-instance p2, Lfka;

    invoke-direct {p2, p4, p1}, Lfka;-><init>(Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmc7;->m(Ld5;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->U()Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static final E(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final F(Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/repository/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refreshBatch finish reqKey="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokPlayUrlRepository"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final G(Ljava/lang/String;Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/repository/a$b;)Lzfb;
    .locals 4

    invoke-virtual {p5}, Lcom/transsion/onlinevideo/tiktok/repository/a$b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p5}, Lcom/transsion/onlinevideo/tiktok/repository/a$b;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshBatch success reqKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " updatedCount="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " newReqId="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TiktokPlayUrlRepository"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p5}, Lcom/transsion/onlinevideo/tiktok/repository/a$b;->a()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/transsion/onlinevideo/tiktok/repository/a;->q(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p5}, Lcom/transsion/onlinevideo/tiktok/repository/a$b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/transsion/onlinevideo/tiktok/repository/a;->p(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final H(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final I(Ljava/lang/String;Ljava/lang/Throwable;)Lzfb;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshBatch failed reqKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokPlayUrlRepository"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final J(Le74;Ljava/lang/Object;)Lmc7;
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmc7;

    return-object p0
.end method

.method public static final L(Lcom/transsion/onlinevideo/tiktok/repository/a;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;)Lcom/transsion/onlinevideo/tiktok/repository/a$b;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->B(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;)Lcom/transsion/onlinevideo/tiktok/repository/a$b;

    move-result-object p0

    return-object p0
.end method

.method public static final M(Le74;Ljava/lang/Object;)Lcom/transsion/onlinevideo/tiktok/repository/a$b;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/onlinevideo/tiktok/repository/a$b;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Throwable;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->I(Ljava/lang/String;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Le74;Ljava/lang/Object;)Lmc7;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->J(Le74;Ljava/lang/Object;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Le74;Ljava/lang/Object;)Lcom/transsion/onlinevideo/tiktok/repository/a$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->M(Le74;Ljava/lang/Object;)Lcom/transsion/onlinevideo/tiktok/repository/a$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->v(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->F(Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Ljava/lang/String;)Lmc7;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/onlinevideo/tiktok/repository/a;->D(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Ljava/lang/String;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->E(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/onlinevideo/tiktok/repository/a;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;)Lcom/transsion/onlinevideo/tiktok/repository/a$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->L(Lcom/transsion/onlinevideo/tiktok/repository/a;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;)Lcom/transsion/onlinevideo/tiktok/repository/a$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Lcom/transsion/onlinevideo/tiktok/repository/a$b;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/tiktok/repository/a;->s(Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Lcom/transsion/onlinevideo/tiktok/repository/a$b;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/repository/a$b;)Lzfb;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/onlinevideo/tiktok/repository/a;->G(Ljava/lang/String;Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/repository/a$b;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/String;Ljava/lang/Throwable;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/repository/a;->w(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/String;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/repository/a;->u(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->H(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n(Le74;Ljava/lang/Object;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->t(Le74;Ljava/lang/Object;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->x(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static final s(Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Lcom/transsion/onlinevideo/tiktok/repository/a$b;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;
    .locals 1

    const-string v0, "it"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/transsion/onlinevideo/tiktok/repository/a;->y(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static final t(Le74;Ljava/lang/Object;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    return-object p0
.end method

.method public static final u(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Lzfb;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getReqId()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensurePlayable done docId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reqId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TiktokPlayUrlRepository"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final v(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final w(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/String;Ljava/lang/Throwable;)Lzfb;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensurePlayable failed docId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " reqKey="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokPlayUrlRepository"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final x(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/util/List;)Z
    .locals 7

    const-string p0, "article"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "allArticles"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/onlinevideo/tiktok/repository/a;->c:Lcom/transsion/onlinevideo/tiktok/repository/a$a;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/repository/a$a;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;

    move-result-object p0

    invoke-static {p0, v0, v1}, Ldna;->f(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;J)Z

    move-result p0

    const-string v2, "TiktokPlayUrlRepository"

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "needsRefreshBeforePlay=false docId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " url not expired"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getReqId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, v0, v1}, Ldna;->c(Ljava/lang/String;Ljava/util/List;J)Ljava/util/List;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getReqId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;->getUrlExpire()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needsRefreshBeforePlay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " docId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reqId="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " expiredCount="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " urlExpire="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " now="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public final B(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;)Lcom/transsion/onlinevideo/tiktok/repository/a$b;
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;->getRet()I

    move-result p0

    const-string v0, "TiktokPlayUrlRepository"

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;->getData()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;->getReqId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseVideoUrlResponse ok dataCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " reqId="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/transsion/onlinevideo/tiktok/repository/a$b;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;->getData()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;->getReqId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a$b;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;->getRet()I

    move-result p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseVideoUrlResponse failed ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " msg="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;->getRet()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postVideoUrl ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final C(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lmc7;
    .locals 10

    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v8, p0, Lcom/transsion/onlinevideo/tiktok/repository/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Lnka;

    move-object v0, v9

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lnka;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;)V

    new-instance p0, Loka;

    invoke-direct {p0, v9}, Loka;-><init>(Le74;)V

    invoke-virtual {v8, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p3, "computeIfAbsent(...)"

    invoke-static {p0, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lmc7;

    iget-boolean p3, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "refreshBatch reuse inflight reqKey="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " docIds="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TiktokPlayUrlRepository"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public final K(Ljava/util/List;)Lmc7;
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/repository/a;->a:Llw4;

    const-string v1, "TiktokPlayUrlRepository"

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestVideoUrl docIds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;->setDocIds(Ljava/util/List;)V

    sget-object p1, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->e:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;->setAc(Ljava/lang/String;)V

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;->setOs(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/utils/deviceinfo/a;->d:Lcom/transsion/utils/deviceinfo/a$a;

    invoke-virtual {v1}, Lcom/transsion/utils/deviceinfo/a$a;->b()Lcom/transsion/utils/deviceinfo/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/utils/deviceinfo/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;->setOsVersion(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/utils/deviceinfo/a$a;->b()Lcom/transsion/utils/deviceinfo/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/utils/deviceinfo/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;->setDt(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;->setCountry(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/repository/a;->a:Llw4;

    invoke-interface {p1, v0}, Llw4;->c(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lgka;

    invoke-direct {v0, p0}, Lgka;-><init>(Lcom/transsion/onlinevideo/tiktok/repository/a;)V

    new-instance p0, Lhka;

    invoke-direct {p0, v0}, Lhka;-><init>(Le74;)V

    invoke-virtual {p1, p0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/repository/a;->a:Llw4;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestVideoUrl unavailable apiService="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " docIds="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "postVideoUrl unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lmc7;->s(Ljava/lang/Throwable;)Lmc7;

    move-result-object p0

    const-string p1, "error(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 5

    if-eqz p4, :cond_9

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string p0, " count="

    const-string v0, " newReqId="

    const-string v1, "TiktokPlayUrlRepository"

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getReqId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p3, p4}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->setReqId(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "applyReqIdUpdates batch previousReqId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    move-object p2, p3

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, p4}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->setReqId(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyReqIdUpdates docIds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-void
.end method

.method public final q(Ljava/util/List;Ljava/util/Map;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "TiktokPlayUrlRepository"

    if-eqz v0, :cond_0

    const-string p0, "applyVideoInfoUpdates empty updates"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/transsion/onlinevideo/tiktok/repository/a;->z(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyVideoInfoUpdates merged="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " docIds="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final r(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/util/List;)Lmc7;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "article"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "allArticles"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/onlinevideo/tiktok/repository/a;->c:Lcom/transsion/onlinevideo/tiktok/repository/a$a;

    invoke-virtual {v3}, Lcom/transsion/onlinevideo/tiktok/repository/a$a;->b()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;

    move-result-object v5

    invoke-static {v5, v3, v4}, Ldna;->f(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;J)Z

    move-result v5

    const-string v6, "just(...)"

    const-string v7, "ensurePlayable skip docId="

    const-string v8, "TiktokPlayUrlRepository"

    if-nez v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " url not expired"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getReqId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v3, v4}, Ldna;->c(Ljava/lang/String;Ljava/util/List;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " no expired docIds in batch"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getReqId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    if-nez v4, :cond_3

    move-object v5, v3

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Li81;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/Iterable;

    const/16 v16, 0x3e

    const/16 v17, 0x0

    const-string v10, ","

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ensurePlayable refresh docId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reqKey="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " batchReqId="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " expiredDocIds="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5, v3, v2, v4}, Lcom/transsion/onlinevideo/tiktok/repository/a;->C(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lmc7;

    move-result-object v3

    new-instance v4, Lcka;

    invoke-direct {v4, v0, v2, v1}, Lcka;-><init>(Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)V

    new-instance v0, Lika;

    invoke-direct {v0, v4}, Lika;-><init>(Le74;)V

    invoke-virtual {v3, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    new-instance v2, Ljka;

    invoke-direct {v2}, Ljka;-><init>()V

    new-instance v3, Lkka;

    invoke-direct {v3, v2}, Lkka;-><init>(Le74;)V

    invoke-virtual {v0, v3}, Lmc7;->p(Lzf1;)Lmc7;

    move-result-object v0

    new-instance v2, Llka;

    invoke-direct {v2, v1, v5}, Llka;-><init>(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/String;)V

    new-instance v1, Lmka;

    invoke-direct {v1, v2}, Lmka;-><init>(Le74;)V

    invoke-virtual {v0, v1}, Lmc7;->o(Lzf1;)Lmc7;

    move-result-object v0

    const-string v1, "doOnError(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final y(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    :cond_2
    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    :cond_3
    :goto_0
    return-object p0
.end method

.method public final z(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;-><init>()V

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->setVideoInfo(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;)V

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;->setUrl(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;->getUrlExpire()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;->getUrlExpire()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;->setUrlExpire(J)V

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;->getVideoDuration()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;->getVideoDuration()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;->setVideoDuration(D)V

    :cond_4
    return-void
.end method
