.class public Lcom/cloud/hisavana/sdk/api/view/MediaView$b;
.super Lvkd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/api/view/MediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lcom/cloud/hisavana/sdk/api/view/MediaView;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$b;->e:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-direct {p0, p2}, Lvkd;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/p;)V
    .locals 0

    invoke-super {p0, p1}, Lvkd;->a(Lcom/cloud/hisavana/sdk/p;)V

    return-void
.end method

.method public b(JJI)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lvkd;->b(JJI)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-super {p0}, Lvkd;->d()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-super {p0}, Lvkd;->e()V

    return-void
.end method

.method public onComplete()V
    .locals 0

    invoke-super {p0}, Lvkd;->onComplete()V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lvkd;->onIsPlayingChanged(Z)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lvkd;->onVideoSizeChanged(II)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0

    invoke-super {p0, p1}, Lvkd;->onVolumeChanged(F)V

    return-void
.end method
