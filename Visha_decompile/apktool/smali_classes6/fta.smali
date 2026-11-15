.class public final synthetic Lfta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/activiy/TorrentItemFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfta;->b:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lfta;->b:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->Z(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
