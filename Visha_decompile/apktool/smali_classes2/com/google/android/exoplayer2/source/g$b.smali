.class public final Lcom/google/android/exoplayer2/source/g$b;
.super Lcom/google/android/exoplayer2/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:Lcom/google/android/exoplayer2/n;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/a0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/g$b;->d:Lcom/google/android/exoplayer2/n;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)I
    .locals 0

    sget-object p0, Lcom/google/android/exoplayer2/source/g$a;->g:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public k(ILcom/google/android/exoplayer2/a0$b;Z)Lcom/google/android/exoplayer2/a0$b;
    .locals 10

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz p3, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/source/g$a;->g:Ljava/lang/Object;

    :cond_1
    move-object v2, p0

    sget-object v8, Lcom/google/android/exoplayer2/source/ads/a;->h:Lcom/google/android/exoplayer2/source/ads/a;

    const/4 v9, 0x1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/a0$b;->w(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/a;Z)Lcom/google/android/exoplayer2/a0$b;

    return-object p2
.end method

.method public m()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public q(I)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/exoplayer2/source/g$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public s(ILcom/google/android/exoplayer2/a0$d;J)Lcom/google/android/exoplayer2/a0$d;
    .locals 21

    move-object/from16 v15, p2

    move-object/from16 v0, p2

    sget-object v1, Lcom/google/android/exoplayer2/a0$d;->s:Ljava/lang/Object;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/g$b;->d:Lcom/google/android/exoplayer2/n;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v20}, Lcom/google/android/exoplayer2/a0$d;->k(Ljava/lang/Object;Lcom/google/android/exoplayer2/n;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/n$g;JJIIJ)Lcom/google/android/exoplayer2/a0$d;

    const/4 v0, 0x1

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/a0$d;->m:Z

    return-object v1
.end method

.method public t()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
