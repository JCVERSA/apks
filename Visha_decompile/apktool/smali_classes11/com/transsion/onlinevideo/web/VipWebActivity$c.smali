.class public Lcom/transsion/onlinevideo/web/VipWebActivity$c;
.super Lul9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/web/VipWebActivity;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/web/VipWebActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/web/VipWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-direct {p0}, Lul9;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    invoke-super {p0, p1}, Lul9;->a(Lcom/android/billingclient/api/BillingResult;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAcknowledgePurchaseResponse="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[VishaUserDebug]"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->S:Lpe0;

    const-string v0, "inapp"

    invoke-virtual {p0, v0}, Lpe0;->l(Ljava/lang/String;)V

    const-string p0, "Google billing service connect success!"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lwz5;->F(Ljava/lang/String;I)V

    const-string p0, "[VishaUserDebug]"

    const-string v0, "onBillingClientSetupFinished"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lul9;->c(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConsumeFinished="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[VishaUserDebug]"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    const-string v0, "vd_ott_vip_buy_c_order_consume"

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object p2, p2, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/transsion/onlinevideo/web/OrderManager;->h(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-static {v0, p0, p1, v1}, Lwz5;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {v0, p0, p1, p2}, Lwz5;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public d(ILjava/lang/String;)V
    .locals 1

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lwz5;->F(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buy error [code\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",message\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[VishaUserDebug]"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x411

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->Z0(Ljava/util/List;)V

    return-void
.end method

.method public f(ILjava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->X:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vd_ott_vip_buy_c_payment_result"

    invoke-static {v2, v0, p0, p2, v1}, Lwz5;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x410

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buy fail [code\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",message\uff1a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[VishaUserDebug]"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchases success\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[VishaUserDebug]"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->a1(Ljava/util/List;)V

    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 9

    const-string v0, "vd_ott_vip_buy_c_sku_query"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object v3, v2, Lcom/transsion/onlinevideo/web/VipWebActivity;->S:Lpe0;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/billingclient/api/ProductDetails;

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object v5, p1, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->v0(Lcom/transsion/onlinevideo/web/VipWebActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->u0(Lcom/transsion/onlinevideo/web/VipWebActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->w0(Lcom/transsion/onlinevideo/web/VipWebActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lpe0;->x(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object p1, p1, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-static {p1}, Lwz5;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    const-string p1, ""

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lwz5;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    const/16 v2, -0x3eb

    const-string v3, "No matching products found"

    invoke-virtual {p1, v2, v3}, Lcom/transsion/onlinevideo/web/VipWebActivity;->c1(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-static {v0, p0, v3, v1}, Lwz5;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public i(ILjava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lul9;->i(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQuerySkuDetailFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[VishaUserDebug]"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->c1(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity$c;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "vd_ott_vip_buy_c_sku_query"

    invoke-static {v0, p0, p2, p1}, Lwz5;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
