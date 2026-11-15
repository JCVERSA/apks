.class Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartPlayingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

.field final synthetic b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$5;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    iput-object p2, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$5;->a:Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoStartPlaying(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$5;->a:Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

    iget-object p0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->c:Lcom/mgtv/ssp/widget/ImmerCoverView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/ImmerCoverView;->a()V

    :cond_0
    return-void
.end method
