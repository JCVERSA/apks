.class public Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;


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

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$e;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$e;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->e0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/btdownload/activiy/FileSelectViewModel;->a()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$e;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iget-object p1, p1, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    instance-of v0, p1, Lcom/transsion/btdownload/TorrentedFileTree;

    if-nez v0, :cond_2

    instance-of p1, p1, Lcom/transsion/btdownload/TorrentingFileTree;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$e;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iget-object p1, p1, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p1, p3}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->x(I)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$e;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->e0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/FileSelectViewModel;->c(Z)V

    return p1

    :cond_2
    :goto_0
    return p2
.end method
