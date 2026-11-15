.class public final synthetic La03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La03;->b:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    iput-object p2, p0, La03;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, La03;->b:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    iget-object p0, p0, La03;->c:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->i0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
