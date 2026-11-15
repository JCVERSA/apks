.class public Lcom/transsion/sniffer_load/WhatsAppSaveActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/FootOperationBar$n;


# instance fields
.field public N:Lcom/transsion/widgets/CustomTabLayout;

.field public O:Lcom/transsion/widgets/CustomViewPager;

.field public P:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

.field public Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

.field public R:Landroid/view/View;

.field public S:Landroid/widget/ImageView;

.field public T:Landroid/widget/ImageView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/CheckBox;

.field public W:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field public X:Landroid/widget/FrameLayout;

.field public Y:Lcom/transsion/widgets/InterceptLinearLayout;

.field public Z:Landroid/view/View;

.field public a0:[Ljava/lang/String;

.field public b0:Ljava/util/List;

.field public c0:Z

.field public d0:Lcom/transsion/widgetslib/dialog/d;

.field public e0:Z

.field public f0:Landroid/view/View;

.field public g0:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->c0:Z

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->e0:Z

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->R0(Z)V

    return-void
.end method

.method public static bridge synthetic B0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->S0()V

    return-void
.end method

.method private C0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->d0:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->d0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method private G0()V
    .locals 5

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->R:Landroid/view/View;

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->U:Landroid/widget/TextView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_pay_history:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->S:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_history_clear:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->T:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_checkBox:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->V:Landroid/widget/CheckBox;

    sget v0, Lcom/transsion/sniffer_load/R$id;->ill_enable:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/InterceptLinearLayout;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Y:Lcom/transsion/widgets/InterceptLinearLayout;

    sget v0, Lcom/transsion/sniffer_load/R$id;->fl_bottom:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->X:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_faq:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->g0:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_faq_whatsapp:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->g0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->g0:Landroid/widget/ImageView;

    new-instance v2, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$a;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$a;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$attr;->foot_bar_background:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->R:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->V0(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->S:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/sniffer_load/R$drawable;->ic_download_manager:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->T:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/sniffer_load/R$drawable;->ic_whatsapp_simple:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->U:Landroid/widget/TextView;

    sget v1, Lcom/transsion/sniffer_load/R$string;->whatsapp:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->R:Landroid/view/View;

    new-instance v1, Ljkc;

    invoke-direct {v1, p0}, Ljkc;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->S:Landroid/widget/ImageView;

    new-instance v1, Lkkc;

    invoke-direct {v1, p0}, Lkkc;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->T:Landroid/widget/ImageView;

    new-instance v1, Llkc;

    invoke-direct {v1, p0}, Llkc;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->V:Landroid/widget/CheckBox;

    new-instance v1, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$b;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic I0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->f0(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O:Lcom/transsion/widgets/CustomViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->n(I)V

    const-string p0, "dl_wa_content_mul_close"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "dl_wa_back"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public static synthetic N0(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method private R0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->T:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->g0:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->V:Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->V0(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->P0(Z)V

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q0(Z)V

    invoke-virtual {p0, p1, v2, v2}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O0(ZIZ)V

    return-void
.end method

.method private T0()V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->C0()V

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

    new-instance v2, Lmkc;

    invoke-direct {v2, p0}, Lmkc;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->permission_go:I

    new-instance v2, Lnkc;

    invoke-direct {v2, p0}, Lnkc;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->d0:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lokc;

    invoke-direct {v1}, Lokc;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->d0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->d0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const-string p0, "dl_wa_popup_mediafile_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    const-string p0, "popup_mediafile2"

    const-wide/16 v0, 0x246c

    invoke-static {v3, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private V0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->R:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/playercommon/R$string;->os_close:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$string;->os_back:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->R:Landroid/view/View;

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/playercommon/R$string;->talkback_close:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/transsion/playercommon/R$string;->talkback_back:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private initView()V
    .locals 4

    sget v0, Lcom/transsion/sniffer_load/R$id;->fl_all_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Z:Landroid/view/View;

    sget v0, Lcom/transsion/sniffer_load/R$id;->cvp_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomViewPager;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O:Lcom/transsion/widgets/CustomViewPager;

    sget v0, Lcom/transsion/sniffer_load/R$id;->tab_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayout;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->N:Lcom/transsion/widgets/CustomTabLayout;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O:Lcom/transsion/widgets/CustomViewPager;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->N:Lcom/transsion/widgets/CustomTabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->isFirstLevelTab(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->N:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->setTabMode(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->N:Lcom/transsion/widgets/CustomTabLayout;

    new-instance v2, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$c;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$c;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgets/CustomTabLayout;->setOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->b0:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->y0(I)Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->b0:Ljava/util/List;

    invoke-static {v1}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->y0(I)Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->b0:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->y0(I)Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$array;->whatsapp_tabs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->a0:[Ljava/lang/String;

    new-instance v0, Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->b0:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->a0:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/playercommon/adapter/RtlPageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->P:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O:Lcom/transsion/widgets/CustomViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O:Lcom/transsion/widgets/CustomViewPager;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->a0:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    new-instance v1, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$d;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$d;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->Y(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    new-instance v1, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$e;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$e;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->X(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    new-instance v1, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$f;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$f;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->T(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->L0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->M0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->H0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->I0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->N0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->J0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->K0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic w0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->V:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic x0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Lcom/transsion/widgets/CustomViewPager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O:Lcom/transsion/widgets/CustomViewPager;

    return-object p0
.end method

.method public static bridge synthetic y0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Lcom/transsion/playercommon/videomodel/WhatsappViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    return-object p0
.end method

.method public static bridge synthetic z0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->D0(Z)V

    return-void
.end method


# virtual methods
.method public final D0(Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->f0:Landroid/view/View;

    if-nez v1, :cond_0

    sget v1, Lcom/transsion/sniffer_load/R$id;->activity_empty_view:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->f0:Landroid/view/View;

    sget v2, Lcom/transsion/sniffer_load/R$id;->lottie_no_videos_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/common/R$drawable;->ic_file_empty_illustration:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->f0:Landroid/view/View;

    sget v2, Lcom/transsion/sniffer_load/R$id;->text_no_videos:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->f0:Landroid/view/View;

    sget v3, Lcom/transsion/sniffer_load/R$id;->add_video_tv:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/transsion/sniffer_load/R$string;->link_wa:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lpkc;

    invoke-direct {v3, p0}, Lpkc;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/transsion/sniffer_load/R$string;->file_empty:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Y:Lcom/transsion/widgets/InterceptLinearLayout;

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O:Lcom/transsion/widgets/CustomViewPager;

    if-eqz p1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->f0:Landroid/view/View;

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final E0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Y:Lcom/transsion/widgets/InterceptLinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->f0:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->T:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->S:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Z:Landroid/view/View;

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final F0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->c0:Z

    :cond_1
    return-void
.end method

.method public final synthetic H0(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "dl_wa_connect_cl"

    const-string v1, "from"

    invoke-static {v0, v1, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lraa;->l(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/sniffer_load/R$string;->whats_app_not_installed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public final synthetic J0(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownManagerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic K0(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "dl_wa_connect_cl"

    const-string v1, "from"

    invoke-static {v0, v1, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lraa;->l(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/sniffer_load/R$string;->whats_app_not_installed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public final synthetic L0(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "dl_wa_popup_mediafile_cancel"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    const-string p1, "popup_mediafile2_n"

    const-wide/16 v0, 0x246c

    const/4 p2, 0x0

    invoke-static {p2, p1, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->onBackPressed()V

    return-void
.end method

.method public final synthetic M0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "dl_wa_popup_mediafile_go"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Likc;->g(Landroid/app/Activity;Z)V

    return-void
.end method

.method public O0(ZIZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->V:Landroid/widget/CheckBox;

    invoke-virtual {v0, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->U:Landroid/widget/TextView;

    sget p1, Lcom/transsion/sniffer_load/R$string;->whatsapp:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->U:Landroid/widget/TextView;

    sget p2, Lcom/transsion/magicvideo/R$string;->none_select:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->U:Landroid/widget/TextView;

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    sget p3, Lcom/transsion/magicvideo/R$string;->items:I

    goto :goto_0

    :cond_2
    sget p3, Lcom/transsion/magicvideo/R$string;->item:I

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final P0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->W:Lcom/transsion/widgetslib/widget/FootOperationBar;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/sniffer_load/R$id;->bottom_action_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->W:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->W:Lcom/transsion/widgetslib/widget/FootOperationBar;

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_download_manager:I

    filled-new-array {v1}, [I

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$string;->download:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItems([I[I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->W:Lcom/transsion/widgetslib/widget/FootOperationBar;

    new-instance v1, Lqkc;

    invoke-direct {v1, p0}, Lqkc;-><init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->W:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->openFootOperationBar()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->W:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeFootOperationBar()V

    :goto_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->W:Lcom/transsion/widgetslib/widget/FootOperationBar;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final Q0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Y:Lcom/transsion/widgets/InterceptLinearLayout;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O:Lcom/transsion/widgets/CustomViewPager;

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/CustomViewPager;->setCanScroll(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Y:Lcom/transsion/widgets/InterceptLinearLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O:Lcom/transsion/widgets/CustomViewPager;

    if-eqz p1, :cond_1

    const/high16 p1, 0x41200000    # 10.0f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x42700000    # 60.0f

    :goto_1
    invoke-static {p0, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final S0()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/dialog/WhatsAppGuideDialog;->f0(Landroid/content/Context;)V

    return-void
.end method

.method public final U0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O:Lcom/transsion/widgets/CustomViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {v1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->w()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {v2, p0, v1, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->e0(Landroid/content/Context;Ljava/util/List;I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->f0(Z)V

    return-void
.end method

.method public loadSkin(Z)I
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->R()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, ".Statuses"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->C0()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->e0:Z

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->E0(Z)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/sniffer_load/R$string;->error_auhtor:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->onBackPressed()V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Likc;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    sget p1, Lcom/transsion/sniffer_load/R$string;->error_auhtor:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->onBackPressed()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->f0(Z)V

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/sniffer_load/R$layout;->activity_whats_save:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->initView()V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->G0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->F0()V

    invoke-static {p0}, Likc;->b(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->E0(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->T0()V

    :cond_0
    return-void
.end method

.method public onItemClick(I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->x()Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->a:I

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->U0()V

    return-void

    :cond_1
    :goto_0
    sget p0, Lcom/transsion/sniffer_load/R$string;->none_select:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->Q:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->v(Lcom/transsion/playercommon/activities/BaseActivity;Z)V

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->e0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->S0()V

    iput-boolean v1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->e0:Z

    :cond_0
    return-void
.end method
