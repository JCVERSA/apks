.class public final Lcom/google/android/exoplayer2/upstream/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/a;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/upstream/h;

.field public static final b:Lcom/google/android/exoplayer2/upstream/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/h;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/h;->a:Lcom/google/android/exoplayer2/upstream/h;

    new-instance v0, Lp18;

    invoke-direct {v0}, Lp18;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/h;->b:Lcom/google/android/exoplayer2/upstream/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c()Lcom/google/android/exoplayer2/upstream/h;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/h;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/b;)J
    .locals 0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "PlaceholderDataSource cannot be opened"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lu5b;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public read([BII)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
