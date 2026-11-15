.class public abstract synthetic Lcom/google/android/exoplayer2/upstream/cache/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Lcom/google/android/exoplayer2/upstream/cache/g;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/upstream/n;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/n;->i:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/n;->a:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method
