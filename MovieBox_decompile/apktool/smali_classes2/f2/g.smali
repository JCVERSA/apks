.class public final synthetic Lf2/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/x;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/i;

.field public final synthetic c:Landroidx/media3/common/r;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/i;Landroidx/media3/common/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf2/g;->b:Landroidx/media3/exoplayer/source/i;

    .line 5
    .line 6
    iput-object p2, p0, Lf2/g;->c:Landroidx/media3/common/r;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public synthetic a(Lh3/s$a;)Lk2/x;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lk2/w;->d(Lk2/x;Lh3/s$a;)Lk2/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic b(I)Lk2/x;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lk2/w;->b(Lk2/x;I)Lk2/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic c(Landroid/net/Uri;Ljava/util/Map;)[Lk2/r;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lk2/w;->a(Lk2/x;Landroid/net/Uri;Ljava/util/Map;)[Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final createExtractors()[Lk2/r;
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/g;->b:Landroidx/media3/exoplayer/source/i;

    .line 2
    .line 3
    iget-object v1, p0, Lf2/g;->c:Landroidx/media3/common/r;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/i;->g(Landroidx/media3/exoplayer/source/i;Landroidx/media3/common/r;)[Lk2/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public synthetic d(Z)Lk2/x;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lk2/w;->c(Lk2/x;Z)Lk2/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
