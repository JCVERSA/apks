.class public Loid$e;
.super Lujd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loid;->I(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lujd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:Loid;


# direct methods
.method public constructor <init>(Loid;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Loid$e;->b:Loid;

    iput-object p2, p0, Loid$e;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Lujd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Loid$e;->b:Loid;

    invoke-static {p0}, Loid;->u(Loid;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q1;->O()V

    return-void
.end method

.method public b(IZ)V
    .locals 0

    iget-object p0, p0, Loid$e;->b:Loid;

    invoke-static {p0}, Loid;->B(Loid;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object p1

    invoke-static {p0, p1}, Loid;->l(Loid;Landroid/view/View;)V

    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    iget-object p0, p0, Loid$e;->b:Loid;

    invoke-static {p0, p1}, Loid;->m(Loid;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public e()V
    .locals 6

    invoke-static {}, Lcom/cloud/hisavana/sdk/u;->n()Lcom/cloud/hisavana/sdk/u;

    move-result-object v0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Loid$e;->b:Loid;

    invoke-static {v2}, Loid;->u(Loid;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object v2

    iget-object v3, p0, Loid$e;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/u;->h(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Z)V

    return-void
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Loid$e;->b:Loid;

    invoke-static {p0}, Loid;->u(Loid;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q1;->R()V

    return-void
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, Loid$e;->b:Loid;

    invoke-static {p0}, Loid;->u(Loid;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q1;->S()V

    return-void
.end method
