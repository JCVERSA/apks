.class public Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->privacyPolicyL:I

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->a1()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/model/data/PrivacyAgreementMap;->getPrivacyUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;->e:Lnl7;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "policy"

    invoke-virtual {p0, p1}, Lnl7;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_policy:I

    invoke-static {p1}, Ljr7;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->B0(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->userAgreementL:I

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->b1()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/model/data/PrivacyAgreementMap;->getAgreementUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;->e:Lnl7;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "usage"

    invoke-virtual {p0, p1}, Lnl7;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_user_agreement:I

    invoke-static {p1}, Ljr7;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->B0(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->faqL:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->Z()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->Y()V

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity$a;->d:Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;->e:Lnl7;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "faq"

    invoke-virtual {p0, p1}, Lnl7;->b(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
