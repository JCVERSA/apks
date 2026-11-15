.class final Lcom/google/android/exoplayer2/ui/k$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final e:Ljava/util/Comparator;

.field private static final f:Ljava/util/Comparator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/ui/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/exoplayer2/ui/k$c;->e:Ljava/util/Comparator;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/ui/m;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/m;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/exoplayer2/ui/k$c;->f:Ljava/util/Comparator;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/ui/k$c;->a:I

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/ui/k$c;->b:I

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/k$c;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/k$c;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/ui/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/k$c;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/k$c;->e(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/k$c;->f(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/ui/k$c;->f:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/ui/k$c;->e:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic e(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I
    .locals 2

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/ui/k$c;->b:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/ui/k$c;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/k$c;->c:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/k$c;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/k$c;->d:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/k$c;->d:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method private static synthetic f(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I
    .locals 2

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/ui/k$c;->a:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/ui/k$c;->a:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/k$c;->c:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/k$c;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/k$c;->d:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/k$c;->d:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method
