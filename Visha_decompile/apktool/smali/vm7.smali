.class public Lvm7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ler7$a;


# instance fields
.field public final synthetic a:Lho7;


# direct methods
.method public constructor <init>(Lho7;)V
    .locals 0

    iput-object p1, p0, Lvm7;->a:Lho7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lvm7;->a:Lho7;

    iget-wide v2, p1, Lho7;->g:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object p1, p0, Lvm7;->a:Lho7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lho7;->g:J

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lvm7;->a:Lho7;

    iget-object p1, p1, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->M1()V

    iget-object p1, p0, Lvm7;->a:Lho7;

    iget-object p1, p1, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/model/data/PrivacyAgreementMap;->getAgreementUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lvm7;->a:Lho7;

    const-string p1, "usage"

    invoke-virtual {p0, p1}, Lho7;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lvm7;->a:Lho7;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_user_agreement:I

    invoke-static {p1}, Ljr7;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p0, v0, p1}, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->B0(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
