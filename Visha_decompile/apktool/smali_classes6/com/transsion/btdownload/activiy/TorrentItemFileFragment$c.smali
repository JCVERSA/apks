.class public Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$c;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$c;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iget-object p1, p1, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    instance-of p2, p1, Lcom/transsion/btdownload/TorrentedFileTree;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/transsion/btdownload/TorrentingFileTree;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$c;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-static {p2}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->e0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/btdownload/activiy/FileSelectViewModel;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$c;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iget-object p1, p1, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p1, p3}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->E(I)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$c;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->i0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$c;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->g0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$c;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iget-object p2, p2, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p2, p3}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->getItemViewType(I)I

    move-result p2

    const/16 p3, 0x3ec

    if-ne p2, p3, :cond_2

    new-instance p2, Ljava/io/File;

    sget-object p3, Lyx2;->j:Ljava/io/File;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$c;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/transsion/btdownload/FileItemUtils;->a(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
