.class public final Lcom/google/android/exoplayer2/source/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqi3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lqi3;

.field public final b:Lzua;


# direct methods
.method public constructor <init>(Lqi3;Lzua;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/k$a;->b:Lzua;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-interface {p0}, Lqi3;->disable()V

    return-void
.end method

.method public enable()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-interface {p0}, Lqi3;->enable()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/k$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/k$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->b:Lzua;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/k$a;->b:Lzua;

    invoke-virtual {p0, p1}, Lzua;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getFormat(I)Lcom/google/android/exoplayer2/k;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-interface {p0, p1}, Lhva;->getFormat(I)Lcom/google/android/exoplayer2/k;

    move-result-object p0

    return-object p0
.end method

.method public getIndexInTrackGroup(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-interface {p0, p1}, Lhva;->getIndexInTrackGroup(I)I

    move-result p0

    return p0
.end method

.method public getSelectedFormat()Lcom/google/android/exoplayer2/k;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-interface {p0}, Lqi3;->getSelectedFormat()Lcom/google/android/exoplayer2/k;

    move-result-object p0

    return-object p0
.end method

.method public getTrackGroup()Lzua;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->b:Lzua;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k$a;->b:Lzua;

    invoke-virtual {v0}, Lzua;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public indexOf(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-interface {p0, p1}, Lhva;->indexOf(I)I

    move-result p0

    return p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-interface {p0}, Lhva;->length()I

    move-result p0

    return p0
.end method

.method public onDiscontinuity()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-interface {p0}, Lqi3;->onDiscontinuity()V

    return-void
.end method

.method public onPlayWhenReadyChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-interface {p0, p1}, Lqi3;->onPlayWhenReadyChanged(Z)V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-interface {p0, p1}, Lqi3;->onPlaybackSpeed(F)V

    return-void
.end method

.method public onRebuffer()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$a;->a:Lqi3;

    invoke-interface {p0}, Lqi3;->onRebuffer()V

    return-void
.end method
