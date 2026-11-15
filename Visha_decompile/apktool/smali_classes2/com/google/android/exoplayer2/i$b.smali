.class public abstract Lcom/google/android/exoplayer2/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/exoplayer2/i;Z)Lta8;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0}, Lqj6;->x0(Landroid/content/Context;)Lqj6;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ExoPlayerImpl"

    const-string p1, "MediaMetricsService unavailable."

    invoke-static {p0, p1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lta8;

    invoke-static {}, Lze6;->a()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    invoke-direct {p0, p1}, Lta8;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/i;->f0(Lnb;)V

    :cond_1
    new-instance p1, Lta8;

    invoke-virtual {p0}, Lqj6;->E0()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    invoke-direct {p1, p0}, Lta8;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p1
.end method
