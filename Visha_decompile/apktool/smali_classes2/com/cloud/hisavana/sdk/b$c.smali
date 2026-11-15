.class public Lcom/cloud/hisavana/sdk/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/b;->A(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/b;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/b;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/b;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/b$c;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 3
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/b;->I(Lcom/cloud/hisavana/sdk/b;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/b$c;->a:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/b;->x(Lcom/cloud/hisavana/sdk/b;)Lcom/cloud/hisavana/sdk/b$h;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object p0

    invoke-virtual {p0, p1}, Land;->H(I)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object p0

    invoke-virtual {p0}, Land;->U()V

    :cond_0
    return-void
.end method
