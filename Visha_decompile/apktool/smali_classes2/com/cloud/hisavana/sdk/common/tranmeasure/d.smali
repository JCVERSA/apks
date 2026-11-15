.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;,
        Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

.field public c:Ljava/lang/ref/WeakReference;

.field public d:Z

.field public e:Lb;

.field public f:Z

.field public g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->f:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lb;

    invoke-direct {v1}, Lb;-><init>()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lb;

    const/16 v2, 0x3e8

    iput v2, v1, Lb;->c:I

    const/high16 v2, 0x42480000    # 50.0f

    iput v2, v1, Lb;->a:F

    iput v0, v1, Lb;->b:I

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->a:Ljava/lang/Object;

    new-instance p1, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->h:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$a;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MeasureSession registerView,isImpression = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ssp_measure"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->d(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->h:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d()I

    move-result p2

    if-lez p2, :cond_3

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setImageWidth(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setImageHeight(Ljava/lang/Integer;)V

    :cond_1
    new-instance p1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;

    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowReportTimeType(Ljava/lang/Integer;)V

    invoke-static {p0}, Lc2d;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_3
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    return-void
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->a:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->a:Ljava/lang/Object;

    instance-of v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public f()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->c:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    return p0
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public j()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->h:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->c()V

    :cond_0
    return-void
.end method
