.class public Lcom/transsion/sniffer_load/WhatsAppGuideActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# instance fields
.field public N:Landroid/view/View;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public Q:Lcom/transsion/widgetslib/dialog/d;

.field public R:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/sniffer_load/WhatsAppGuideActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->x0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/sniffer_load/WhatsAppGuideActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->w0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/sniffer_load/WhatsAppGuideActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->v0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->z0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/sniffer_load/WhatsAppGuideActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->y0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private u0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->Q:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->Q:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic v0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic w0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->A0()V

    return-void
.end method

.method public static synthetic z0(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 1

    const-string v0, "dl_wa_connect_cl"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    invoke-static {p0}, Lraa;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/sniffer_load/R$string;->whats_app_not_installed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->R:Z

    :goto_0
    return-void
.end method

.method public final B0()V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->u0()V

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$layout;->dialog_permission_remind:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->whats_app_permission_content:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/transsion/playercommon/R$id;->tv2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->whats_app_permission_notice:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/transsion/playercommon/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->whats_app_permission_guide:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/transsion/playercommon/R$id;->content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->whats_app_permission_explanation:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Lfkc;

    invoke-direct {v2, p0}, Lfkc;-><init>(Lcom/transsion/sniffer_load/WhatsAppGuideActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->permission_go:I

    new-instance v2, Lgkc;

    invoke-direct {v2, p0}, Lgkc;-><init>(Lcom/transsion/sniffer_load/WhatsAppGuideActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->Q:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lhkc;

    invoke-direct {v1}, Lhkc;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->Q:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->Q:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const-string p0, "popup_mediafile2"

    const-wide/16 v0, 0x246c

    invoke-static {v3, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, ".Statuses"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->u0()V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/sniffer_load/R$string;->error_auhtor:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Likc;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->B0()V

    :cond_0
    sget p1, Lcom/transsion/sniffer_load/R$layout;->activity_whats_guide:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->tv_s1:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->O:Landroid/widget/TextView;

    sget p1, Lcom/transsion/sniffer_load/R$id;->tv_s2:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->P:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->O:Landroid/widget/TextView;

    sget v0, Lcom/transsion/sniffer_load/R$string;->wahtsapp_step1:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->P:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->tv_content2:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-boolean v0, Lpp3;->c:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/sniffer_load/R$string;->wahtsapp_step2_content_pre:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/sniffer_load/R$string;->wahtsapp_step2_content:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->title_bar_back:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->N:Landroid/view/View;

    new-instance v0, Ldkc;

    invoke-direct {v0, p0}, Ldkc;-><init>(Lcom/transsion/sniffer_load/WhatsAppGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->title_bar_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/transsion/sniffer_load/R$string;->whatsapp:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->fl_link:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lekc;

    invoke-direct {v0, p0}, Lekc;-><init>(Lcom/transsion/sniffer_load/WhatsAppGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p0, "dl_wa_guide_show"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onStart()V

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/WhatsAppGuideActivity;->R:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onStop()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "whatsapp_guide_showed"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    return-void
.end method

.method public final synthetic x0(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "popup_mediafile2_n"

    const-wide/16 v0, 0x246c

    const/4 p2, 0x0

    invoke-static {p2, p1, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public final synthetic y0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Likc;->g(Landroid/app/Activity;Z)V

    return-void
.end method
