.class public Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

.field public m:Landroid/widget/FrameLayout;

.field public n:Landroid/widget/ImageView;

.field public o:Lcom/transsion/widgetslib/view/LoadingView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic P(Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->U(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->T(Z)V

    return-void
.end method

.method public static S(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;
    .locals 1

    new-instance v0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;-><init>()V

    iput-object p0, v0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    return-object v0
.end method

.method private synthetic U(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->R()V

    return-void
.end method


# virtual methods
.method public R()V
    .locals 3

    invoke-static {}, Le16;->m()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->o:Lcom/transsion/widgetslib/view/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->n:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    new-instance v2, Lec0;

    invoke-direct {v2, p0}, Lec0;-><init>(Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;)V

    invoke-static {v0, v1, v2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d0(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;Lcom/transsion/playercommon/videomodel/WhatsappViewModel$a;)V

    return-void
.end method

.method public final synthetic T(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setStatus(I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x49b

    invoke-virtual {p1, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->m:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "scan_whatsapp_file_base"

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string v0, "scan_whatsapp_file_base"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    iput-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    :cond_0
    sget p2, Lcom/transsion/sniffer_load/R$id;->download_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->m:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/sniffer_load/R$id;->pb_saving:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgetslib/view/LoadingView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->o:Lcom/transsion/widgetslib/view/LoadingView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->download:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->n:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->m:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSaved()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->m:Landroid/widget/FrameLayout;

    new-instance p2, Ldc0;

    invoke-direct {p2, p0}, Ldc0;-><init>(Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSaved()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Le16;->n()V

    :cond_2
    return-void
.end method
