.class public final Lcom/google/android/exoplayer2/upstream/d0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/upstream/d0;

.field public static final b:Lcom/google/android/exoplayer2/upstream/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/d0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/d0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/exoplayer2/upstream/d0;->a:Lcom/google/android/exoplayer2/upstream/d0;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/upstream/c0;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/c0;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/exoplayer2/upstream/d0;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f()Lcom/google/android/exoplayer2/upstream/d0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/d0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/d0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/n;)J
    .locals 1

    .line 1
    new-instance p1, Ljava/io/IOException;

    .line 2
    .line 3
    const-string v0, "PlaceholderDataSource cannot be opened"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/j;->a(Lcom/google/android/exoplayer2/upstream/k;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public read([BII)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method
