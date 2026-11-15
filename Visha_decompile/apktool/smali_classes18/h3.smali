.class public abstract Lh3;
.super Lm3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm3;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/Map$Entry;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lh3;->c(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public abstract c(Ljava/util/Map$Entry;)Z
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lh3;->b(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public bridge abstract f(Ljava/util/Map$Entry;)Z
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lh3;->f(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
