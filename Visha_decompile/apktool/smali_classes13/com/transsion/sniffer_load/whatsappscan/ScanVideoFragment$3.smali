.class Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;->lambda$run$0(Z)V

    return-void
.end method

.method private synthetic lambda$run$0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object v0, v0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->p:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {p1, v1}, Loc2;->a(Landroid/content/Context;F)I

    move-result v1

    :cond_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->p:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object v1, v1, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {v1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object v1, v1, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->p:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    new-instance v2, Lcom/transsion/sniffer_load/whatsappscan/a;

    invoke-direct {v2, p0, v0}, Lcom/transsion/sniffer_load/whatsappscan/a;-><init>(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
