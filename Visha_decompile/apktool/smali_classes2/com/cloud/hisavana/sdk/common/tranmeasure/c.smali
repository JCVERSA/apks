.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

.field public final b:Lvfd;

.field public c:J

.field public d:J

.field public e:Z

.field public f:I

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->e:Z

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->f:I

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lb;

    invoke-static {p1}, Lvfd;->b(Lb;)Lvfd;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->b:Lvfd;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lb;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d:J

    iget p0, v0, Lb;->c:I

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public c()V
    .locals 10

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->f()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->b:Lvfd;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lb;

    if-eqz v1, :cond_c

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    sget v1, Lcom/cloud/sdk/commonutil/R$id;->native_view_source:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "ssp_measure"

    if-eqz v2, :cond_3

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/Constants;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session.AdView.Tag"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-lez v1, :cond_5

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->h()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    iget-object v5, v4, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    if-eqz v5, :cond_5

    invoke-virtual {v4, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->c(Z)V

    new-instance v4, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;

    invoke-direct {v4, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)V

    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setViewHeight(I)V

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setViewWidth(I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowReportTimeType(Ljava/lang/Integer;)V

    invoke-static {v4}, Lc2d;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_5
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->f:I

    if-le v1, v0, :cond_6

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->f:I

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->b:Lvfd;

    iget-object v0, v0, Lvfd;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->g:Ljava/lang/String;

    :cond_6
    const-wide/16 v4, 0x0

    if-lez v1, :cond_b

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->e:Z

    if-nez v0, :cond_7

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u68c0\u67e5View\u5728Window\u7684\u53ef\u89c1\u6027 \u8fd4\u56de\u767e\u5206\u6bd4 --> exposureRatio = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " totalImpressionTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-wide v6, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->c:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_8

    iget-wide v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->c:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d:J

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->c:J

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    int-to-float v0, v1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lb;

    iget v4, v4, Lb;->a:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_c

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->e:Z

    if-nez v0, :cond_c

    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->e:Z

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowReportTimeType(Ljava/lang/Integer;)V

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setActualShowRate(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowArea(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setActualShowTime(Ljava/lang/Long;)V

    invoke-static {v0}, Ls8;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lc2d;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_1

    :cond_9
    invoke-static {v0}, Lc2d;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_1

    :cond_a
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "session.getmKey() instanceof AdsDTO --> false"

    invoke-virtual {v0, v3, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->f(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V

    goto :goto_2

    :cond_b
    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->c:J

    :cond_c
    :goto_2
    return-void
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->e:Lb;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->b:Lvfd;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lvfd;->a(Lb;Landroid/view/View;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
