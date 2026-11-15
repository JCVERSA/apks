.class public Lcom/cloud/hisavana/sdk/b$f;
.super Lujd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/b;->d()Lujd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/b;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/b;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$f;->a:Lcom/cloud/hisavana/sdk/b;

    invoke-direct {p0}, Lujd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$f;->a:Lcom/cloud/hisavana/sdk/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/b;->I(Lcom/cloud/hisavana/sdk/b;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$f;->a:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/b;->I(Lcom/cloud/hisavana/sdk/b;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/U0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$f;->a:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b;->D(Lcom/cloud/hisavana/sdk/b;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$f;->a:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/b;->w(Lcom/cloud/hisavana/sdk/b;Landroid/view/View;)I

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$f;->a:Lcom/cloud/hisavana/sdk/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$f;->a:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object p0

    invoke-virtual {p0}, Land;->P()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 6

    invoke-static {}, Lcom/cloud/hisavana/sdk/u;->n()Lcom/cloud/hisavana/sdk/u;

    move-result-object v0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/b$f;->a:Lcom/cloud/hisavana/sdk/b;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/b$f;->a:Lcom/cloud/hisavana/sdk/b;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/b;->I(Lcom/cloud/hisavana/sdk/b;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v3

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$f;->a:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/b;->H(Lcom/cloud/hisavana/sdk/b;)Z

    move-result v5

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/u;->h(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Z)V

    return-void
.end method
