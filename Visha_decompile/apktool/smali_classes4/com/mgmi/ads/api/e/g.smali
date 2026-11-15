.class public Lcom/mgmi/ads/api/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/mgmi/ads/api/c/a;

.field private b:Lcom/mgmi/model/VASTAd;

.field private c:Lcom/mgmi/platform/d;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/platform/view/ViewGroup/widget/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/mgmi/platform/view/ViewGroup/widget/e;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/content/Context;

.field private h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

.field private i:Lcom/mgmi/ads/api/d/a;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mgmi/ads/api/d/a;Lcom/mgmi/platform/d;Lcom/mgmi/ads/api/c/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ads/api/e/g;->b:Lcom/mgmi/model/VASTAd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/ads/api/e/g;->j:Z

    iput-object p1, p0, Lcom/mgmi/ads/api/e/g;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/mgmi/ads/api/e/g;->f:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/mgmi/ads/api/e/g;->i:Lcom/mgmi/ads/api/d/a;

    iput-object p4, p0, Lcom/mgmi/ads/api/e/g;->c:Lcom/mgmi/platform/d;

    iput-object p5, p0, Lcom/mgmi/ads/api/e/g;->a:Lcom/mgmi/ads/api/c/a;

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->d()V

    .line 17
    iput-object v1, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/g;->e:Lcom/mgmi/platform/view/ViewGroup/widget/e;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/e;->w()V

    .line 20
    :cond_1
    iput-object v1, p0, Lcom/mgmi/ads/api/e/g;->e:Lcom/mgmi/platform/view/ViewGroup/widget/e;

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/g;->i:Lcom/mgmi/ads/api/d/a;

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 22
    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/a;->e()V

    :cond_3
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/mgmi/ads/api/e/g;->j:Z

    .line 24
    iget-object p0, p0, Lcom/mgmi/ads/api/e/g;->d:Ljava/util/List;

    if-eqz p0, :cond_5

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/platform/view/ViewGroup/widget/c;

    if-eqz p1, :cond_4

    .line 26
    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->k()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/e/g;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/g;->c:Lcom/mgmi/platform/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/platform/d;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/g;->c:Lcom/mgmi/platform/d;

    invoke-interface {v0}, Lcom/mgmi/platform/d;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mgmi/ads/api/e/g;->c:Lcom/mgmi/platform/d;

    invoke-interface {v1}, Lcom/mgmi/platform/d;->d()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->d()V

    .line 6
    iput-object v1, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    .line 7
    iput-object v1, p0, Lcom/mgmi/ads/api/e/g;->e:Lcom/mgmi/platform/view/ViewGroup/widget/e;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/g;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/platform/view/ViewGroup/widget/c;

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->r()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->d()V

    .line 12
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/mgmi/ads/api/e/g;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->c()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v3, v2}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    iput-object v1, p0, Lcom/mgmi/ads/api/e/g;->d:Ljava/util/List;

    :cond_4
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V
    .locals 2

    .line 29
    sget-object p2, Lcom/mgmi/ads/api/h;->FULLSCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    sget-object p2, Lcom/mgmi/ads/api/h;->HARLFSCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_3

    .line 30
    :cond_0
    sget-object p2, Lcom/mgmi/ads/api/h;->AD_PLAY_END:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lcom/mgmi/ads/api/h;->AD_PLAY_ERROR:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_2

    .line 31
    :cond_1
    sget-object p2, Lcom/mgmi/ads/api/h;->AD_PLAY_FIRST_FRAME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 32
    iget-object p1, p0, Lcom/mgmi/ads/api/e/g;->e:Lcom/mgmi/platform/view/ViewGroup/widget/e;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->p()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 33
    iget-object p0, p0, Lcom/mgmi/ads/api/e/g;->e:Lcom/mgmi/platform/view/ViewGroup/widget/e;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/e;->x()V

    goto/16 :goto_6

    .line 34
    :cond_2
    sget-object p2, Lcom/mgmi/ads/api/h;->PAUSE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "callback play mPlayerWidget PAUSE no process"

    const-string v1, "InteractCreativeManager"

    if-eqz p2, :cond_6

    .line 35
    iget-object p1, p0, Lcom/mgmi/ads/api/e/g;->e:Lcom/mgmi/platform/view/ViewGroup/widget/e;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->p()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 36
    const-string p1, "callback play mPlayerWidget PAUSE"

    invoke-static {v1, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/mgmi/ads/api/e/g;->e:Lcom/mgmi/platform/view/ViewGroup/widget/e;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/e;->j()V

    goto/16 :goto_6

    .line 38
    :cond_3
    iget-object p1, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 39
    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 40
    :cond_4
    iget-object p0, p0, Lcom/mgmi/ads/api/e/g;->d:Ljava/util/List;

    if-eqz p0, :cond_11

    .line 41
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/platform/view/ViewGroup/widget/c;

    if-eqz p1, :cond_5

    .line 42
    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->p()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    .line 43
    invoke-virtual {p1, p2}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->b(Z)V

    .line 44
    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->j()V

    goto :goto_0

    .line 45
    :cond_6
    sget-object p2, Lcom/mgmi/ads/api/h;->RESUME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 46
    const-string p1, "callback play mPlayerWidget RESUME"

    invoke-static {v1, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/mgmi/ads/api/e/g;->e:Lcom/mgmi/platform/view/ViewGroup/widget/e;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->q()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 48
    invoke-static {v1, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/mgmi/ads/api/e/g;->e:Lcom/mgmi/platform/view/ViewGroup/widget/e;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/e;->k()V

    goto/16 :goto_6

    .line 50
    :cond_7
    iget-object p1, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->r()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 51
    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 52
    :cond_8
    iget-object p0, p0, Lcom/mgmi/ads/api/e/g;->d:Ljava/util/List;

    if-eqz p0, :cond_11

    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/platform/view/ViewGroup/widget/c;

    if-eqz p1, :cond_9

    .line 54
    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->q()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 55
    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->k()V

    goto :goto_1

    .line 56
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/mgmi/ads/api/e/g;->e:Lcom/mgmi/platform/view/ViewGroup/widget/e;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->p()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 57
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/g;->c()V

    goto/16 :goto_6

    .line 58
    :cond_b
    :goto_3
    iget-object p2, p0, Lcom/mgmi/ads/api/e/g;->d:Ljava/util/List;

    if-eqz p2, :cond_e

    .line 59
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/platform/view/ViewGroup/widget/c;

    if-eqz v0, :cond_c

    .line 60
    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->r()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 61
    sget-object v1, Lcom/mgmi/ads/api/h;->FULLSCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 62
    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a()V

    goto :goto_4

    .line 63
    :cond_d
    sget-object v1, Lcom/mgmi/ads/api/h;->HARLFSCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 64
    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->b()V

    goto :goto_4

    .line 65
    :cond_e
    iget-object p2, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    if-eqz p2, :cond_10

    .line 66
    sget-object p2, Lcom/mgmi/ads/api/h;->FULLSCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 67
    iget-object p1, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a()V

    goto :goto_5

    .line 68
    :cond_f
    sget-object p2, Lcom/mgmi/ads/api/h;->HARLFSCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 69
    iget-object p1, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->b()V

    .line 70
    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/mgmi/ads/api/e/g;->i:Lcom/mgmi/ads/api/d/a;

    invoke-virtual {p1}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/a;->isFullScreen()Z

    move-result p1

    if-nez p1, :cond_11

    .line 71
    iget-object p1, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->r()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 72
    iget-object p1, p0, Lcom/mgmi/ads/api/e/g;->h:Lcom/mgmi/platform/view/ViewGroup/widget/b;

    instance-of p1, p1, Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/g;->a(Z)V

    :cond_11
    :goto_6
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/mgmi/ads/api/e/g;->b:Lcom/mgmi/model/VASTAd;

    return-void
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/e/g;->j:Z

    return p0
.end method
