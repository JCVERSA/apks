.class Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;->onConnect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3$1;->this$1:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3$1;->this$1:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->w0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/playercommon/widgets/NotificationView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
