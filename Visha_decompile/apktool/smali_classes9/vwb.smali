.class public final synthetic Lvwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/dbdata/beans/media/PlayListData$RemoveListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvwb;->a:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    return-void
.end method


# virtual methods
.method public final onRemoveResult(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iget-object p0, p0, Lvwb;->a:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method
