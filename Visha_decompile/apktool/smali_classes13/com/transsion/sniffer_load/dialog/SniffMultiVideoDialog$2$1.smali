.class Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2$1;->this$1:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2$1;->this$1:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;

    iget-object v1, v1, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;->a:Lcom/transsion/widgets/BadgeView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2$1;->this$1:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;

    iget-object v0, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;->a:Lcom/transsion/widgets/BadgeView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2$1;->this$1:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;

    iget-object p0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;->a:Lcom/transsion/widgets/BadgeView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2$1;->this$1:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;

    iget-object p0, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;->a:Lcom/transsion/widgets/BadgeView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
