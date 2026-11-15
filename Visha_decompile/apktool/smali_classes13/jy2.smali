.class public final synthetic Ljy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

.field public final synthetic c:Lcom/transsion/dbdata/beans/sniff/Bookmark;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljy2;->b:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    iput-object p2, p0, Ljy2;->c:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Ljy2;->b:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    iget-object p0, p0, Ljy2;->c:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->i0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/transsion/dbdata/beans/sniff/Bookmark;Landroid/content/DialogInterface;I)V

    return-void
.end method
