.class public final Lcom/google/android/exoplayer2/source/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/a$a;

.field public b:Lcom/google/android/exoplayer2/upstream/f;

.field public c:Z

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/a$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/s$b;->a:Lcom/google/android/exoplayer2/upstream/a$a;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/e;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/e;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/s$b;->b:Lcom/google/android/exoplayer2/upstream/f;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/s$b;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/n$l;J)Lcom/google/android/exoplayer2/source/s;
    .locals 11

    new-instance v10, Lcom/google/android/exoplayer2/source/s;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/s$b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/s$b;->a:Lcom/google/android/exoplayer2/upstream/a$a;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/s$b;->b:Lcom/google/android/exoplayer2/upstream/f;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/s$b;->c:Z

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/s$b;->d:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/s;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/n$l;Lcom/google/android/exoplayer2/upstream/a$a;JLcom/google/android/exoplayer2/upstream/f;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/s$a;)V

    return-object v10
.end method

.method public b(Lcom/google/android/exoplayer2/upstream/f;)Lcom/google/android/exoplayer2/source/s$b;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/e;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/e;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/s$b;->b:Lcom/google/android/exoplayer2/upstream/f;

    return-object p0
.end method
