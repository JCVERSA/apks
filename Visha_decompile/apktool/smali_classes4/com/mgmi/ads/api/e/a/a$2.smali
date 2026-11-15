.class Lcom/mgmi/ads/api/e/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/e/a/a;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/e/a/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/e/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVFrameClockCome(Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-wide v1, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->tTimeMs:J

    invoke-static {v0, v1, v2}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/ads/api/e/a/a;J)V

    iget-wide v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->tTimeMs:J

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-object p1, p1, Lcom/mgmi/ads/api/e/a/a;->m:Landroid/os/Handler;

    new-instance v2, Lcom/mgmi/ads/api/e/a/a$2$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/mgmi/ads/api/e/a/a$2$1;-><init>(Lcom/mgmi/ads/api/e/a/a$2;J)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-wide v1, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-static {v0, v1, v2}, Lcom/mgmi/ads/api/e/a/a;->b(Lcom/mgmi/ads/api/e/a/a;J)V

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-wide v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-static {p0, v0, v1}, Lcom/mgmi/ads/api/e/a/a;->c(Lcom/mgmi/ads/api/e/a/a;J)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/mgmi/ads/api/e/a/a;->b(Lcom/mgmi/ads/api/e/a/a;J)V

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-wide v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-static {p0, v0, v1}, Lcom/mgmi/ads/api/e/a/a;->c(Lcom/mgmi/ads/api/e/a/a;J)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-wide v1, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-static {v0, v1, v2}, Lcom/mgmi/ads/api/e/a/a;->b(Lcom/mgmi/ads/api/e/a/a;J)V

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-wide v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-static {p0, v0, v1}, Lcom/mgmi/ads/api/e/a/a;->c(Lcom/mgmi/ads/api/e/a/a;J)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-wide v1, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-static {v0, v1, v2}, Lcom/mgmi/ads/api/e/a/a;->b(Lcom/mgmi/ads/api/e/a/a;J)V

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-wide v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-static {p0, v0, v1}, Lcom/mgmi/ads/api/e/a/a;->c(Lcom/mgmi/ads/api/e/a/a;J)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-wide v1, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-static {v0, v1, v2}, Lcom/mgmi/ads/api/e/a/a;->b(Lcom/mgmi/ads/api/e/a/a;J)V

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-wide v0, p1, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-static {p0, v0, v1}, Lcom/mgmi/ads/api/e/a/a;->c(Lcom/mgmi/ads/api/e/a/a;J)V

    :cond_5
    :goto_0
    return-void
.end method
