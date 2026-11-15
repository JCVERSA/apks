.class final Lcom/google/android/exoplayer2/source/m$a;
.super Lcom/google/android/exoplayer2/source/j;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final f:Ljava/lang/Object;


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/exoplayer2/source/m$a;->f:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/l3;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/j;-><init>(Lcom/google/android/exoplayer2/l3;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/m$a;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/m$a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static A(Lcom/google/android/exoplayer2/w1;)Lcom/google/android/exoplayer2/source/m$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/m$a;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/m$b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/m$b;-><init>(Lcom/google/android/exoplayer2/w1;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/google/android/exoplayer2/l3$d;->r:Ljava/lang/Object;

    .line 9
    .line 10
    sget-object v2, Lcom/google/android/exoplayer2/source/m$a;->f:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/source/m$a;-><init>(Lcom/google/android/exoplayer2/l3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static B(Lcom/google/android/exoplayer2/l3;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/m$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/m$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/m$a;-><init>(Lcom/google/android/exoplayer2/l3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/source/m$a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m$a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j;->c:Lcom/google/android/exoplayer2/l3;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/exoplayer2/source/m$a;->f:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/m$a;->e:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move-object p1, v1

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public k(ILcom/google/android/exoplayer2/l3$b;Z)Lcom/google/android/exoplayer2/l3$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j;->c:Lcom/google/android/exoplayer2/l3;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/l3;->k(ILcom/google/android/exoplayer2/l3$b;Z)Lcom/google/android/exoplayer2/l3$b;

    .line 4
    .line 5
    .line 6
    iget-object p1, p2, Lcom/google/android/exoplayer2/l3$b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m$a;->e:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/exoplayer2/source/m$a;->f:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p1, p2, Lcom/google/android/exoplayer2/l3$b;->b:Ljava/lang/Object;

    .line 21
    .line 22
    :cond_0
    return-object p2
.end method

.method public q(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j;->c:Lcom/google/android/exoplayer2/l3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/l3;->q(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m$a;->e:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/google/android/exoplayer2/source/m$a;->f:Ljava/lang/Object;

    .line 16
    .line 17
    :cond_0
    return-object p1
.end method

.method public s(ILcom/google/android/exoplayer2/l3$d;J)Lcom/google/android/exoplayer2/l3$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j;->c:Lcom/google/android/exoplayer2/l3;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/l3;->s(ILcom/google/android/exoplayer2/l3$d;J)Lcom/google/android/exoplayer2/l3$d;

    .line 4
    .line 5
    .line 6
    iget-object p1, p2, Lcom/google/android/exoplayer2/l3$d;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/m$a;->d:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/google/android/exoplayer2/l3$d;->r:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p2, Lcom/google/android/exoplayer2/l3$d;->a:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_0
    return-object p2
.end method

.method public z(Lcom/google/android/exoplayer2/l3;)Lcom/google/android/exoplayer2/source/m$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/m$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/m$a;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m$a;->e:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/m$a;-><init>(Lcom/google/android/exoplayer2/l3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
