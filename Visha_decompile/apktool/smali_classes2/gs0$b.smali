.class public final Lgs0$b;
.super Ly4a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgs0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public k:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly4a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lgs0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lgs0$b;-><init>()V

    return-void
.end method

.method public static synthetic r(Lgs0$b;J)J
    .locals 0

    iput-wide p1, p0, Lgs0$b;->k:J

    return-wide p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lgs0$b;

    invoke-virtual {p0, p1}, Lgs0$b;->s(Lgs0$b;)I

    move-result p0

    return p0
.end method

.method public s(Lgs0$b;)I
    .locals 7

    invoke-virtual {p0}, Lwk0;->h()Z

    move-result v0

    invoke-virtual {p1}, Lwk0;->h()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lwk0;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    iget-wide v0, p0, Lgs0$b;->k:J

    iget-wide p0, p1, Lgs0$b;->k:J

    sub-long/2addr v0, p0

    cmp-long p0, v0, v4

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    cmp-long p0, v0, v4

    if-lez p0, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method
