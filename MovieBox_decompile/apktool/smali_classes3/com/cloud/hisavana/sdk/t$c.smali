.class Lcom/cloud/hisavana/sdk/t$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/t;->u(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/cloud/hisavana/sdk/t;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/t;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t$c;->b:Lcom/cloud/hisavana/sdk/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/t$c;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 3
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t$c;->b:Lcom/cloud/hisavana/sdk/t;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/t;->x(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/t$c;->a:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/t$c;->b:Lcom/cloud/hisavana/sdk/t;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/t;->s(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/t$g;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$c;->b:Lcom/cloud/hisavana/sdk/t;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$c;->b:Lcom/cloud/hisavana/sdk/t;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/p2;->H(I)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$c;->b:Lcom/cloud/hisavana/sdk/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$c;->b:Lcom/cloud/hisavana/sdk/t;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p2;->U()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
