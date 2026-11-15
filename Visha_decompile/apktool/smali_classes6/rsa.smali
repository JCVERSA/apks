.class public final synthetic Lrsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

.field public final synthetic c:Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

.field public final synthetic d:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrsa;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iput-object p2, p0, Lrsa;->c:Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    iput-object p3, p0, Lrsa;->d:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lrsa;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iget-object v1, p0, Lrsa;->c:Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    iget-object v2, p0, Lrsa;->d:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->R(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
