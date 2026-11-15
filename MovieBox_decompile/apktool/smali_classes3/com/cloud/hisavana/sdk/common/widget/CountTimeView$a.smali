.class Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;
.super Lg7/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lg7/e;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->c(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->c(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;->onFinish()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public f(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "SKIP "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x3e8

    .line 14
    .line 15
    div-long v2, p1, v2

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->a(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 28
    .line 29
    long-to-int p1, p1

    .line 30
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->b(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;I)I

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
