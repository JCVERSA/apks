.class public final Lpn/e$b;
.super Landroidx/media3/exoplayer/util/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpn/e;->v(Lcom/transsion/player/exo/ORExoDecoderType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic f:Lpn/e;


# direct methods
.method constructor <init>(Lpn/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpn/e$b;->f:Lpn/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/util/a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Z(Lx1/c$a;Landroidx/media3/common/i0;)V
    .locals 1

    .line 1
    const-string v0, "eventTime"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tracks"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/util/a;->Z(Lx1/c$a;Landroidx/media3/common/i0;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lpn/e$b;->f:Lpn/e;

    .line 15
    .line 16
    invoke-static {v0, p1, p2}, Lpn/e;->p(Lpn/e;Lx1/c$a;Landroidx/media3/common/i0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public j0(Lx1/c$a;Ljava/lang/String;JJ)V
    .locals 1

    .line 1
    const-string v0, "eventTime"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "decoderName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/util/a;->j0(Lx1/c$a;Ljava/lang/String;JJ)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lsn/e;->a:Lsn/e;

    .line 15
    .line 16
    iget-object p3, p0, Lpn/e$b;->f:Lpn/e;

    .line 17
    .line 18
    invoke-static {p3}, Lpn/e;->l(Lpn/e;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    new-instance p4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p5, "onExoVideoDecoderInitialize, decoderName:"

    .line 28
    .line 29
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/4 p4, 0x1

    .line 40
    invoke-virtual {p1, p3, p2, p4}, Lsn/e;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public x(Lx1/c$a;Ljava/lang/String;JJ)V
    .locals 1

    .line 1
    const-string v0, "eventTime"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "decoderName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/util/a;->x(Lx1/c$a;Ljava/lang/String;JJ)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lsn/e;->a:Lsn/e;

    .line 15
    .line 16
    iget-object p3, p0, Lpn/e$b;->f:Lpn/e;

    .line 17
    .line 18
    invoke-static {p3}, Lpn/e;->l(Lpn/e;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    new-instance p4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p5, "onExoAudioDecoderInitialize, decoderName:"

    .line 28
    .line 29
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/4 p4, 0x1

    .line 40
    invoke-virtual {p1, p3, p2, p4}, Lsn/e;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
