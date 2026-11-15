.class public final Lcom/google/android/exoplayer2/audio/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/a$e;->a:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/a$e;->b:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/audio/a$e;->c:I

    iput v1, p0, Lcom/google/android/exoplayer2/audio/a$e;->d:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/a$e;->e:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/audio/a;
    .locals 8

    new-instance v7, Lcom/google/android/exoplayer2/audio/a;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/a$e;->a:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/a$e;->b:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/a$e;->c:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/a$e;->d:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/a$e;->e:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/a;-><init>(IIIIILcom/google/android/exoplayer2/audio/a$a;)V

    return-object v7
.end method

.method public b(I)Lcom/google/android/exoplayer2/audio/a$e;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/a$e;->d:I

    return-object p0
.end method

.method public c(I)Lcom/google/android/exoplayer2/audio/a$e;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/a$e;->a:I

    return-object p0
.end method

.method public d(I)Lcom/google/android/exoplayer2/audio/a$e;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/a$e;->b:I

    return-object p0
.end method

.method public e(I)Lcom/google/android/exoplayer2/audio/a$e;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/a$e;->e:I

    return-object p0
.end method

.method public f(I)Lcom/google/android/exoplayer2/audio/a$e;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/a$e;->c:I

    return-object p0
.end method
