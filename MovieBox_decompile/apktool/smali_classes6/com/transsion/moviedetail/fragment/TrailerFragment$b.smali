.class public final Lcom/transsion/moviedetail/fragment/TrailerFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/view/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/TrailerFragment;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/transsion/moviedetail/fragment/TrailerFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/TrailerFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

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
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->m0(Lcom/transsion/moviedetail/fragment/TrailerFragment;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->i0(Lcom/transsion/moviedetail/fragment/TrailerFragment;)Lcom/transsion/player/orplayer/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-wide v0, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->a:J

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->h0(Lcom/transsion/moviedetail/fragment/TrailerFragment;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    mul-long/2addr v0, v2

    .line 27
    const/16 v2, 0x64

    .line 28
    .line 29
    int-to-long v2, v2

    .line 30
    div-long/2addr v0, v2

    .line 31
    invoke-interface {p1, v0, v1}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->i0(Lcom/transsion/moviedetail/fragment/TrailerFragment;)Lcom/transsion/player/orplayer/f;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->i0(Lcom/transsion/moviedetail/fragment/TrailerFragment;)Lcom/transsion/player/orplayer/f;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 53
    .line 54
    .line 55
    :cond_0
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
    iput-wide p2, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->a:J

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
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->m0(Lcom/transsion/moviedetail/fragment/TrailerFragment;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
