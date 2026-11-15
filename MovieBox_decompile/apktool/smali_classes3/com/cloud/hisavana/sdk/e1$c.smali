.class Lcom/cloud/hisavana/sdk/e1$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/e1;->b0(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/e1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/e1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e1$c;->a:Lcom/cloud/hisavana/sdk/e1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1$c;->a:Lcom/cloud/hisavana/sdk/e1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/J0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1$c;->a:Lcom/cloud/hisavana/sdk/e1;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1$c;->a:Lcom/cloud/hisavana/sdk/e1;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1$c;->a:Lcom/cloud/hisavana/sdk/e1;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/e1;->g0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1$c;->a:Lcom/cloud/hisavana/sdk/e1;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/e1;->o0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->m()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e1$c;->a:Lcom/cloud/hisavana/sdk/e1;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/e1;->p0(Lcom/cloud/hisavana/sdk/e1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e1$c;->a:Lcom/cloud/hisavana/sdk/e1;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method
