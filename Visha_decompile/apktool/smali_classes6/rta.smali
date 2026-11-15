.class public final synthetic Lrta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrta;->b:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    iput-object p2, p0, Lrta;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lrta;->b:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    iget-object p0, p0, Lrta;->c:Ljava/util/Set;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->U(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/util/Set;Landroid/content/DialogInterface;I)V

    return-void
.end method
