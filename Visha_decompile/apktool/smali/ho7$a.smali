.class public Lho7$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lho7;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Lho7;


# direct methods
.method public constructor <init>(Lho7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lho7$a;->l:Lho7;

    iput-object p5, p0, Lho7$a;->k:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/PolicyRes;

    iget-object p1, p0, Lho7$a;->l:Lho7;

    iget-object v0, p1, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "usage"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget p3, Lcom/transsion/xuanniao/account/R$string;->xn_user_agreement:I

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/PolicyRes;->usageUrl:Ljava/lang/String;

    iget-object p1, p1, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1, p3, p2}, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->B0(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget p3, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_policy:I

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/PolicyRes;->privacyUrl:Ljava/lang/String;

    iget-object p1, p1, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1, p3, p2}, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->B0(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lho7$a;->l:Lho7;

    iget-object p0, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :goto_1
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lho7$a;->l:Lho7;

    iget-object v1, v0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lho7$a;->k:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lho7;->b(Ljava/lang/String;)V

    return-void
.end method
