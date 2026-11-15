.class public Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/AccountInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/AccountInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$color;->xn_line_s:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/xuanniao/account/R$color;->xn_line:I

    :goto_0
    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->line1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    iget-boolean v0, p1, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0p0:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0O0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Phone"

    goto :goto_1

    :cond_2
    const-string p1, "Mail"

    :goto_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lxj;->a(Ljava/lang/String;I)V

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p()V

    :cond_4
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setLogoColor(Z)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppOO0:Lcom/transsion/xuanniao/account/comm/widget/AccountInput$b;

    if-eqz p0, :cond_5

    check-cast p0, Lrp7;

    iget-object p0, p0, Lrp7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ldo7;->s:J

    :cond_5
    return-void
.end method
