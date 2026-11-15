.class Lcom/bytedance/sdk/openadsdk/common/uvD$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/uvD;->TKC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/uvD;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/uvD$4;->Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/uvD$4;->Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/common/uvD;)Lcom/bytedance/sdk/component/uA/vS;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/uvD$4;->Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;

    .line 10
    .line 11
    const-string v0, "external_btn_click"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/uvD;->sP(Lcom/bytedance/sdk/openadsdk/common/uvD;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v0, "android.intent.action.VIEW"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/uvD$4;->Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/common/uvD;)Lcom/bytedance/sdk/component/uA/vS;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/uvD$4;->Sj:Lcom/bytedance/sdk/openadsdk/common/uvD;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/uvD;->TKC(Lcom/bytedance/sdk/openadsdk/common/uvD;)Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)Z

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method
