.class Lcom/cloud/hisavana/sdk/b2$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/b2;->C(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/b2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/b2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b2$a;->a:Lcom/cloud/hisavana/sdk/b2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
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
    const-string v2, "interactiveEvent: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "SplashImage"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2$a;->a:Lcom/cloud/hisavana/sdk/b2;

    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/b2;->g(Lcom/cloud/hisavana/sdk/b2;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2$a;->a:Lcom/cloud/hisavana/sdk/b2;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b2;->p(Lcom/cloud/hisavana/sdk/b2;)Lcom/cloud/hisavana/sdk/e1;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2$a;->a:Lcom/cloud/hisavana/sdk/b2;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b2;->p(Lcom/cloud/hisavana/sdk/b2;)Lcom/cloud/hisavana/sdk/e1;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/e1;->J()Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->cancel()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->changeFinishMode()V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SplashImage"

    .line 6
    .line 7
    const-string v2, "handleClick "

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2$a;->a:Lcom/cloud/hisavana/sdk/b2;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/b2;->u(Lcom/cloud/hisavana/sdk/b2;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/b2;->e(Lcom/cloud/hisavana/sdk/b2;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SplashImage"

    .line 6
    .line 7
    const-string v2, "timeoutShutdown "

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2$a;->a:Lcom/cloud/hisavana/sdk/b2;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/b2;->p(Lcom/cloud/hisavana/sdk/b2;)Lcom/cloud/hisavana/sdk/e1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2$a;->a:Lcom/cloud/hisavana/sdk/b2;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/b2;->p(Lcom/cloud/hisavana/sdk/b2;)Lcom/cloud/hisavana/sdk/e1;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/e1;->z0()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
