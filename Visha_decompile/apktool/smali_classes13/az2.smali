.class public final synthetic Laz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/DownloadFeedBackActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laz2;->b:Lcom/transsion/sniffer_load/DownloadFeedBackActivity;

    iput-object p2, p0, Laz2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Laz2;->b:Lcom/transsion/sniffer_load/DownloadFeedBackActivity;

    iget-object p0, p0, Laz2;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity;->i0(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
