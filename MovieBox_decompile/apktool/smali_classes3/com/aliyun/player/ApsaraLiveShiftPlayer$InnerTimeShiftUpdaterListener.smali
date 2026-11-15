.class Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApsaraLiveShiftPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerTimeShiftUpdaterListener"
.end annotation


# instance fields
.field private playerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/player/ApsaraLiveShiftPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V
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
    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;->playerReference:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onUpdater(JJJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;->playerReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    move-wide v2, p1

    .line 13
    move-wide v4, p3

    .line 14
    move-wide v6, p5

    .line 15
    invoke-static/range {v1 .. v7}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->access$500(Lcom/aliyun/player/ApsaraLiveShiftPlayer;JJJ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
