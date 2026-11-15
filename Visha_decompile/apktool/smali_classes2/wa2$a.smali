.class public final Lwa2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwa2$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/dialog/d;Lwa2$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwa2$a;->n(Lcom/transsion/widgetslib/dialog/d;Lwa2$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/dialog/d;Lwa2$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwa2$a;->o(Lcom/transsion/widgetslib/dialog/d;Lwa2$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lwa2$c;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwa2$a;->r(Lwa2$c;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic d(Lww4;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lwa2$a;->t(Lww4;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Lww4;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lwa2$a;->l(Lww4;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/widgetslib/dialog/d;Lwa2$c;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwa2$a;->v(Lcom/transsion/widgetslib/dialog/d;Lwa2$c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lww4;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lwa2$a;->s(Lww4;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic h(Lwa2$c;Lcom/cloud/tupdate/bean/UpdateContent;Lww4;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lwa2$a;->u(Lwa2$c;Lcom/cloud/tupdate/bean/UpdateContent;Lww4;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lww4;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lwa2$a;->m(Lww4;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic j(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lwa2$a;->q(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static final l(Lww4;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$updateManager"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lww4;->d()Lcw4;

    return-void
.end method

.method public static final m(Lww4;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$updateManager"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lww4;->d()Lcw4;

    return-void
.end method

.method public static final n(Lcom/transsion/widgetslib/dialog/d;Lwa2$b;Landroid/view/View;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p2, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p2, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lwa2$b;->a()V

    :goto_1
    return-void
.end method

.method public static final o(Lcom/transsion/widgetslib/dialog/d;Lwa2$b;Landroid/view/View;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p2, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p2, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lwa2$b;->b()V

    :goto_1
    return-void
.end method

.method public static final q(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    const-string p1, "$cbIgnore"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Landroid/widget/CheckBox;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    :goto_0
    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public static final r(Lwa2$c;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lwa2$c;->b(Z)V

    :goto_0
    return-void
.end method

.method public static final s(Lww4;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$updateManager"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lww4;->f()Lvw4;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lvw4;->onDismiss()V

    :goto_0
    return-void
.end method

.method public static final t(Lww4;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$updateManager"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lww4;->f()Lvw4;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lvw4;->a()V

    :goto_0
    return-void
.end method

.method public static final u(Lwa2$c;Lcom/cloud/tupdate/bean/UpdateContent;Lww4;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V
    .locals 0

    const-string p4, "$updateManager"

    invoke-static {p2, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lwa2$c;->c()V

    :goto_0
    sget-object p0, Lqa1;->a:Lqa1;

    invoke-virtual {p0, p1, p2, p3}, Lqa1;->m(Lcom/cloud/tupdate/bean/UpdateContent;Lww4;Landroid/app/Dialog;)V

    return-void
.end method

.method public static final v(Lcom/transsion/widgetslib/dialog/d;Lwa2$c;Landroid/view/View;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p2, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p2, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lwa2$c;->a()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final k(Landroid/content/Context;Lcom/cloud/tupdate/bean/AppScoreContent;Lww4;Lwa2$b;)V
    .locals 5

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "updateManager"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/cloud/tupdate/R$layout;->tupdate_score_dialog:I

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget v1, Lcom/cloud/tupdate/R$id;->tv_score_title:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :goto_0
    if-nez p0, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    sget v2, Lcom/cloud/tupdate/R$id;->tv_score_content:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    :goto_1
    if-nez p2, :cond_2

    move-object v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/AppScoreContent;->getScoreTitle()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_8

    invoke-static {v3}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_3
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    if-nez p2, :cond_6

    move-object v3, v0

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/AppScoreContent;->getScoreTitle()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    if-nez v2, :cond_7

    goto :goto_8

    :cond_7
    sget v3, Lcom/cloud/tupdate/R$color;->update_color_CC000000:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_8
    :goto_6
    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    if-nez v2, :cond_a

    goto :goto_8

    :cond_a
    sget v3, Lcom/cloud/tupdate/R$color;->update_color_000000:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_8
    const/4 v3, 0x1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v4, "scoreTitle.getPaint()"

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_b
    if-nez p2, :cond_c

    move-object v1, v0

    goto :goto_9

    :cond_c
    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/AppScoreContent;->getScoreContent()Ljava/lang/String;

    move-result-object v1

    :goto_9
    if-eqz v1, :cond_10

    invoke-static {v1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_b

    :cond_d
    if-nez v2, :cond_e

    goto :goto_c

    :cond_e
    if-nez p2, :cond_f

    move-object v1, v0

    goto :goto_a

    :cond_f
    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/AppScoreContent;->getScoreContent()Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_10
    :goto_b
    if-nez v2, :cond_11

    goto :goto_c

    :cond_11
    sget v1, Lcom/cloud/tupdate/R$string;->text_update_score_content:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    if-nez p0, :cond_12

    move-object v1, v0

    goto :goto_d

    :cond_12
    sget v1, Lcom/cloud/tupdate/R$id;->btn_negative:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    :goto_d
    if-nez p0, :cond_13

    goto :goto_e

    :cond_13
    sget v0, Lcom/cloud/tupdate/R$id;->btn_positive:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    :goto_e
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/AppScoreContent;->getScoreButton()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-static {v2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_f

    :cond_14
    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/AppScoreContent;->getScoreButton()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_15
    :goto_f
    sget v2, Lcom/cloud/tupdate/R$string;->text_update_score_button:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_10
    const-string v4, "if (appScoreContent == n\u2026eButton\n                }"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_16

    goto :goto_11

    :cond_16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/AppScoreContent;->getCancelScoreButton()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_17

    goto :goto_12

    :cond_17
    invoke-virtual {p2}, Lcom/cloud/tupdate/bean/AppScoreContent;->getCancelScoreButton()Ljava/lang/String;

    move-result-object p2

    goto :goto_13

    :cond_18
    :goto_12
    sget p2, Lcom/cloud/tupdate/R$string;->text_update_cancel:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_13
    invoke-static {p2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_19

    goto :goto_14

    :cond_19
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_14
    sget-object p2, Lqa1;->a:Lqa1;

    invoke-virtual {p2}, Lqa1;->g()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lolb;->a:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2, p2, v3}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1b

    if-nez v0, :cond_1a

    goto :goto_15

    :cond_1a
    sget p2, Lcom/cloud/tupdate/R$color;->update_color_14C764:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_15

    :cond_1b
    if-nez v0, :cond_1c

    goto :goto_15

    :cond_1c
    sget p2, Lcom/cloud/tupdate/R$color;->update_color_0A69FE:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_15
    new-instance p2, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    new-instance p2, Lma2;

    invoke-direct {p2, p3}, Lma2;-><init>(Lww4;)V

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/dialog/d$a;->s(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    new-instance p2, Lna2;

    invoke-direct {p2, p3}, Lna2;-><init>(Lww4;)V

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    if-nez v1, :cond_1d

    goto :goto_16

    :cond_1d
    new-instance p2, Loa2;

    invoke-direct {p2, p0, p4}, Loa2;-><init>(Lcom/transsion/widgetslib/dialog/d;Lwa2$b;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_16
    if-nez v0, :cond_1e

    goto :goto_17

    :cond_1e
    new-instance p2, Lpa2;

    invoke-direct {p2, p0, p4}, Lpa2;-><init>(Lcom/transsion/widgetslib/dialog/d;Lwa2$b;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_17
    :try_start_0
    invoke-interface {p3}, Lww4;->d()Lcw4;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1f

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_20

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    goto :goto_19

    :catch_0
    move-exception p0

    goto :goto_18

    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_19

    :goto_18
    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :cond_20
    :goto_19
    return-void
.end method

.method public final p(Landroid/content/Context;Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Lwa2$c;Z)V
    .locals 23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-string v0, "context"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateEntity"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateManager"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v10

    sget v0, Lcom/cloud/tupdate/R$layout;->tupdate_layout_upgrade_dialog:I

    const/4 v11, 0x0

    invoke-static {v1, v0, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_0

    move-object v13, v11

    goto :goto_0

    :cond_0
    sget v0, Lcom/cloud/tupdate/R$id;->updateTitleTv:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v13, v0

    :goto_0
    if-nez v12, :cond_1

    move-object v14, v11

    goto :goto_1

    :cond_1
    sget v0, Lcom/cloud/tupdate/R$id;->updateVersionTv:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v14, v0

    :goto_1
    if-nez v12, :cond_2

    move-object v15, v11

    goto :goto_2

    :cond_2
    sget v0, Lcom/cloud/tupdate/R$id;->updateContentTv:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v15, v0

    :goto_2
    if-nez v12, :cond_3

    goto :goto_3

    :cond_3
    sget v0, Lcom/cloud/tupdate/R$id;->updateNegativeBtn:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    move-object v11, v0

    :goto_3
    if-nez v12, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    sget v0, Lcom/cloud/tupdate/R$id;->updatePositiveBtn:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    move-object v2, v0

    :goto_4
    if-nez v12, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :try_start_0
    sget v0, Lcom/cloud/tupdate/R$id;->ll_ignore:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object v3, v0

    goto :goto_6

    :catch_0
    move-exception v0

    sget-object v3, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {v3, v0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    :goto_6
    if-nez v12, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    :try_start_1
    sget v0, Lcom/cloud/tupdate/R$id;->updateIgnoreCb:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    :goto_7
    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v16, v11

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v16, v11

    sget-object v11, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {v11, v0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_8
    if-nez v12, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    :try_start_2
    sget v0, Lcom/cloud/tupdate/R$id;->currentVersionTv:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_9
    move-object v11, v0

    goto :goto_a

    :catch_2
    move-exception v0

    sget-object v11, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {v11, v0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    :goto_a
    if-nez v12, :cond_8

    const/4 v0, 0x0

    goto :goto_b

    :cond_8
    :try_start_3
    sget v0, Lcom/cloud/tupdate/R$id;->contentScrollViewTop:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_b
    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v17, v2

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v17, v2

    sget-object v2, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {v2, v0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_c
    if-nez v12, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    :try_start_4
    sget v0, Lcom/cloud/tupdate/R$id;->updateBottomDivider:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_d
    move-object v2, v0

    goto :goto_e

    :catch_4
    move-exception v0

    sget-object v2, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {v2, v0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_e
    if-nez v12, :cond_a

    const/4 v0, 0x0

    goto :goto_f

    :cond_a
    :try_start_5
    sget v0, Lcom/cloud/tupdate/R$id;->contentScrollView:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    :goto_f
    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v18, v2

    goto :goto_10

    :catch_5
    move-exception v0

    move-object/from16 v18, v2

    sget-object v2, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {v2, v0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_10
    if-nez v12, :cond_b

    goto :goto_11

    :cond_b
    :try_start_6
    sget v0, Lcom/cloud/tupdate/R$id;->ignoreUpdateTips:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_12

    :catch_6
    move-exception v0

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lia1;->a(Ljava/lang/String;)V

    :goto_11
    const/4 v0, 0x0

    :goto_12
    iget-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ScrollView;

    move-object/from16 v19, v12

    const/4 v12, 0x0

    if-nez v2, :cond_c

    goto :goto_13

    :cond_c
    invoke-virtual {v2, v12}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    :goto_13
    iget-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v2, v2, Lcom/cloud/tupdate/view/MaxHeightScrollView;

    if-eqz v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    invoke-static {v2}, Lc39;->g(F)I

    move-result v2

    const/16 v12, 0x28a

    if-ge v2, v12, :cond_d

    const-wide v20, 0x3fc999999999999aL    # 0.2

    goto :goto_14

    :cond_d
    const-wide v20, 0x3fd6666666666666L    # 0.35

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v22, v11

    int-to-double v11, v2

    mul-double v11, v11, v20

    double-to-int v2, v11

    iget-object v11, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Lcom/cloud/tupdate/view/MaxHeightScrollView;

    invoke-virtual {v11, v2}, Lcom/cloud/tupdate/view/MaxHeightScrollView;->setMaxHeight(I)V

    iget-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/cloud/tupdate/view/MaxHeightScrollView;

    new-instance v11, Lwa2$a$a;

    invoke-direct {v11, v9, v7}, Lwa2$a$a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, v11}, Lcom/cloud/tupdate/view/MaxHeightScrollView;->setListener(Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;)V

    goto :goto_15

    :cond_e
    move-object/from16 v22, v11

    :goto_15
    iget-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ScrollView;

    if-nez v2, :cond_f

    goto :goto_16

    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_16

    :cond_10
    new-instance v7, Lwa2$a$b;

    invoke-direct {v7, v8, v9}, Lwa2$a$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v2, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    sget-object v2, Lzfb;->a:Lzfb;

    :goto_16
    if-nez v3, :cond_11

    goto :goto_17

    :cond_11
    new-instance v2, Lqa2;

    invoke-direct {v2, v6}, Lqa2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v2, Lzfb;->a:Lzfb;

    :goto_17
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/widget/CheckBox;

    if-nez v2, :cond_12

    goto :goto_18

    :cond_12
    new-instance v7, Lra2;

    invoke-direct {v7, v4}, Lra2;-><init>(Lwa2$c;)V

    invoke-virtual {v2, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v2, Lzfb;->a:Lzfb;

    :goto_18
    const/4 v2, 0x1

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    const-string/jumbo v8, "updateTitleTv.getPaint()"

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_13
    if-nez v10, :cond_14

    const/4 v7, 0x0

    goto :goto_19

    :cond_14
    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateTitle()Ljava/lang/String;

    move-result-object v7

    :goto_19
    if-eqz v7, :cond_18

    invoke-static {v7}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_1b

    :cond_15
    if-nez v13, :cond_16

    goto :goto_1c

    :cond_16
    if-nez v10, :cond_17

    const/4 v7, 0x0

    goto :goto_1a

    :cond_17
    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateTitle()Ljava/lang/String;

    move-result-object v7

    :goto_1a
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_18
    :goto_1b
    if-nez v13, :cond_19

    goto :goto_1c

    :cond_19
    sget v7, Lcom/cloud/tupdate/R$string;->text_update_dialog_title:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1c
    if-nez v10, :cond_1a

    const/4 v7, 0x0

    goto :goto_1d

    :cond_1a
    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateVersion()Ljava/lang/String;

    move-result-object v7

    :goto_1d
    const-string v8, "format(format, *args)"

    const/16 v9, 0x8

    if-eqz v7, :cond_1f

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_1b

    goto :goto_20

    :cond_1b
    if-nez v14, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v7, 0x0

    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_1e
    if-nez v14, :cond_1d

    goto :goto_21

    :cond_1d
    sget-object v7, Lhz9;->a:Lhz9;

    sget v7, Lcom/cloud/tupdate/R$string;->text_update_version:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, "context.getString(R.string.text_update_version)"

    invoke-static {v7, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v10, :cond_1e

    const/4 v11, 0x0

    goto :goto_1f

    :cond_1e
    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateVersion()Ljava/lang/String;

    move-result-object v11

    :goto_1f
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    :cond_1f
    :goto_20
    if-nez v14, :cond_20

    goto :goto_21

    :cond_20
    invoke-virtual {v14, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_21
    if-eqz v5, :cond_23

    move-object/from16 v7, v22

    if-nez v22, :cond_21

    goto :goto_22

    :cond_21
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_22
    if-nez v7, :cond_22

    goto :goto_23

    :cond_22
    sget-object v11, Lhz9;->a:Lhz9;

    sget v11, Lcom/cloud/tupdate/R$string;->text_update_current_version:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "context.getString(R.stri\u2026t_update_current_version)"

    invoke-static {v11, v12}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lqa1;->a:Lqa1;

    invoke-virtual {v12, v1}, Lqa1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    :cond_23
    move-object/from16 v7, v22

    if-nez v7, :cond_24

    goto :goto_23

    :cond_24
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_23
    if-nez v10, :cond_25

    const/4 v7, 0x0

    goto :goto_24

    :cond_25
    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateContent()Ljava/lang/String;

    move-result-object v7

    :goto_24
    if-eqz v7, :cond_29

    invoke-static {v7}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26

    goto :goto_26

    :cond_26
    if-nez v15, :cond_27

    goto :goto_27

    :cond_27
    if-nez v10, :cond_28

    const/4 v7, 0x0

    goto :goto_25

    :cond_28
    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateContent()Ljava/lang/String;

    move-result-object v7

    :goto_25
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_29
    :goto_26
    if-nez v15, :cond_2a

    goto :goto_27

    :cond_2a
    sget v7, Lcom/cloud/tupdate/R$string;->text_update_content:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_27
    if-nez v10, :cond_2b

    const/4 v7, 0x0

    goto :goto_28

    :cond_2b
    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getIgnoreUpdateTips()Ljava/lang/String;

    move-result-object v7

    :goto_28
    if-eqz v7, :cond_2f

    invoke-static {v7}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2c

    goto :goto_2a

    :cond_2c
    if-nez v0, :cond_2d

    goto :goto_2b

    :cond_2d
    if-nez v10, :cond_2e

    const/4 v11, 0x0

    goto :goto_29

    :cond_2e
    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getIgnoreUpdateTips()Ljava/lang/String;

    move-result-object v11

    :goto_29
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    :cond_2f
    :goto_2a
    if-nez v0, :cond_30

    goto :goto_2b

    :cond_30
    sget v7, Lcom/cloud/tupdate/R$string;->text_update_ignore:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2b
    if-eqz v10, :cond_32

    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateButton()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_2c

    :cond_31
    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateButton()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_32
    :goto_2c
    sget v0, Lcom/cloud/tupdate/R$string;->text_update_button:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    const-string v7, "if (updateContent == nul\u2026eButton\n                }"

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, v17

    if-nez v17, :cond_33

    goto :goto_2e

    :cond_33
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2e
    sget-object v0, Lqa1;->a:Lqa1;

    invoke-virtual {v0}, Lqa1;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lolb;->a:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-static {v8, v0, v2}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    if-nez v7, :cond_34

    goto :goto_2f

    :cond_34
    sget v0, Lcom/cloud/tupdate/R$color;->update_color_14C764:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Lzfb;->a:Lzfb;

    :goto_2f
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v0, :cond_35

    goto :goto_31

    :cond_35
    sget v6, Lcom/cloud/tupdate/R$drawable;->update_checkbox_button_xos:I

    invoke-static {v1, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lzfb;->a:Lzfb;

    goto :goto_31

    :cond_36
    if-nez v7, :cond_37

    goto :goto_30

    :cond_37
    sget v0, Lcom/cloud/tupdate/R$color;->update_color_0A69FE:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Lzfb;->a:Lzfb;

    :goto_30
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v0, :cond_38

    goto :goto_31

    :cond_38
    sget v6, Lcom/cloud/tupdate/R$drawable;->update_checkbox_button:I

    invoke-static {v1, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lzfb;->a:Lzfb;

    :goto_31
    if-eqz v10, :cond_3a

    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateButton()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_32

    :cond_39
    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getCancelUpdateButton()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_3a
    :goto_32
    sget v0, Lcom/cloud/tupdate/R$string;->text_update_cancel:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_33
    move-object/from16 v11, v16

    if-nez v16, :cond_3b

    goto :goto_34

    :cond_3b
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_34
    if-eqz v10, :cond_3c

    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getForce()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_3c
    move-object/from16 v6, v18

    goto :goto_38

    :cond_3d
    if-nez v11, :cond_3e

    goto :goto_35

    :cond_3e
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_35
    if-nez v3, :cond_3f

    goto :goto_36

    :cond_3f
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_36
    if-nez v18, :cond_40

    :goto_37
    const/4 v0, 0x0

    goto :goto_3c

    :cond_40
    move-object/from16 v6, v18

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37

    :goto_38
    invoke-interface/range {p3 .. p3}, Lww4;->b()Z

    move-result v0

    if-eqz v0, :cond_42

    if-nez v3, :cond_41

    :goto_39
    const/4 v0, 0x0

    goto :goto_3a

    :cond_41
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39

    :cond_42
    if-nez v3, :cond_43

    goto :goto_39

    :cond_43
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3a
    if-nez v11, :cond_44

    goto :goto_3b

    :cond_44
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3b
    if-nez v6, :cond_45

    goto :goto_3c

    :cond_45
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3c
    new-instance v3, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v3, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    move-object/from16 v6, v19

    invoke-virtual {v3, v6}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v3

    if-nez v10, :cond_46

    :goto_3d
    move v12, v0

    goto :goto_3e

    :cond_46
    invoke-virtual {v10}, Lcom/cloud/tupdate/bean/UpdateContent;->getForce()Ljava/lang/Boolean;

    move-result-object v6

    if-nez v6, :cond_47

    goto :goto_3d

    :cond_47
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    :goto_3e
    xor-int/lit8 v0, v12, 0x1

    invoke-virtual {v3, v0}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    new-instance v2, Lsa2;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lsa2;-><init>(Lww4;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->s(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    new-instance v2, Lta2;

    invoke-direct {v2, v3}, Lta2;-><init>(Lww4;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    if-nez v7, :cond_48

    goto :goto_3f

    :cond_48
    new-instance v2, Lua2;

    invoke-direct {v2, v4, v10, v3, v0}, Lua2;-><init>(Lwa2$c;Lcom/cloud/tupdate/bean/UpdateContent;Lww4;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v2, Lzfb;->a:Lzfb;

    :goto_3f
    if-nez v11, :cond_49

    goto :goto_40

    :cond_49
    new-instance v2, Lva2;

    invoke-direct {v2, v0, v4}, Lva2;-><init>(Lcom/transsion/widgetslib/dialog/d;Lwa2$c;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v2, Lzfb;->a:Lzfb;

    :goto_40
    :try_start_7
    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v2

    const-string/jumbo v4, "update"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showCurrentVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",  isHideIgnoreVersion = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lww4;->b()Z

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", position = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lww4;->h()Lcom/cloud/tupdate/dialog/DialogPosition;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lww4;->f()Lvw4;

    move-result-object v2

    if-nez v2, :cond_4a

    goto :goto_41

    :cond_4a
    invoke-interface {v2}, Lvw4;->b()Z

    move-result v2

    if-nez v2, :cond_4b

    return-void

    :cond_4b
    :goto_41
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_4c

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    goto :goto_42

    :catch_7
    move-exception v0

    goto :goto_43

    :cond_4c
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_4d
    :goto_42
    sget-object v0, Lvk;->a:Lvk;

    const-string/jumbo v1, "upgrade"

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lvk;->C(Ljava/lang/String;Lcom/cloud/tupdate/bean/UpdateEntity;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_44

    :goto_43
    sget-object v1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {v1, v0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_44
    return-void
.end method
