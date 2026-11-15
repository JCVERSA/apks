.class public Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/player/VideoPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$a;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$a;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public onStartChangedPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 0

    return-void
.end method
