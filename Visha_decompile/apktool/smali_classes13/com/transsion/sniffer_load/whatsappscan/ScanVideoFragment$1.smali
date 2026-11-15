.class Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;
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

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object v1, v0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->Z(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object v1, v1, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    invoke-virtual {v1}, Lttb;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->Y(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object v1, v1, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    invoke-virtual {v1}, Lttb;->getVideoDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object v0, v0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    invoke-virtual {v0}, Lttb;->getVideoDuration()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object v0, v0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    invoke-virtual {v0}, Lttb;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object v1, v1, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    invoke-virtual {v1}, Lttb;->getVideoDuration()I

    move-result v1

    div-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    invoke-static {v1}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->a0(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object v1, v0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->r:Landroid/os/Handler;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->b0(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;->this$0:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    iget-object v0, v0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->r:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
