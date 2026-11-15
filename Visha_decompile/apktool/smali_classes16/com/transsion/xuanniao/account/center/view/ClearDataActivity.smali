.class public Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcp7;


# static fields
.field public static final synthetic h:I


# instance fields
.field public e:Lom7;

.field public f:Lkl7;

.field public g:Lmr7;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    return-void
.end method

.method public static B0(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->f:Lkl7;

    iget-boolean v0, v0, Lkl7;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->D0()V

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->g:Lmr7;

    iget-object v0, p0, Lmr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const-string v0, "com.palm.id.log"

    const-string v1, "Verify pwd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmr7;->a:Landroid/app/Activity;

    const-class v2, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lmr7;->a()Z

    move-result v1

    const-string v2, "havePhoneOrEmail"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_logout_account:I

    const-string v2, "operation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "source"

    const-string v2, "CD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    const-string v2, "accountId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lmr7;->a:Landroid/app/Activity;

    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lmr7;->a:Landroid/app/Activity;

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->P()V

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lmr7;->a:Landroid/app/Activity;

    sget v3, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/transsion/xuanniao/account/R$layout;->xn_clear_set_pwd_note:I

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v2, p0, Lmr7;->a:Landroid/app/Activity;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_set_pwd_note:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v1, p0, Lmr7;->a:Landroid/app/Activity;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_go_logout:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ldr7;

    invoke-direct {v2, p0}, Ldr7;-><init>(Lmr7;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v1, p0, Lmr7;->a:Landroid/app/Activity;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_not_logout_now:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lwq7;

    invoke-direct {v2, p0}, Lwq7;-><init>(Lmr7;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->note:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmr7;->a:Landroid/app/Activity;

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_logout_pwd_note:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmr7;->a:Landroid/app/Activity;

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_go_setting:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lmr7;->a:Landroid/app/Activity;

    sget v6, Lcom/transsion/xuanniao/account/R$color;->os_platform_basic_color_selector:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Ler7;

    iget-object v5, p0, Lmr7;->a:Landroid/app/Activity;

    new-instance v6, Lhr7;

    invoke-direct {v6, p0, v0}, Lhr7;-><init>(Lmr7;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-direct {v3, v5, v6}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v4, v3, p0, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lir7;->a()Landroid/text/method/LinkMovementMethod;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final C0()V
    .locals 6

    new-instance v0, Lom7;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->f:Lkl7;

    iget-object v2, v1, Lkl7;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object v2

    invoke-static {v2}, Ll41;->a(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lkl7;->d:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/transsion/xuanniao/account/model/data/CloudItem;

    invoke-direct {v3}, Lcom/transsion/xuanniao/account/model/data/CloudItem;-><init>()V

    const-string v4, "string_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/transsion/xuanniao/account/model/data/CloudItem;->resId:I

    const-string v4, "category"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/transsion/xuanniao/account/model/data/CloudItem;->category:I

    const/4 v5, 0x3

    if-eq v5, v4, :cond_0

    iget-object v4, v1, Lkl7;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lkl7;->d:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lom7;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->e:Lom7;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->listView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->e:Lom7;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$a;-><init>(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->next:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lsx0;

    invoke-direct {v1, p0}, Lsx0;-><init>(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lmr7;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->f:Lkl7;

    iget-object v2, v1, Lkl7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-nez v2, :cond_2

    sget-object v2, Lao7$a;->a:Lao7;

    invoke-virtual {v1}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v2

    iput-object v2, v1, Lkl7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    :cond_2
    iget-object v1, v1, Lkl7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$b;

    invoke-direct {v2, p0}, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$b;-><init>(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lmr7;-><init>(Landroid/app/Activity;Lcom/transsion/xuanniao/account/model/data/AccountRes;Lmr7$a;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->g:Lmr7;

    return-void
.end method

.method public final D0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->e:Lom7;

    invoke-virtual {v0}, Lom7;->a()[I

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_logout_now:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_removing:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->m1()V

    const-string v0, "clearCloudData start"

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lhu4;->a()Lhu4;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->e:Lom7;

    invoke-virtual {v1}, Lom7;->a()[I

    move-result-object v1

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;

    invoke-direct {v2, p0}, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;-><init>(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;)V

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3, v1, v2}, Lhu4;->b(Landroid/content/Context;Z[ILhu4$b;)V

    return-void
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->g:Lmr7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p3, 0x7d1

    const/4 v0, -0x1

    if-ne p1, p3, :cond_0

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lmr7;->c:Lmr7$a;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$b;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$b;->a:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->D0()V

    goto :goto_0

    :cond_0
    const/16 p3, 0x7d2

    if-ne p1, p3, :cond_1

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lmr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    iget-object p0, p0, Lmr7;->c:Lmr7$a;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$b;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$b;->a:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->f:Lkl7;

    iget-object p1, p0, Lkl7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p1, :cond_1

    iput-boolean p2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    sget-object p1, Lao7$a;->a:Lao7;

    invoke-virtual {p0}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object p2

    iget-object p0, p0, Lkl7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p1, p2, p0}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->next:I

    if-ne p1, v0, :cond_6

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->e:Lom7;

    iget-object v0, v0, Lom7;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/model/data/CloudItem;

    iget-boolean v3, v3, Lcom/transsion/xuanniao/account/model/data/CloudItem;->select:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/model/data/CloudItem;

    iget v3, v3, Lcom/transsion/xuanniao/account/model/data/CloudItem;->category:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "Contacts"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/model/data/CloudItem;

    iget v3, v3, Lcom/transsion/xuanniao/account/model/data/CloudItem;->category:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string v3, "Block"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/model/data/CloudItem;

    iget v3, v3, Lcom/transsion/xuanniao/account/model/data/CloudItem;->category:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const-string v3, "WLAN"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Lxj;->p0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->f:Lkl7;

    iget-boolean p1, p1, Lkl7;->e:Z

    if-eqz p1, :cond_5

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->J()V

    :cond_5
    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    const-string p1, "start getSyncState"

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lhu4;->a()Lhu4;

    move-result-object p1

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$c;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$c;-><init>(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;)V

    invoke-interface {p1, p0, v0}, Lhu4;->c(Landroid/content/Context;Lhu4$c;)V

    :cond_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_clear_data:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Lkl7;

    invoke-direct {p1}, Lkl7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->f:Lkl7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "loginTimeout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lkl7;->e:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_logout_account:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->C0()V

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lxj;->K(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->f:Lkl7;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->placeholder:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->z0()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
