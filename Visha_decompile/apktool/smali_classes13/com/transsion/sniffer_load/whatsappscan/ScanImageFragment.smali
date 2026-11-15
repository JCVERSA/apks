.class public Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;
.super Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;
.source "SourceFile"


# instance fields
.field public p:Lcom/transsion/widgets/ScaleTouchView/PhotoView;

.field public q:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;-><init>()V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;FFF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;->X(FFF)V

    return-void
.end method

.method public static W(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;
    .locals 1

    new-instance v0, Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;-><init>()V

    iput-object p0, v0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    return-object v0
.end method


# virtual methods
.method public final synthetic X(FFF)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;->q:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-static {}, Le16;->r()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;->q:J

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/sniffer_load/R$layout;->fragment_scan_img:I

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "scan_whatsapp_file_image"

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string v0, "scan_whatsapp_file_image"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    iput-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    :cond_0
    sget p2, Lcom/transsion/sniffer_load/R$id;->photo_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/ScaleTouchView/PhotoView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;->p:Lcom/transsion/widgets/ScaleTouchView/PhotoView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getDocumentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFilePath()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getDocumentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;->p:Lcom/transsion/widgets/ScaleTouchView/PhotoView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;->p:Lcom/transsion/widgets/ScaleTouchView/PhotoView;

    new-instance p2, Lw19;

    invoke-direct {p2, p0}, Lw19;-><init>(Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;)V

    invoke-virtual {p1, p2}, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->setOnScaleChangeListener(Lcom/transsion/widgets/ScaleTouchView/OnScaleChangedListener;)V

    return-void
.end method
