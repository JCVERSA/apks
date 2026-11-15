.class public Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public l:Lcom/transsion/playercommon/adapter/ScanPageAdapter;

.field public m:Ljava/util/List;

.field public n:Landroidx/viewpager/widget/ViewPager;

.field public o:I

.field public p:Ljava/util/List;

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->m:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->o:I

    return-void
.end method

.method public static synthetic P(Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->S(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->T(Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;)V

    return-void
.end method

.method private synthetic S(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Le16;->l()V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;)V
    .locals 0

    check-cast p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->h0()V

    return-void
.end method


# virtual methods
.method public final R(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    const-string v0, "scan_whatsapp_file_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->p:Ljava/util/List;

    const-string v0, "scan_whatsapp_cur_position"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->q:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lv19;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->p:Ljava/util/List;

    invoke-static {}, Lv19;->a()I

    move-result p1

    iput p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->q:I

    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-static {v0}, Lz19;->a(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final U(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->R(Landroid/os/Bundle;)V

    new-instance p1, Lcom/transsion/playercommon/adapter/ScanPageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->m:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/transsion/playercommon/adapter/ScanPageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->l:Lcom/transsion/playercommon/adapter/ScanPageAdapter;

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->n:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->n:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->l:Lcom/transsion/playercommon/adapter/ScanPageAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->n:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->q:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->n:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment$a;-><init>(Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->m:Ljava/util/List;

    iget v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->q:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;

    instance-of v0, p1, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ly19;

    invoke-direct {v1, p1}, Ly19;-><init>(Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->o:I

    :cond_0
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/sniffer_load/R$layout;->activity_san:I

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->o:I

    invoke-static {p0}, Le16;->p(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->p:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "scan_whatsapp_file_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "scan_whatsapp_cur_position"

    iget v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lx19;

    invoke-direct {v1, p0}, Lx19;-><init>(Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->view_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->n:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->U(Landroid/os/Bundle;)V

    return-void
.end method
