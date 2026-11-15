.class Lcom/transsion/sniffer_load/WebActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/WebActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity$4;->this$0:Lcom/transsion/sniffer_load/WebActivity;

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

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebActivity$4;->this$0:Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {v1}, Lcom/transsion/sniffer_load/WebActivity;->E0(Lcom/transsion/sniffer_load/WebActivity;)Lcom/transsion/widgets/BadgeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity$4;->this$0:Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WebActivity;->E0(Lcom/transsion/sniffer_load/WebActivity;)Lcom/transsion/widgets/BadgeView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity$4;->this$0:Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/WebActivity;->E0(Lcom/transsion/sniffer_load/WebActivity;)Lcom/transsion/widgets/BadgeView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity$4;->this$0:Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/WebActivity;->E0(Lcom/transsion/sniffer_load/WebActivity;)Lcom/transsion/widgets/BadgeView;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
