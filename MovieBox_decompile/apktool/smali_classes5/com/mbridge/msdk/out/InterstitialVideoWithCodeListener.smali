.class public abstract Lcom/mbridge/msdk/out/InterstitialVideoWithCodeListener;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onShowFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0xbb8

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/mbridge/msdk/util/a;->b(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Lcom/mbridge/msdk/out/InterstitialVideoWithCodeListener;->onShowFailWithCode(Lcom/mbridge/msdk/out/MBridgeIds;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public abstract onShowFailWithCode(Lcom/mbridge/msdk/out/MBridgeIds;ILjava/lang/String;)V
.end method

.method public onVideoLoadFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0xbb8

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/mbridge/msdk/util/a;->a(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Lcom/mbridge/msdk/out/InterstitialVideoWithCodeListener;->onVideoLoadFailWithCode(Lcom/mbridge/msdk/out/MBridgeIds;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public abstract onVideoLoadFailWithCode(Lcom/mbridge/msdk/out/MBridgeIds;ILjava/lang/String;)V
.end method
