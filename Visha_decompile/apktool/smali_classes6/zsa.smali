.class public final synthetic Lzsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;


# instance fields
.field public final synthetic a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzsa;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iput-object p2, p0, Lzsa;->b:Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lzsa;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iget-object p0, p0, Lzsa;->b:Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->W(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method
