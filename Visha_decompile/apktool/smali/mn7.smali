.class public Lmn7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ler7$a;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lmm7;


# direct methods
.method public constructor <init>(Lmm7;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lmn7;->b:Lmm7;

    iput-object p2, p0, Lmn7;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lmn7;->b:Lmm7;

    iget-wide v2, p1, Lmm7;->d:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lmm7;->d:J

    iget-object p1, p0, Lmn7;->a:Landroid/content/Context;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string v0, "agree"

    invoke-virtual {p1, v0}, Lxj;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lmn7;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/model/data/PrivacyAgreementMap;->getAgreementUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmn7;->b:Lmm7;

    const-string p1, "usage"

    invoke-virtual {p0, p1}, Lmm7;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmn7;->a:Landroid/content/Context;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_user_agreement:I

    invoke-static {p1}, Ljr7;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->B0(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
