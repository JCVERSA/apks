.class public Lcom/mgtv/thirdsdk/playcore/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aO:Ljava/lang/String; = "e"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:I

.field public D:Ljava/lang/String;

.field public E:I

.field public F:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Z

.field public J:Z

.field public K:Lcom/hunantv/imgo/net/entity/a;

.field public L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:I

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:I

.field public U:Z

.field public V:F

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a:Landroid/app/Activity;

.field public aA:Z

.field public aB:Lcom/hunantv/media/report/ReportParams;

.field public aC:I

.field aD:Lcom/mgtv/thirdsdk/playcore/d;

.field public aE:Z

.field public aF:Z

.field public aG:Ljava/lang/String;

.field public aH:Ljava/lang/String;

.field public aI:Z

.field public aJ:Z

.field public aK:Z

.field public aL:Z

.field public aM:Landroid/graphics/Bitmap;

.field public aN:Lcom/mgmi/ssp/PreRollVideoAd;

.field private aP:I

.field private aQ:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public aa:Z

.field public ab:Z

.field public ac:Z

.field public ad:J

.field public ae:Z

.field public af:I

.field public ag:Z

.field public ah:Z

.field public ai:Z

.field public aj:Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

.field public ak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field public al:Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

.field public am:I

.field public an:Ljava/lang/String;

.field public ao:Z

.field public ap:Z

.field public aq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public ar:J

.field public as:Z

.field public at:Z

.field public au:Z

.field public av:Z

.field public aw:Z

.field public ax:I

.field public ay:I

.field public az:Z

.field public b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

.field public c:Lcom/mgtv/task/m;

.field public d:Lcom/mgtv/task/g;

.field public e:Lcom/mgtv/task/g;

.field public f:Lcom/mgtv/task/g;

.field public g:Lcom/mgtv/task/g;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/String;

.field public l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

.field public m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

.field public n:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;",
            ">;"
        }
    .end annotation
.end field

.field public t:I

.field public u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z

.field public w:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$AuthButtons;

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->q:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->r:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->s:Ljava/util/List;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->C:I

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->D:Ljava/lang/String;

    .line 27
    new-instance v1, Lcom/hunantv/imgo/net/entity/a;

    invoke-direct {v1}, Lcom/hunantv/imgo/net/entity/a;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->K:Lcom/hunantv/imgo/net/entity/a;

    const/16 v1, -0x3e8

    .line 28
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->O:I

    const/4 v1, 0x2

    .line 29
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->Q:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->V:F

    .line 31
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->Z:Z

    const-wide/16 v1, -0x1

    .line 32
    iput-wide v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->ad:J

    .line 33
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aQ:Landroidx/collection/SimpleArrayMap;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aq:Ljava/util/List;

    .line 35
    new-instance v1, Lcom/hunantv/media/report/ReportParams;

    invoke-direct {v1}, Lcom/hunantv/media/report/ReportParams;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    const/4 v1, 0x1

    .line 36
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aC:I

    .line 37
    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aI:Z

    .line 38
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aK:Z

    .line 39
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aL:Z

    return-void
.end method

.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->q:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->r:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->s:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->C:I

    .line 6
    const-string v1, ""

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->D:Ljava/lang/String;

    .line 7
    new-instance v1, Lcom/hunantv/imgo/net/entity/a;

    invoke-direct {v1}, Lcom/hunantv/imgo/net/entity/a;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->K:Lcom/hunantv/imgo/net/entity/a;

    const/16 v1, -0x3e8

    .line 8
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->O:I

    const/4 v1, 0x2

    .line 9
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->Q:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->V:F

    .line 11
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->Z:Z

    const-wide/16 v1, -0x1

    .line 12
    iput-wide v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->ad:J

    .line 13
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aQ:Landroidx/collection/SimpleArrayMap;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aq:Ljava/util/List;

    .line 15
    new-instance v1, Lcom/hunantv/media/report/ReportParams;

    invoke-direct {v1}, Lcom/hunantv/media/report/ReportParams;-><init>()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aC:I

    .line 17
    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aI:Z

    .line 18
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aK:Z

    .line 19
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aL:Z

    .line 20
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aD:Lcom/mgtv/thirdsdk/playcore/d;

    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .line 9
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aQ:Landroidx/collection/SimpleArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Long;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 10
    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoDomains:Ljava/util/List;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 3
    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aI:Z

    return-void
.end method

.method public varargs a([I)V
    .locals 8

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, p1, v4

    const/4 v6, 0x2

    .line 6
    new-array v6, v6, [Ljava/lang/Long;

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    .line 8
    iget-object v7, p0, Lcom/mgtv/thirdsdk/playcore/e;->aQ:Landroidx/collection/SimpleArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(ILjava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 13
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ge v2, p1, :cond_0

    .line 14
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 15
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ar:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ar:J

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aP:I

    .line 8
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aD:Lcom/mgtv/thirdsdk/playcore/d;

    if-eqz p0, :cond_0

    .line 9
    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d;->onPlayStatusChange(I)V

    :cond_0
    return-void
.end method

.method public varargs b([I)V
    .locals 7

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p1, v3

    .line 5
    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e;->aQ:Landroidx/collection/SimpleArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->ar:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->aq:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mgtv/thirdsdk/playcore/e;->ar:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ar:J

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aq:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/e;->a(ILjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->N:Ljava/lang/String;

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aP:I

    return p0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 5

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/e;->aO:Ljava/lang/String;

    const-string v1, "resetData"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aF:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aE:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->aG:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->N:Ljava/lang/String;

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->A:Ljava/lang/String;

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->F:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->G:Ljava/lang/String;

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->H:Ljava/lang/String;

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->C:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/mgtv/thirdsdk/playcore/e;->am:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/mgtv/thirdsdk/playcore/e;->ad:J

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ao:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->R:Z

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->j:Ljava/util/List;

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->w:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$AuthButtons;

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->y:I

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->C:I

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->D:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ap:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->af:I

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->aQ:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->clear()V

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aP:I

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ac:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->Y:Z

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoPrepare  playdata resetData  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->U:Z

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->N:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->at:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->au:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ai:Z

    const-string v2, "uuid"

    invoke-static {v2, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->a(I)V

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ay:I

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->az:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aA:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aL:Z

    return-void
.end method

.method public n()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aD:Lcom/mgtv/thirdsdk/playcore/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/d;->getVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public o()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aD:Lcom/mgtv/thirdsdk/playcore/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/d;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public p()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->s:Ljava/util/List;

    return-object p0
.end method
