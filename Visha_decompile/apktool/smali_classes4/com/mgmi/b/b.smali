.class public Lcom/mgmi/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/b/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Float;",
            "Lcom/mgmi/model/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgmi/b/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/mgmi/b/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgmi/b/b$a;->a:Lcom/mgmi/b/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mgmi/platform/view/a;Lcom/mgmi/model/r;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/mgmi/model/r;->d()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgmi/model/VASTFloatAd;

    if-nez p2, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-virtual {p2}, Lcom/mgmi/model/VASTFloatAd;->getInnerVideo()Lcom/mgmi/model/h;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 6
    :cond_4
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v1

    iput v1, v0, Lcom/mgmi/model/h;->e:I

    .line 7
    invoke-virtual {p2}, Lcom/mgmi/model/VASTFloatAd;->isPlayerUse()Z

    move-result p2

    if-nez p2, :cond_5

    .line 8
    iget-object p0, p0, Lcom/mgmi/b/b;->a:Ljava/util/HashMap;

    if-eqz p0, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->t()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/b/b;->a:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method
