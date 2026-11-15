.class public Lcom/mgtv/a/b/c;
.super Lcom/mgtv/a/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/a/b/c$a;,
        Lcom/mgtv/a/b/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/b/a/a<",
        "Lcom/mgmi/model/VASTFloatAd;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Lcom/mgtv/a/b/c$b;

.field private o:I

.field private p:Lcom/mgmi/g/a;

.field private q:Lcom/mgmi/platform/view/a;

.field private r:Lcom/mgtv/a/b/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Corner"

    invoke-direct {p0, v0}, Lcom/mgtv/a/b/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/a/b/a/a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/mgtv/a/b/c;->a:I

    .line 4
    iput p1, p0, Lcom/mgtv/a/b/c;->o:I

    return-void
.end method

.method private B()J
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->s()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/a;->u()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/a;->t()F

    move-result p0

    float-to-long v0, p0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private a(Lcom/mgmi/model/r;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/mgmi/model/r;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lcom/mgtv/a/b/c$b;->Idle:Lcom/mgtv/a/b/c$b;

    iput-object v0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    const/4 v0, 0x0

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/c;->a(Lcom/mgmi/model/VASTFloatAd;)Z

    .line 50
    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/b/c;Lcom/mgmi/model/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/a/b/c;->a(Lcom/mgmi/model/r;)V

    return-void
.end method

.method private a(Lcom/mgmi/model/VASTFloatAd;J)Z
    .locals 8

    .line 41
    iget-object v0, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/mgtv/a/b/c;->B()J

    move-result-wide v2

    cmp-long p0, p2, v2

    if-gez p0, :cond_1

    return v1

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result p0

    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getRolltime()I

    move-result v0

    add-int/2addr p0, v0

    int-to-long v4, p0

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-nez p0, :cond_2

    return v1

    :cond_2
    sub-long v6, p2, v2

    .line 44
    div-long/2addr v6, v4

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    .line 45
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr p0, v2

    cmp-long p0, p2, p0

    if-gtz p0, :cond_3

    cmp-long p0, p2, v2

    if-ltz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private b(Lcom/mgmi/model/VASTFloatAd;J)Z
    .locals 12

    .line 8
    iget-object v0, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v0

    .line 10
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-gt v2, v3, :cond_1

    move v2, v4

    :cond_1
    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x3

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/mgtv/a/b/c;->B()J

    move-result-wide v5

    cmp-long p0, p2, v5

    if-ltz p0, :cond_3

    int-to-long v7, v2

    add-long/2addr v7, v5

    cmp-long p0, p2, v7

    if-gtz p0, :cond_3

    return v4

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getRolltime()I

    move-result p0

    add-int/2addr p0, v0

    int-to-long p0, p0

    const-wide/16 v7, 0x0

    cmp-long v3, p0, v7

    if-nez v3, :cond_4

    return v1

    :cond_4
    sub-long v7, p2, v5

    .line 13
    div-long v9, v7, p0

    .line 14
    rem-long/2addr v7, p0

    mul-long/2addr v9, p0

    add-long/2addr v5, v9

    int-to-long v2, v2

    add-long v9, v5, v2

    cmp-long v9, p2, v9

    if-gtz v9, :cond_5

    int-to-long v9, v1

    sub-long v9, v5, v9

    cmp-long v9, p2, v9

    if-ltz v9, :cond_5

    move v9, v4

    goto :goto_0

    :cond_5
    move v9, v1

    :goto_0
    if-nez v9, :cond_7

    int-to-long v10, v0

    cmp-long v0, v7, v10

    if-lez v0, :cond_7

    add-long/2addr v5, p0

    add-long/2addr v2, v5

    cmp-long p0, p2, v2

    if-gtz p0, :cond_6

    int-to-long p0, v1

    sub-long/2addr v5, p0

    cmp-long p0, p2, v5

    if-ltz p0, :cond_6

    move v1, v4

    :cond_6
    move v9, v1

    :cond_7
    return v9

    :cond_8
    :goto_1
    return v1
.end method

.method private c(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->isWaitRollDuration()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTFloatAd;->setWaitRollDuration(Z)V

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Lcom/mgmi/model/VASTFloatAd;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getRolltime()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/mgmi/ads/api/a;->getContentCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/mgtv/a/b/c;->a(Lcom/mgmi/model/VASTFloatAd;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private o()Z
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    iget p0, p0, Lcom/mgmi/platform/view/a;->a:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(J)V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    .line 14
    iget-object v1, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->n()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    sget-object v2, Lcom/mgtv/a/b/c$b;->Closed:Lcom/mgtv/a/b/c$b;

    if-eq v1, v2, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/mgtv/a/b/c;->B()J

    move-result-wide v3

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    invoke-direct {p0}, Lcom/mgtv/a/b/c;->B()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v3, v0

    cmp-long p1, p1, v3

    if-lez p1, :cond_7

    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->p()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->s()V

    .line 17
    iput-object v2, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    .line 18
    iget-object p1, p0, Lcom/mgtv/a/b/c;->r:Lcom/mgtv/a/b/c$a;

    if-eqz p1, :cond_7

    .line 19
    iget-object p0, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    invoke-interface {p1, p0}, Lcom/mgtv/a/b/c$a;->c(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_0

    :cond_1
    if-eqz v0, :cond_7

    .line 20
    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getLoopStyle()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    iget-object v1, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    sget-object v2, Lcom/mgtv/a/b/c$b;->showing:Lcom/mgtv/a/b/c$b;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getRolltime()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0, v0, p1, p2}, Lcom/mgtv/a/b/c;->a(Lcom/mgmi/model/VASTFloatAd;J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 22
    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getLoopStyle()Z

    move-result v1

    if-eqz v1, :cond_7

    long-to-int p1, p1

    .line 23
    iput p1, p0, Lcom/mgtv/a/b/c;->a:I

    .line 24
    iget-object p1, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    if-eqz p1, :cond_2

    .line 25
    iget p2, p1, Lcom/mgmi/platform/view/a;->c:F

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Lcom/mgmi/platform/view/a;->c:F

    .line 26
    :cond_2
    sget-object p1, Lcom/mgtv/a/b/c$b;->Dead:Lcom/mgtv/a/b/c$b;

    iput-object p1, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    .line 27
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_7

    instance-of p1, p0, Lcom/mgtv/a/d/d/a;

    if-eqz p1, :cond_7

    .line 28
    check-cast p0, Lcom/mgtv/a/d/d/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/d/a;->i()V

    goto :goto_0

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    sget-object v3, Lcom/mgtv/a/b/c$b;->Dead:Lcom/mgtv/a/b/c$b;

    if-ne v1, v3, :cond_5

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getRolltime()I

    move-result v1

    if-lez v1, :cond_5

    invoke-direct {p0, v0, p1, p2}, Lcom/mgtv/a/b/c;->b(Lcom/mgmi/model/VASTFloatAd;J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30
    sget-object p1, Lcom/mgtv/a/b/c$b;->Idle:Lcom/mgtv/a/b/c$b;

    iput-object p1, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/mgtv/a/b/c;->a:I

    .line 32
    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->isWaitRollDuration()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 33
    invoke-direct {p0, v0}, Lcom/mgtv/a/b/c;->c(Lcom/mgmi/model/VASTFloatAd;)V

    goto :goto_0

    .line 34
    :cond_4
    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->b()V

    goto :goto_0

    .line 35
    :cond_5
    iget-object v1, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getRolltime()I

    move-result v1

    if-gtz v1, :cond_7

    .line 36
    invoke-direct {p0}, Lcom/mgtv/a/b/c;->B()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-ltz v1, :cond_6

    invoke-direct {p0}, Lcom/mgtv/a/b/c;->B()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    cmp-long p1, p1, v1

    if-lez p1, :cond_7

    .line 37
    :cond_6
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->s()V

    .line 38
    sget-object p1, Lcom/mgtv/a/b/c$b;->Closed:Lcom/mgtv/a/b/c$b;

    iput-object p1, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    .line 39
    iget-object p1, p0, Lcom/mgtv/a/b/c;->r:Lcom/mgtv/a/b/c$a;

    if-eqz p1, :cond_7

    .line 40
    iget-object p0, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    invoke-interface {p1, p0}, Lcom/mgtv/a/b/c$a;->c(Lcom/mgmi/platform/view/a;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/g/a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/a/b/c;->p:Lcom/mgmi/g/a;

    return-void
.end method

.method public a(Lcom/mgmi/platform/view/a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/c;->b(Lcom/mgmi/model/VASTFloatAd;)V

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTFloatAd;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/mgtv/a/b/c$b;->Idle:Lcom/mgtv/a/b/c$b;

    iput-object v0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    if-eqz p1, :cond_0

    .line 7
    iget v0, p1, Lcom/mgmi/model/VASTAd;->show_type:I

    iput v0, p0, Lcom/mgtv/a/b/a/a;->c:I

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lcom/mgtv/a/a/a;->a(Ljava/lang/Object;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->q()V

    .line 11
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/b;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 17
    iget-object v1, p0, Lcom/mgtv/a/b/c;->p:Lcom/mgmi/g/a;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/mgmi/g/a;

    invoke-direct {v1}, Lcom/mgmi/g/a;-><init>()V

    iput-object v1, p0, Lcom/mgtv/a/b/c;->p:Lcom/mgmi/g/a;

    .line 19
    :cond_0
    new-instance v1, Lcom/mgmi/ads/api/a/c;

    invoke-direct {v1}, Lcom/mgmi/ads/api/a/c;-><init>()V

    iget-object v2, p0, Lcom/mgtv/a/b/c;->p:Lcom/mgmi/g/a;

    invoke-virtual {v1, v2}, Lcom/mgmi/ads/api/a/c;->a(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/c;

    move-result-object v1

    const-string v2, "ADS_ONLINE_VIDEO"

    invoke-virtual {v1, v2}, Lcom/mgmi/ads/api/a/c;->b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    invoke-interface {v1, v2}, Lcom/mgmi/ads/api/a/d;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/ads/api/a/d;

    move-result-object v1

    .line 20
    iget v2, p0, Lcom/mgtv/a/b/c;->o:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mgtv/a/b/c;->o:I

    .line 21
    new-instance v2, Lcom/mgmi/ads/api/a/e;

    invoke-direct {v2, v0}, Lcom/mgmi/ads/api/a/e;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/mgtv/a/b/c$1;

    invoke-direct {v0, p0}, Lcom/mgtv/a/b/c$1;-><init>(Lcom/mgtv/a/b/c;)V

    const-string p0, "Conner"

    invoke-virtual {v2, v1, v0, p0}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/e$a;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/mgmi/model/VASTFloatAd;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p1}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    .line 5
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    invoke-virtual {v0, p1}, Lcom/mgtv/a/a/a;->a(Ljava/lang/Object;)V

    .line 7
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/a/a;->b()V

    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/c;->a(Lcom/mgmi/model/VASTFloatAd;)Z

    move-result p0

    return p0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/a/b/c;->q:Lcom/mgmi/platform/view/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mgtv/a/b/c;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    check-cast v0, Lcom/mgtv/a/d/d/a;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-direct {p0, v0}, Lcom/mgtv/a/b/c;->d(Lcom/mgmi/model/VASTFloatAd;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/mgtv/a/b/c$b;->Dead:Lcom/mgtv/a/b/c$b;

    iput-object v0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    .line 3
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    check-cast p0, Lcom/mgtv/a/d/d/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTFloatAd;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTFloatAd;->setWaitRollDuration(Z)V

    :cond_0
    return-void

    .line 5
    :cond_1
    sget-object v0, Lcom/mgtv/a/b/c$b;->showing:Lcom/mgtv/a/b/c$b;

    iput-object v0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    .line 6
    invoke-super {p0}, Lcom/mgtv/a/b/a/a;->d()V

    .line 7
    iget-object p0, p0, Lcom/mgtv/a/b/c;->r:Lcom/mgtv/a/b/c$a;

    if-eqz p0, :cond_2

    .line 8
    invoke-interface {p0}, Lcom/mgtv/a/b/c$a;->n()V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 1

    sget-object v0, Lcom/mgtv/a/b/c$b;->hided:Lcom/mgtv/a/b/c$b;

    iput-object v0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    return-void
.end method

.method public f_()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    sget-object v1, Lcom/mgtv/a/b/c$b;->Closed:Lcom/mgtv/a/b/c$b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/mgtv/a/b/c$b;->Dead:Lcom/mgtv/a/b/c$b;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/mgtv/a/b/c$b;->hided:Lcom/mgtv/a/b/c$b;

    iput-object v0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    invoke-super {p0}, Lcom/mgtv/a/b/a/a;->f_()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getLoopStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getRolltime()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    return-void

    :catchall_0
    :cond_0
    sget-object v0, Lcom/mgtv/a/b/c$b;->Dead:Lcom/mgtv/a/b/c$b;

    iput-object v0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    return-void
.end method

.method public g_()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    sget-object v1, Lcom/mgtv/a/b/c$b;->Closed:Lcom/mgtv/a/b/c$b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/mgtv/a/b/c$b;->Dead:Lcom/mgtv/a/b/c$b;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/mgtv/a/b/c$b;->showing:Lcom/mgtv/a/b/c$b;

    iput-object v0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    invoke-super {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    sget-object v0, Lcom/mgtv/a/b/c$b;->showing:Lcom/mgtv/a/b/c$b;

    iput-object v0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    return-void
.end method

.method public l()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/a/b/a/a;->l()V

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/a/a/a;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/a/a;->b()V

    :cond_1
    return-void
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    sget-object v0, Lcom/mgtv/a/b/c$b;->Closed:Lcom/mgtv/a/b/c$b;

    if-eq p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/a/b/c;->b:Lcom/mgtv/a/b/c$b;

    sget-object v0, Lcom/mgtv/a/b/c$b;->Dead:Lcom/mgtv/a/b/c$b;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mgtv/a/b/c$b;->showing:Lcom/mgtv/a/b/c$b;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mgtv/a/b/c$b;->hided:Lcom/mgtv/a/b/c$b;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
