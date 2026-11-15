.class public Lcom/mgtv/thirdsdk/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:Ljava/lang/String; = "com.mgtv.thirdsdk.a.b"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

.field public f:Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 34
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 36
    new-instance v4, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    invoke-direct {v4}, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;-><init>()V

    .line 37
    iget v5, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->needPay:I

    if-ne v5, v3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, v4, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;->isVip:Z

    .line 38
    iget v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput v1, v4, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;->resolution:I

    .line 39
    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-le p1, v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ge p1, v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    :cond_3
    move v0, v2

    .line 44
    :goto_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 45
    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ne p1, v1, :cond_4

    .line 46
    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge v2, v0, :cond_7

    .line 48
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-le p1, v0, :cond_6

    .line 49
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 50
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz p1, :cond_8

    .line 51
    iget p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput p1, p0, Lcom/mgtv/thirdsdk/a/b;->d:I

    :cond_8
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_e

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    new-instance v0, Lcom/mgtv/thirdsdk/a/b$1;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/a/b$1;-><init>(Lcom/mgtv/thirdsdk/a/b;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, -0x1

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 6
    iget v3, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-eq v0, v3, :cond_2

    .line 7
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_0

    .line 8
    :cond_2
    iget-object v3, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->type:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, ".m3u8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 12
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 13
    new-instance v3, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    invoke-direct {v3}, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;-><init>()V

    .line 14
    iget v4, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->needPay:I

    if-ne v4, v2, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, v3, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;->isVip:Z

    .line 15
    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput v0, v3, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;->resolution:I

    .line 16
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_5
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget p2, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-le p1, p2, :cond_6

    .line 18
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 19
    :cond_6
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget p2, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ge p1, p2, :cond_7

    .line 20
    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    :cond_7
    move p2, v1

    .line 21
    :goto_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_9

    .line 22
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ne p1, v0, :cond_8

    .line 23
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    goto :goto_3

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    move p2, v1

    .line 24
    :goto_4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge p2, v0, :cond_b

    .line 25
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    add-int/lit8 v3, p2, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-le p1, v0, :cond_a

    .line 26
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    goto :goto_5

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 27
    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz p1, :cond_e

    .line 28
    iget p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput p1, p0, Lcom/mgtv/thirdsdk/a/b;->d:I

    .line 29
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->f:Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    if-nez p1, :cond_c

    .line 30
    new-instance p1, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    invoke-direct {p1}, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;-><init>()V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->f:Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    .line 31
    :cond_c
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->f:Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    iget-object p2, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget p2, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->needPay:I

    if-ne p2, v2, :cond_d

    move v1, v2

    :cond_d
    iput-boolean v1, p1, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;->isVip:Z

    .line 32
    iget p2, p0, Lcom/mgtv/thirdsdk/a/b;->d:I

    iput p2, p1, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;->resolution:I

    .line 33
    sget-object p1, Lcom/mgtv/thirdsdk/a/b;->h:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CurrentDlnaInfo=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-virtual {p0}, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_e
    :goto_6
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->f:Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    invoke-direct {v0}, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;-><init>()V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->f:Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b;->f:Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    iput-object p1, p0, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mgtv/thirdsdk/a/b;->d:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/thirdsdk/a/b;->c(ILjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mgtv/thirdsdk/a/b;->d:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b;->c:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/thirdsdk/a/b;->b(ILjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(ILjava/util/List;)Z
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

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-le v2, p1, :cond_0

    .line 4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput p1, p0, Lcom/mgtv/thirdsdk/a/b;->d:I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    return-void
.end method

.method public c(ILjava/util/List;)Z
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

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ge v2, p1, :cond_0

    .line 3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b;->e:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput p1, p0, Lcom/mgtv/thirdsdk/a/b;->d:I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
