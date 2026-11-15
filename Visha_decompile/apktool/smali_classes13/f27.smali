.class public abstract Lf27;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf27$c;
    }
.end annotation


# static fields
.field public static a:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf27$c;)V
    .locals 4

    sget-object v0, Lf27;->a:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$layout;->layout_notice:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->tv_notice:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->cb_check:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    new-instance p2, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p2, Lcom/transsion/sniffer_load/R$string;->got_it:I

    new-instance p3, Lf27$b;

    invoke-direct {p3, p4, p1}, Lf27$b;-><init>(Lf27$c;Landroid/widget/CheckBox;)V

    invoke-virtual {p0, p2, p3}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    new-instance p1, Lf27$a;

    invoke-direct {p1}, Lf27$a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->s(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    sput-object p0, Lf27;->a:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method
