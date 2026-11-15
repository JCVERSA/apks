.class public abstract Lck7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lxj;->V0(Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/widgetslib/dialog/d$a;

    sget v0, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {p2, p0, v0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_set_pwd_note:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_dialog_set_pwd:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lck7$b;

    invoke-direct {v0, p0}, Lck7$b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_not_set_pwd:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lck7$a;

    invoke-direct {v0, p0}, Lck7$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method
