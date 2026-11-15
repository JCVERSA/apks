.class Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$2;->this$0:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$2;->this$0:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->U(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$2;->this$0:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->V(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method
