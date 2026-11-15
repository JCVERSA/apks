.class public Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->b(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Ljava/util/HashSet;ZILcom/transsion/btdownload/ui/TorrentItemAdapter$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$a;->d:Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$a;->b:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    iput-boolean p3, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$a;->b:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    invoke-static {p1}, Lpx9;->a(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$a;->c:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "vd_dl_manager_bt_main_task_se_cl"

    const-string v1, "type"

    invoke-static {v0, v1, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$a;->b:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lpk0;->o(Ljava/lang/String;)V

    return-void
.end method
