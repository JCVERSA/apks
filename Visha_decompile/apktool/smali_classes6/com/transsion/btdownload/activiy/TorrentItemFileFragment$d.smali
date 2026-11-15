.class public Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$d;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    if-ne p1, v0, :cond_0

    check-cast p2, Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$d;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iget-object p1, p1, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p3, p2}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->B(IZ)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$d;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->i0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$d;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->g0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item_more:I

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$d;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-static {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->j0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    :cond_1
    :goto_0
    return-void
.end method
