.class Lcom/cloud/hisavana/sdk/t$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/f4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/t;->j(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

.field final synthetic b:Lcom/cloud/hisavana/sdk/t;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t$b;->b:Lcom/cloud/hisavana/sdk/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/t$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

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
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$b;->b:Lcom/cloud/hisavana/sdk/t;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$b;->b:Lcom/cloud/hisavana/sdk/t;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p2;->P()V

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "s_err_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string p2, "error_url"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t$b;->b:Lcom/cloud/hisavana/sdk/t;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    move-result-object p1

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_LOAD_MATERIAL_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, p2, v0}, Lcom/cloud/hisavana/sdk/p2;->L(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public b(FFFFZ)I
    .locals 0

    .line 1
    iget-object p5, p0, Lcom/cloud/hisavana/sdk/t$b;->b:Lcom/cloud/hisavana/sdk/t;

    .line 2
    .line 3
    invoke-static {p5, p1}, Lcom/cloud/hisavana/sdk/t;->a(Lcom/cloud/hisavana/sdk/t;F)F

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t$b;->b:Lcom/cloud/hisavana/sdk/t;

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/t;->p(Lcom/cloud/hisavana/sdk/t;F)F

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t$b;->b:Lcom/cloud/hisavana/sdk/t;

    .line 12
    .line 13
    invoke-static {p1, p3}, Lcom/cloud/hisavana/sdk/t;->w(Lcom/cloud/hisavana/sdk/t;F)F

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t$b;->b:Lcom/cloud/hisavana/sdk/t;

    .line 17
    .line 18
    invoke-static {p1, p4}, Lcom/cloud/hisavana/sdk/t;->z(Lcom/cloud/hisavana/sdk/t;F)F

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t$b;->b:Lcom/cloud/hisavana/sdk/t;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/t;->r(Lcom/cloud/hisavana/sdk/t;Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method
