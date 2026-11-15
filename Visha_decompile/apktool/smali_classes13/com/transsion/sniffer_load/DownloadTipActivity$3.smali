.class Lcom/transsion/sniffer_load/DownloadTipActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/DownloadTipActivity;->p0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/DownloadTipActivity;

.field final synthetic val$btn_done:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadTipActivity;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$3;->this$0:Lcom/transsion/sniffer_load/DownloadTipActivity;

    iput-object p2, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$3;->val$btn_done:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$3;->val$btn_done:Landroid/widget/Button;

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$3;->this$0:Lcom/transsion/sniffer_load/DownloadTipActivity;

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity;->P:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-void
.end method
