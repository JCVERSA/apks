.class public final Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/view/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 4

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->u0(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Llm/j;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Llm/j;->b:Landroidx/constraintlayout/widget/Group;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->q0(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;)Lcom/transsion/player/orplayer/f;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-wide v0, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->a:J

    .line 38
    .line 39
    iget-object v2, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->p0(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    mul-long/2addr v0, v2

    .line 46
    const/16 v2, 0x64

    .line 47
    .line 48
    int-to-long v2, v2

    .line 49
    div-long/2addr v0, v2

    .line 50
    invoke-interface {p1, v0, v1}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public b(Lcom/tn/lib/view/SecondariesSeekBar;JZ)V
    .locals 1

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    iput-wide p2, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->a:J

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public c(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 1

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->u0(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
