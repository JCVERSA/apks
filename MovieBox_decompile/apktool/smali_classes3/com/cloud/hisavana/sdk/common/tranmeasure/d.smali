.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;,
        Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field protected b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Z

.field protected e:Lcom/cloud/hisavana/sdk/r4;

.field private f:Z

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->f:Z

    .line 9
    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    new-instance v1, Lcom/cloud/hisavana/sdk/r4;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/r4;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lcom/cloud/hisavana/sdk/r4;

    .line 23
    .line 24
    const/16 v2, 0x3e8

    .line 25
    .line 26
    iput v2, v1, Lcom/cloud/hisavana/sdk/r4;->c:I

    .line 27
    .line 28
    const/high16 v2, 0x42480000    # 50.0f

    .line 29
    .line 30
    iput v2, v1, Lcom/cloud/hisavana/sdk/r4;->a:F

    .line 31
    .line 32
    iput v0, v1, Lcom/cloud/hisavana/sdk/r4;->b:I

    .line 33
    .line 34
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->a:Ljava/lang/Object;

    .line 35
    .line 36
    new-instance p1, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->h:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    .line 10
    .line 11
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 12
    .line 13
    new-instance v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$a;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$a;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected b(Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "MeasureSession registerView,isImpression = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "ssp_measure"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->c:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    .line 41
    .line 42
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->d(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->h:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    .line 50
    .line 51
    if-nez p2, :cond_0

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-lez p2, :cond_3

    .line 59
    .line 60
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    .line 61
    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-eqz p2, :cond_1

    .line 74
    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setImageWidth(Ljava/lang/Integer;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setImageHeight(Ljava/lang/Integer;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    new-instance p1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 105
    .line 106
    .line 107
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    .line 108
    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_3

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowReportTimeType(Ljava/lang/Integer;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q2;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method protected d(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method protected e()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method protected f()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method protected g()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->h:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
