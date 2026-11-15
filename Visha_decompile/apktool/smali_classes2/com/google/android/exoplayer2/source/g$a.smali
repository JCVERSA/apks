.class public final Lcom/google/android/exoplayer2/source/g$a;
.super Lm54;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final g:Ljava/lang/Object;


# instance fields
.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/g$a;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lm54;-><init>(Lcom/google/android/exoplayer2/a0;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/g$a;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/g$a;->f:Ljava/lang/Object;

    return-void
.end method

.method public static A(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/g$a;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/source/g$a;

    new-instance v1, Lcom/google/android/exoplayer2/source/g$b;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/g$b;-><init>(Lcom/google/android/exoplayer2/n;)V

    sget-object p0, Lcom/google/android/exoplayer2/a0$d;->s:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/exoplayer2/source/g$a;->g:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/source/g$a;-><init>(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static B(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/g$a;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/g$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;-><init>(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic y(Lcom/google/android/exoplayer2/source/g$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/g$a;->f:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lm54;->d:Lcom/google/android/exoplayer2/a0;

    sget-object v1, Lcom/google/android/exoplayer2/source/g$a;->g:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/g$a;->f:Ljava/lang/Object;

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public k(ILcom/google/android/exoplayer2/a0$b;Z)Lcom/google/android/exoplayer2/a0$b;
    .locals 1

    iget-object v0, p0, Lm54;->d:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/a0;->k(ILcom/google/android/exoplayer2/a0$b;Z)Lcom/google/android/exoplayer2/a0$b;

    iget-object p1, p2, Lcom/google/android/exoplayer2/a0$b;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/g$a;->f:Ljava/lang/Object;

    invoke-static {p1, p0}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/source/g$a;->g:Ljava/lang/Object;

    iput-object p0, p2, Lcom/google/android/exoplayer2/a0$b;->c:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public q(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm54;->d:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a0;->q(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/g$a;->f:Ljava/lang/Object;

    invoke-static {p1, p0}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/source/g$a;->g:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public s(ILcom/google/android/exoplayer2/a0$d;J)Lcom/google/android/exoplayer2/a0$d;
    .locals 1

    iget-object v0, p0, Lm54;->d:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/a0;->s(ILcom/google/android/exoplayer2/a0$d;J)Lcom/google/android/exoplayer2/a0$d;

    iget-object p1, p2, Lcom/google/android/exoplayer2/a0$d;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/g$a;->e:Ljava/lang/Object;

    invoke-static {p1, p0}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/a0$d;->s:Ljava/lang/Object;

    iput-object p0, p2, Lcom/google/android/exoplayer2/a0$d;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public z(Lcom/google/android/exoplayer2/a0;)Lcom/google/android/exoplayer2/source/g$a;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/g$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/g$a;->e:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/g$a;->f:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/exoplayer2/source/g$a;-><init>(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
