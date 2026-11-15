.class Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AVPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerOnChooseTrackIndexListener"
.end annotation


# instance fields
.field private avpBaseWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/player/AVPBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aliyun/player/AVPBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;->avpBaseWR:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/aliyun/player/AVPBase;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/aliyun/player/AVPBase;->access$200(Lcom/aliyun/player/AVPBase;[Lcom/aliyun/player/nativeclass/TrackInfo;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, -0x1

    .line 17
    return p1
.end method
