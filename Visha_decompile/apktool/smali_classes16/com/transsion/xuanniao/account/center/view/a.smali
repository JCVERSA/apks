.class public Lcom/transsion/xuanniao/account/center/view/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/center/view/a$e;,
        Lcom/transsion/xuanniao/account/center/view/a$d;
    }
.end annotation


# instance fields
.field public a:Lcom/transsion/widgetslib/dialog/d;

.field public b:Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;

.field public c:Lcom/transsion/xuanniao/account/center/view/a$e;

.field public d:Landroid/widget/Button;

.field public e:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    iput-object p2, p0, Lcom/transsion/xuanniao/account/center/view/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->AccountIdDialogTheme:I

    invoke-direct {v0, p1, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_edit_account_id:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_modify_account_id:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/a$a;

    invoke-direct {v2, p0, p1}, Lcom/transsion/xuanniao/account/center/view/a$a;-><init>(Lcom/transsion/xuanniao/account/center/view/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/a$b;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/a$b;-><init>(Lcom/transsion/xuanniao/account/center/view/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->accountIdInput:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->formatView:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->e:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/a$d;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/a$d;-><init>(Lcom/transsion/xuanniao/account/center/view/a;)V

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->e:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_don:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_account_id_format_list_1:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_account_id_format_list_2:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_account_id_format_list_3:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_account_id_format_list_4:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_account_id_format_list_5:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->setFormats(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->e:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->font_black_14_t65:I

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->setTextStyle(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->e:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->font_error_14:I

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->setTextStyleError(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;

    invoke-virtual {v0, p2}, Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;->setText(Ljava/lang/String;)V

    invoke-static {p2}, Lfq7;->a(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/a;->e:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    invoke-virtual {v0, p2}, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->setError(I)V

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/a;->d:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->note:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_account_note_1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/a;->d:Landroid/widget/Button;

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/a$c;

    invoke-direct {v0, p0, p1}, Lcom/transsion/xuanniao/account/center/view/a$c;-><init>(Lcom/transsion/xuanniao/account/center/view/a;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/a;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_1
    :goto_0
    return-void
.end method
