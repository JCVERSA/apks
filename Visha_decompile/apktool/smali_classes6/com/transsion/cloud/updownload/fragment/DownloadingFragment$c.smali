.class public Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->j1(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

.field public final synthetic c:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$c;->c:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$c;->b:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$c;->b:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->A(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    return-void
.end method
