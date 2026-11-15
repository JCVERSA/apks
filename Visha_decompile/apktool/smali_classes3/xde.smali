.class public final Lxde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# static fields
.field public static final f0:[B

.field public static final g0:[B

.field public static final h0:[B

.field public static final i0:[B

.field public static final j0:Ljava/util/UUID;

.field public static final k0:Ljava/util/Map;


# instance fields
.field public A:Z

.field public B:J

.field public C:J

.field public D:J

.field public E:Lxsg;

.field public F:Lxsg;

.field public G:Z

.field public H:Z

.field public I:I

.field public J:J

.field public K:J

.field public L:I

.field public M:I

.field public N:[I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:Z

.field public T:J

.field public U:I

.field public V:I

.field public W:I

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public final a:Lzde;

.field public a0:I

.field public final b:Landroid/util/SparseArray;

.field public b0:B

.field public final c:Z

.field public c0:Z

.field public final d:Z

.field public d0:Lf9e;

.field public final e:Lvge;

.field public final e0:Lsde;

.field public final f:Lu4h;

.field public final g:Lu4h;

.field public final h:Lu4h;

.field public final i:Lu4h;

.field public final j:Lu4h;

.field public final k:Lu4h;

.field public final l:Lu4h;

.field public final m:Lu4h;

.field public final n:Lu4h;

.field public final o:Lu4h;

.field public p:Ljava/nio/ByteBuffer;

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:Z

.field public w:Lvde;

.field public x:Z

.field public y:I

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lxde;->f0:[B

    sget v1, Lkfh;->a:I

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lxde;->g0:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lxde;->h0:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lxde;->i0:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lxde;->j0:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lxde;->k0:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lsde;

    invoke-direct {v0}, Lsde;-><init>()V

    const/4 v1, 0x2

    sget-object v2, Lvge;->a:Lvge;

    invoke-direct {p0, v0, v1, v2}, Lxde;-><init>(Lsde;ILvge;)V

    return-void
.end method

.method public constructor <init>(Lsde;ILvge;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lxde;->r:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lxde;->s:J

    iput-wide v2, p0, Lxde;->t:J

    iput-wide v2, p0, Lxde;->u:J

    iput-wide v0, p0, Lxde;->B:J

    iput-wide v0, p0, Lxde;->C:J

    iput-wide v2, p0, Lxde;->D:J

    iput-object p1, p0, Lxde;->e0:Lsde;

    new-instance v0, Lude;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lude;-><init>(Lxde;Lwde;)V

    invoke-virtual {p1, v0}, Lsde;->a(Ltde;)V

    iput-object p3, p0, Lxde;->e:Lvge;

    and-int/lit8 p1, p2, 0x1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    const/4 v0, 0x0

    if-eq p3, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lxde;->c:Z

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    move v0, p3

    :cond_1
    iput-boolean v0, p0, Lxde;->d:Z

    .line 3
    new-instance p1, Lzde;

    invoke-direct {p1}, Lzde;-><init>()V

    iput-object p1, p0, Lxde;->a:Lzde;

    new-instance p1, Landroid/util/SparseArray;

    .line 4
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lxde;->b:Landroid/util/SparseArray;

    .line 5
    new-instance p1, Lu4h;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lxde;->h:Lu4h;

    new-instance p1, Lu4h;

    .line 6
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lu4h;-><init>([B)V

    iput-object p1, p0, Lxde;->i:Lu4h;

    new-instance p1, Lu4h;

    .line 7
    invoke-direct {p1, p2}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lxde;->j:Lu4h;

    new-instance p1, Lu4h;

    .line 8
    sget-object v0, Ljzh;->a:[B

    invoke-direct {p1, v0}, Lu4h;-><init>([B)V

    iput-object p1, p0, Lxde;->f:Lu4h;

    new-instance p1, Lu4h;

    .line 9
    invoke-direct {p1, p2}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lxde;->g:Lu4h;

    new-instance p1, Lu4h;

    .line 10
    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lxde;->k:Lu4h;

    new-instance p1, Lu4h;

    .line 11
    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lxde;->l:Lu4h;

    new-instance p1, Lu4h;

    const/16 p2, 0x8

    .line 12
    invoke-direct {p1, p2}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lxde;->m:Lu4h;

    new-instance p1, Lu4h;

    .line 13
    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lxde;->n:Lu4h;

    new-instance p1, Lu4h;

    .line 14
    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lxde;->o:Lu4h;

    new-array p1, p3, [I

    iput-object p1, p0, Lxde;->N:[I

    return-void
.end method

.method public constructor <init>(Lvge;I)V
    .locals 1

    .line 15
    new-instance p2, Lsde;

    invoke-direct {p2}, Lsde;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lxde;-><init>(Lsde;ILvge;)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lxde;->k0:Ljava/util/Map;

    return-object v0
.end method

.method public static bridge synthetic c()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lxde;->j0:Ljava/util/UUID;

    return-object v0
.end method

.method public static bridge synthetic m()[B
    .locals 1

    sget-object v0, Lxde;->g0:[B

    return-object v0
.end method

.method public static w(JLjava/lang/String;J)[B
    .locals 9

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    const-wide v0, 0xd693a400L

    div-long v2, p0, v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v5, v2

    mul-long/2addr v5, v0

    sub-long/2addr p0, v5

    const-wide/32 v0, 0x3938700

    div-long v5, p0, v0

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v2

    mul-long/2addr v6, v0

    sub-long/2addr p0, v6

    const-wide/32 v0, 0xf4240

    div-long v6, p0, v0

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-long v7, v2

    mul-long/2addr v7, v0

    sub-long/2addr p0, v7

    div-long/2addr p0, p3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v3, v5, v6, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lkfh;->a:I

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static x([II)[I
    .locals 1

    if-nez p0, :cond_0

    new-array p0, p1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    :cond_1
    add-int/2addr v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method


# virtual methods
.method public final b(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lxde;->D:J

    const/4 p1, 0x0

    iput p1, p0, Lxde;->I:I

    iget-object p2, p0, Lxde;->e0:Lsde;

    invoke-virtual {p2}, Lsde;->b()V

    iget-object p2, p0, Lxde;->a:Lzde;

    invoke-virtual {p2}, Lzde;->e()V

    invoke-virtual {p0}, Lxde;->u()V

    :goto_0
    iget-object p2, p0, Lxde;->b:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lvde;

    iget-object p2, p2, Lvde;->V:Lsae;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lsae;->b()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxde;->H:Z

    :cond_0
    iget-boolean v1, p0, Lxde;->H:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lxde;->e0:Lsde;

    invoke-virtual {v1, p1}, Lsde;->c(Ld9e;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v1

    iget-boolean v3, p0, Lxde;->A:Z

    if-eqz v3, :cond_1

    iput-wide v1, p0, Lxde;->C:J

    iget-wide v1, p0, Lxde;->B:J

    iput-wide v1, p2, Ly9e;->a:J

    iput-boolean v0, p0, Lxde;->A:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lxde;->x:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lxde;->C:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iput-wide v1, p2, Ly9e;->a:J

    iput-wide v3, p0, Lxde;->C:J

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    iget-object p1, p0, Lxde;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvde;

    invoke-static {p1}, Lvde;->d(Lvde;)V

    iget-object p2, p1, Lvde;->V:Lsae;

    if-eqz p2, :cond_3

    iget-object v1, p1, Lvde;->Z:Lrae;

    iget-object p1, p1, Lvde;->k:Lqae;

    invoke-virtual {p2, v1, p1}, Lsae;->a(Lrae;Lqae;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    return p0

    :cond_5
    return v0
.end method

.method public final e(Ld9e;)Z
    .locals 0

    new-instance p0, Lyde;

    invoke-direct {p0}, Lyde;-><init>()V

    invoke-virtual {p0, p1}, Lyde;->a(Ld9e;)Z

    move-result p0

    return p0
.end method

.method public final f(Lf9e;)V
    .locals 2

    iget-boolean v0, p0, Lxde;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxde;->e:Lvge;

    new-instance v1, Lche;

    invoke-direct {v1, p1, v0}, Lche;-><init>(Lf9e;Lvge;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lxde;->d0:Lf9e;

    return-void
.end method

.method public final g(IILd9e;)V
    .locals 24

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p3

    const/16 v2, 0xa1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v5, 0xa3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v2, :cond_b

    if-eq v0, v5, :cond_b

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_8

    const/16 v2, 0x41ed

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_4

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lxde;->r(I)V

    iget-object v0, v7, Lxde;->w:Lvde;

    new-array v2, v1, [B

    iput-object v2, v0, Lvde;->x:[B

    invoke-interface {v8, v2, v10, v1}, Ld9e;->h([BII)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lxde;->r(I)V

    iget-object v0, v7, Lxde;->w:Lvde;

    new-array v2, v1, [B

    iput-object v2, v0, Lvde;->l:[B

    invoke-interface {v8, v2, v10, v1}, Ld9e;->h([BII)V

    return-void

    :cond_2
    iget-object v0, v7, Lxde;->j:Lu4h;

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v2

    invoke-static {v2, v10}, Ljava/util/Arrays;->fill([BB)V

    rsub-int/lit8 v2, v1, 0x4

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v3

    invoke-interface {v8, v3, v2, v1}, Ld9e;->h([BII)V

    invoke-virtual {v0, v10}, Lu4h;->l(I)V

    invoke-virtual {v0}, Lu4h;->O()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v7, Lxde;->y:I

    return-void

    :cond_3
    new-array v2, v1, [B

    invoke-interface {v8, v2, v10, v1}, Ld9e;->h([BII)V

    invoke-virtual/range {p0 .. p1}, Lxde;->r(I)V

    iget-object v0, v7, Lxde;->w:Lvde;

    new-instance v1, Lqae;

    invoke-direct {v1, v9, v2, v10, v10}, Lqae;-><init>(I[BII)V

    iput-object v1, v0, Lvde;->k:Lqae;

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lxde;->r(I)V

    iget-object v0, v7, Lxde;->w:Lvde;

    new-array v2, v1, [B

    iput-object v2, v0, Lvde;->j:[B

    invoke-interface {v8, v2, v10, v1}, Ld9e;->h([BII)V

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lxde;->r(I)V

    iget-object v0, v7, Lxde;->w:Lvde;

    invoke-static {v0}, Lvde;->a(Lvde;)I

    move-result v2

    const v3, 0x64767643

    if-eq v2, v3, :cond_7

    invoke-static {v0}, Lvde;->a(Lvde;)I

    move-result v2

    const v3, 0x64766343

    if-ne v2, v3, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v8, v1}, Ld9e;->f(I)V

    return-void

    :cond_7
    :goto_0
    new-array v2, v1, [B

    iput-object v2, v0, Lvde;->P:[B

    invoke-interface {v8, v2, v10, v1}, Ld9e;->h([BII)V

    return-void

    :cond_8
    iget v0, v7, Lxde;->I:I

    if-eq v0, v6, :cond_9

    goto/16 :goto_e

    :cond_9
    iget-object v0, v7, Lxde;->b:Landroid/util/SparseArray;

    iget v2, v7, Lxde;->O:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvde;

    iget v2, v7, Lxde;->R:I

    if-ne v2, v4, :cond_a

    iget-object v0, v0, Lvde;->c:Ljava/lang/String;

    const-string v2, "V_VP9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lxde;->o:Lu4h;

    invoke-virtual {v0, v1}, Lu4h;->i(I)V

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v0

    invoke-interface {v8, v0, v10, v1}, Ld9e;->h([BII)V

    return-void

    :cond_a
    invoke-interface {v8, v1}, Ld9e;->f(I)V

    return-void

    :cond_b
    iget v2, v7, Lxde;->I:I

    const/16 v11, 0x8

    if-nez v2, :cond_c

    iget-object v2, v7, Lxde;->a:Lzde;

    invoke-virtual {v2, v8, v10, v9, v11}, Lzde;->d(Ld9e;ZZI)J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, v7, Lxde;->O:I

    invoke-virtual {v2}, Lzde;->a()I

    move-result v2

    iput v2, v7, Lxde;->P:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v7, Lxde;->K:J

    iput v9, v7, Lxde;->I:I

    iget-object v2, v7, Lxde;->h:Lu4h;

    invoke-virtual {v2, v10}, Lu4h;->i(I)V

    :cond_c
    iget-object v2, v7, Lxde;->b:Landroid/util/SparseArray;

    iget v12, v7, Lxde;->O:I

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lvde;

    if-nez v12, :cond_d

    iget v0, v7, Lxde;->P:I

    sub-int v0, v1, v0

    invoke-interface {v8, v0}, Ld9e;->f(I)V

    iput v10, v7, Lxde;->I:I

    return-void

    :cond_d
    invoke-static {v12}, Lvde;->d(Lvde;)V

    iget v2, v7, Lxde;->I:I

    if-ne v2, v9, :cond_1f

    const/4 v2, 0x3

    invoke-virtual {v7, v8, v2}, Lxde;->t(Ld9e;I)V

    iget-object v13, v7, Lxde;->h:Lu4h;

    invoke-virtual {v13}, Lu4h;->n()[B

    move-result-object v14

    aget-byte v14, v14, v6

    and-int/lit8 v14, v14, 0x6

    shr-int/2addr v14, v9

    const/16 v15, 0xff

    if-nez v14, :cond_e

    iput v9, v7, Lxde;->M:I

    iget-object v2, v7, Lxde;->N:[I

    invoke-static {v2, v9}, Lxde;->x([II)[I

    move-result-object v2

    iput-object v2, v7, Lxde;->N:[I

    iget v3, v7, Lxde;->P:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x3

    aput v1, v2, v10

    :goto_1
    move-object/from16 v21, v12

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v7, v8, v4}, Lxde;->t(Ld9e;I)V

    invoke-virtual {v13}, Lu4h;->n()[B

    move-result-object v16

    aget-byte v4, v16, v2

    and-int/2addr v4, v15

    add-int/2addr v4, v9

    iput v4, v7, Lxde;->M:I

    iget-object v5, v7, Lxde;->N:[I

    invoke-static {v5, v4}, Lxde;->x([II)[I

    move-result-object v4

    iput-object v4, v7, Lxde;->N:[I

    if-ne v14, v6, :cond_f

    iget v2, v7, Lxde;->P:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x4

    iget v2, v7, Lxde;->M:I

    div-int/2addr v1, v2

    invoke-static {v4, v10, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    :cond_f
    if-ne v14, v9, :cond_12

    move v2, v10

    move v3, v2

    const/4 v4, 0x4

    :goto_2
    iget v5, v7, Lxde;->M:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_11

    iget-object v5, v7, Lxde;->N:[I

    aput v10, v5, v2

    :goto_3
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v7, v8, v5}, Lxde;->t(Ld9e;I)V

    invoke-virtual {v13}, Lu4h;->n()[B

    move-result-object v14

    aget-byte v4, v14, v4

    and-int/2addr v4, v15

    iget-object v14, v7, Lxde;->N:[I

    aget v17, v14, v2

    add-int v17, v17, v4

    aput v17, v14, v2

    if-eq v4, v15, :cond_10

    add-int v3, v3, v17

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_2

    :cond_10
    move v4, v5

    goto :goto_3

    :cond_11
    iget-object v2, v7, Lxde;->N:[I

    iget v14, v7, Lxde;->P:I

    sub-int/2addr v1, v14

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    aput v1, v2, v5

    goto :goto_1

    :cond_12
    if-ne v14, v2, :cond_1e

    move v2, v10

    move v5, v2

    const/4 v4, 0x4

    :goto_4
    iget v14, v7, Lxde;->M:I

    add-int/lit8 v14, v14, -0x1

    if-ge v2, v14, :cond_1a

    iget-object v14, v7, Lxde;->N:[I

    aput v10, v14, v2

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v7, v8, v14}, Lxde;->t(Ld9e;I)V

    invoke-virtual {v13}, Lu4h;->n()[B

    move-result-object v17

    aget-byte v17, v17, v4

    if-eqz v17, :cond_19

    move v6, v10

    :goto_5
    if-ge v6, v11, :cond_16

    rsub-int/lit8 v18, v6, 0x7

    shl-int v10, v9, v18

    invoke-virtual {v13}, Lu4h;->n()[B

    move-result-object v18

    aget-byte v18, v18, v4

    and-int v18, v18, v10

    if-eqz v18, :cond_15

    add-int/2addr v14, v6

    invoke-virtual {v7, v8, v14}, Lxde;->t(Ld9e;I)V

    invoke-virtual {v13}, Lu4h;->n()[B

    move-result-object v18

    add-int/lit8 v19, v4, 0x1

    aget-byte v4, v18, v4

    and-int/2addr v4, v15

    not-int v10, v10

    and-int/2addr v4, v10

    int-to-long v9, v4

    move/from16 v4, v19

    :goto_6
    if-ge v4, v14, :cond_13

    shl-long/2addr v9, v11

    invoke-virtual {v13}, Lu4h;->n()[B

    move-result-object v19

    add-int/lit8 v20, v4, 0x1

    aget-byte v4, v19, v4

    and-int/2addr v4, v15

    move-object/from16 v21, v12

    int-to-long v11, v4

    or-long/2addr v9, v11

    move/from16 v4, v20

    move-object/from16 v12, v21

    const/16 v11, 0x8

    goto :goto_6

    :cond_13
    move-object/from16 v21, v12

    if-lez v2, :cond_14

    mul-int/lit8 v6, v6, 0x7

    add-int/lit8 v6, v6, 0x6

    const-wide/16 v11, 0x1

    shl-long/2addr v11, v6

    const-wide/16 v22, -0x1

    add-long v11, v11, v22

    sub-long/2addr v9, v11

    :cond_14
    :goto_7
    move v4, v14

    goto :goto_8

    :cond_15
    move-object/from16 v21, v12

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    goto :goto_5

    :cond_16
    move-object/from16 v21, v12

    const-wide/16 v9, 0x0

    goto :goto_7

    :goto_8
    const-wide/32 v11, -0x80000000

    cmp-long v6, v9, v11

    if-ltz v6, :cond_18

    const-wide/32 v11, 0x7fffffff

    cmp-long v6, v9, v11

    if-gtz v6, :cond_18

    iget-object v6, v7, Lxde;->N:[I

    long-to-int v9, v9

    if-eqz v2, :cond_17

    add-int/lit8 v10, v2, -0x1

    aget v10, v6, v10

    add-int/2addr v9, v10

    :cond_17
    aput v9, v6, v2

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, v21

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    goto/16 :goto_4

    :cond_18
    const-string v0, "EBML lacing sample size out of range."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_19
    const-string v0, "No valid varint length mask found"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_1a
    move-object/from16 v21, v12

    iget-object v2, v7, Lxde;->N:[I

    iget v3, v7, Lxde;->P:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    sub-int/2addr v1, v5

    aput v1, v2, v14

    :goto_9
    invoke-virtual {v13}, Lu4h;->n()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    invoke-virtual {v13}, Lu4h;->n()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/2addr v2, v15

    iget-wide v3, v7, Lxde;->D:J

    or-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Lxde;->p(J)J

    move-result-wide v1

    add-long/2addr v3, v1

    iput-wide v3, v7, Lxde;->J:J

    move-object/from16 v9, v21

    iget v1, v9, Lvde;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1d

    invoke-virtual {v13}, Lu4h;->n()[B

    move-result-object v0

    aget-byte v0, v0, v2

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1c

    const/16 v0, 0xa3

    :cond_1b
    const/4 v1, 0x1

    goto :goto_a

    :cond_1c
    const/16 v0, 0xa3

    :cond_1d
    const/4 v1, 0x0

    :goto_a
    iput v1, v7, Lxde;->Q:I

    iput v2, v7, Lxde;->I:I

    const/4 v1, 0x0

    iput v1, v7, Lxde;->L:I

    const/16 v1, 0xa3

    goto :goto_b

    :cond_1e
    const-string v0, "Unexpected lacing value: 2"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_1f
    move-object v9, v12

    move v1, v5

    :goto_b
    if-ne v0, v1, :cond_21

    :goto_c
    iget v0, v7, Lxde;->L:I

    iget v1, v7, Lxde;->M:I

    if-ge v0, v1, :cond_20

    iget-object v1, v7, Lxde;->N:[I

    aget v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v7, v8, v9, v0, v1}, Lxde;->n(Ld9e;Lvde;IZ)I

    move-result v5

    iget-wide v0, v7, Lxde;->J:J

    iget v2, v7, Lxde;->L:I

    iget v3, v9, Lvde;->f:I

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, v7, Lxde;->Q:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lxde;->s(Lvde;JIII)V

    iget v0, v7, Lxde;->L:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lxde;->L:I

    goto :goto_c

    :cond_20
    const/4 v0, 0x0

    iput v0, v7, Lxde;->I:I

    return-void

    :cond_21
    const/4 v1, 0x1

    :goto_d
    iget v0, v7, Lxde;->L:I

    iget v2, v7, Lxde;->M:I

    if-ge v0, v2, :cond_22

    iget-object v2, v7, Lxde;->N:[I

    aget v3, v2, v0

    invoke-virtual {v7, v8, v9, v3, v1}, Lxde;->n(Ld9e;Lvde;IZ)I

    move-result v3

    aput v3, v2, v0

    iget v0, v7, Lxde;->L:I

    add-int/2addr v0, v1

    iput v0, v7, Lxde;->L:I

    goto :goto_d

    :cond_22
    :goto_e
    return-void
.end method

.method public final h(I)V
    .locals 18

    move-object/from16 v7, p0

    move/from16 v0, p1

    iget-object v1, v7, Lxde;->d0:Lf9e;

    invoke-static {v1}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa0

    const/4 v2, 0x2

    const/16 v3, 0x8

    const-string v4, "A_OPUS"

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v0, v1, :cond_15

    const/16 v1, 0xae

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eq v0, v1, :cond_12

    const/16 v1, 0x4dbb

    const-wide/16 v2, -0x1

    const v4, 0x1c53bb6b

    if-eq v0, v1, :cond_10

    const/16 v1, 0x6240

    if-eq v0, v1, :cond_e

    const/16 v1, 0x6d80

    if-eq v0, v1, :cond_c

    const v1, 0x1549a966

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v0, v1, :cond_a

    const v1, 0x1654ae6b

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-boolean v0, v7, Lxde;->x:Z

    if-nez v0, :cond_7

    iget-object v0, v7, Lxde;->d0:Lf9e;

    iget-object v1, v7, Lxde;->E:Lxsg;

    iget-object v4, v7, Lxde;->F:Lxsg;

    iget-wide v14, v7, Lxde;->r:J

    cmp-long v2, v14, v2

    if-eqz v2, :cond_6

    iget-wide v2, v7, Lxde;->u:J

    cmp-long v2, v2, v12

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lxsg;->a()I

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lxsg;->a()I

    move-result v2

    invoke-virtual {v1}, Lxsg;->a()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1}, Lxsg;->a()I

    move-result v2

    new-array v3, v2, [I

    new-array v5, v2, [J

    new-array v6, v2, [J

    new-array v12, v2, [J

    move v13, v9

    :goto_0
    if-ge v13, v2, :cond_2

    invoke-virtual {v1, v13}, Lxsg;->b(I)J

    move-result-wide v14

    aput-wide v14, v12, v13

    iget-wide v14, v7, Lxde;->r:J

    invoke-virtual {v4, v13}, Lxsg;->b(I)J

    move-result-wide v16

    add-long v14, v14, v16

    aput-wide v14, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v2, -0x1

    if-ge v9, v1, :cond_3

    add-int/lit8 v1, v9, 0x1

    aget-wide v13, v5, v1

    aget-wide v15, v5, v9

    sub-long/2addr v13, v15

    long-to-int v4, v13

    aput v4, v3, v9

    aget-wide v13, v12, v1

    aget-wide v15, v12, v9

    sub-long/2addr v13, v15

    aput-wide v13, v6, v9

    move v9, v1

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_2
    if-lez v2, :cond_4

    aget-wide v9, v12, v2

    iget-wide v13, v7, Lxde;->u:J

    cmp-long v4, v9, v13

    if-lez v4, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    iget-wide v9, v7, Lxde;->r:J

    iget-wide v13, v7, Lxde;->q:J

    add-long/2addr v9, v13

    aget-wide v13, v5, v2

    sub-long/2addr v9, v13

    long-to-int v4, v9

    aput v4, v3, v2

    iget-wide v9, v7, Lxde;->u:J

    aget-wide v13, v12, v2

    sub-long/2addr v9, v13

    aput-wide v9, v6, v2

    if-ge v2, v1, :cond_5

    const-string v1, "MatroskaExtractor"

    const-string v4, "Discarding trailing cue points with timestamps greater than total duration"

    invoke-static {v1, v4}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v2, v8

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    invoke-static {v12, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    :cond_5
    new-instance v1, Lk8e;

    invoke-direct {v1, v3, v5, v6, v12}, Lk8e;-><init>([I[J[J[J)V

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v1, Ljae;

    iget-wide v2, v7, Lxde;->u:J

    invoke-direct {v1, v2, v3, v5, v6}, Ljae;-><init>(JJ)V

    :goto_4
    invoke-interface {v0, v1}, Lf9e;->i(Lkae;)V

    iput-boolean v8, v7, Lxde;->x:Z

    :cond_7
    iput-object v11, v7, Lxde;->E:Lxsg;

    iput-object v11, v7, Lxde;->F:Lxsg;

    return-void

    :cond_8
    iget-object v0, v7, Lxde;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v7, Lxde;->d0:Lf9e;

    invoke-interface {v0}, Lf9e;->zzG()V

    return-void

    :cond_9
    const-string v0, "No valid tracks were found"

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_a
    iget-wide v0, v7, Lxde;->s:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_b

    const-wide/32 v0, 0xf4240

    iput-wide v0, v7, Lxde;->s:J

    :cond_b
    iget-wide v0, v7, Lxde;->t:J

    cmp-long v2, v0, v12

    if-eqz v2, :cond_1b

    invoke-virtual {v7, v0, v1}, Lxde;->p(J)J

    move-result-wide v0

    iput-wide v0, v7, Lxde;->u:J

    return-void

    :cond_c
    invoke-virtual/range {p0 .. p1}, Lxde;->r(I)V

    iget-object v0, v7, Lxde;->w:Lvde;

    iget-boolean v1, v0, Lvde;->i:Z

    if-eqz v1, :cond_1b

    iget-object v0, v0, Lvde;->j:[B

    if-nez v0, :cond_d

    goto/16 :goto_b

    :cond_d
    const-string v0, "Combining encryption and compression is not supported"

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_e
    invoke-virtual/range {p0 .. p1}, Lxde;->r(I)V

    iget-object v0, v7, Lxde;->w:Lvde;

    iget-boolean v1, v0, Lvde;->i:Z

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lvde;->k:Lqae;

    if-eqz v1, :cond_f

    new-instance v1, Lcom/google/android/gms/internal/ads/zzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzr;

    sget-object v3, Leui;->a:Ljava/util/UUID;

    iget-object v4, v7, Lxde;->w:Lvde;

    iget-object v4, v4, Lvde;->k:Lqae;

    iget-object v4, v4, Lqae;->b:[B

    const-string v5, "video/webm"

    invoke-direct {v2, v3, v11, v5, v4}, Lcom/google/android/gms/internal/ads/zzr;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    filled-new-array {v2}, [Lcom/google/android/gms/internal/ads/zzr;

    move-result-object v2

    invoke-direct {v1, v11, v2}, Lcom/google/android/gms/internal/ads/zzs;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzr;)V

    iput-object v1, v0, Lvde;->m:Lcom/google/android/gms/internal/ads/zzs;

    return-void

    :cond_f
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_10
    iget v0, v7, Lxde;->y:I

    if-eq v0, v10, :cond_11

    iget-wide v5, v7, Lxde;->z:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_11

    if-ne v0, v4, :cond_1b

    iput-wide v5, v7, Lxde;->B:J

    return-void

    :cond_11
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_12
    iget-object v0, v7, Lxde;->w:Lvde;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lvde;->c:Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0xb

    goto/16 :goto_6

    :sswitch_1
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x16

    goto/16 :goto_6

    :sswitch_2
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x11

    goto/16 :goto_6

    :sswitch_3
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x3

    goto/16 :goto_6

    :sswitch_4
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x1b

    goto/16 :goto_6

    :sswitch_5
    const-string v2, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x1d

    goto/16 :goto_6

    :sswitch_6
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v2, v3

    goto/16 :goto_6

    :sswitch_7
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x1c

    goto/16 :goto_6

    :sswitch_8
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x18

    goto/16 :goto_6

    :sswitch_9
    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x19

    goto/16 :goto_6

    :sswitch_a
    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x1a

    goto/16 :goto_6

    :sswitch_b
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x14

    goto/16 :goto_6

    :sswitch_c
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0xa

    goto/16 :goto_6

    :sswitch_d
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x1f

    goto/16 :goto_6

    :sswitch_e
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v2, v8

    goto/16 :goto_6

    :sswitch_f
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v2, v9

    goto/16 :goto_6

    :sswitch_10
    const-string v3, "V_AV1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_6

    :sswitch_11
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x13

    goto/16 :goto_6

    :sswitch_12
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x10

    goto/16 :goto_6

    :sswitch_13
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0xd

    goto/16 :goto_6

    :sswitch_14
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x15

    goto/16 :goto_6

    :sswitch_15
    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x1e

    goto/16 :goto_6

    :sswitch_16
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x7

    goto/16 :goto_6

    :sswitch_17
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x5

    goto/16 :goto_6

    :sswitch_18
    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x20

    goto :goto_6

    :sswitch_19
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x9

    goto :goto_6

    :sswitch_1a
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0xf

    goto :goto_6

    :sswitch_1b
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0xe

    goto :goto_6

    :sswitch_1c
    const-string v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0xc

    goto :goto_6

    :sswitch_1d
    const-string v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x12

    goto :goto_6

    :sswitch_1e
    const-string v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x17

    goto :goto_6

    :sswitch_1f
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x4

    goto :goto_6

    :sswitch_20
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x6

    goto :goto_6

    :cond_13
    :goto_5
    move v2, v10

    :goto_6
    packed-switch v2, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    iget-object v1, v7, Lxde;->d0:Lf9e;

    iget v2, v0, Lvde;->d:I

    invoke-virtual {v0, v1, v2}, Lvde;->e(Lf9e;I)V

    iget-object v1, v7, Lxde;->b:Landroid/util/SparseArray;

    iget v2, v0, Lvde;->d:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_7
    iput-object v11, v7, Lxde;->w:Lvde;

    return-void

    :cond_14
    const-string v0, "CodecId is missing in TrackEntry element"

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_15
    iget v0, v7, Lxde;->I:I

    if-ne v0, v2, :cond_1b

    iget-object v0, v7, Lxde;->b:Landroid/util/SparseArray;

    iget v1, v7, Lxde;->O:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lvde;

    invoke-static {v10}, Lvde;->d(Lvde;)V

    iget-wide v0, v7, Lxde;->T:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_16

    iget-object v0, v10, Lvde;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v7, Lxde;->o:Lu4h;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v7, Lxde;->T:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lu4h;->j([BI)V

    :cond_16
    move v0, v9

    move v1, v0

    :goto_8
    iget v2, v7, Lxde;->M:I

    if-ge v0, v2, :cond_17

    iget-object v2, v7, Lxde;->N:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    move v0, v9

    :goto_9
    iget v2, v7, Lxde;->M:I

    if-ge v0, v2, :cond_1a

    iget-wide v2, v7, Lxde;->J:J

    iget v4, v10, Lvde;->f:I

    mul-int/2addr v4, v0

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget v4, v7, Lxde;->Q:I

    if-nez v0, :cond_19

    iget-boolean v0, v7, Lxde;->S:Z

    if-nez v0, :cond_18

    or-int/lit8 v0, v4, 0x1

    move v4, v0

    :cond_18
    move v11, v9

    goto :goto_a

    :cond_19
    move v11, v0

    :goto_a
    iget-object v0, v7, Lxde;->N:[I

    aget v5, v0, v11

    sub-int v12, v1, v5

    move-object/from16 v0, p0

    move-object v1, v10

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lxde;->s(Lvde;JIII)V

    add-int/lit8 v0, v11, 0x1

    move v1, v12

    goto :goto_9

    :cond_1a
    iput v9, v7, Lxde;->I:I

    :cond_1b
    :goto_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_0
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->w:F

    return-void

    :pswitch_1
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->v:F

    return-void

    :pswitch_2
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->u:F

    return-void

    :pswitch_3
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->O:F

    return-void

    :pswitch_4
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->N:F

    return-void

    :pswitch_5
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->M:F

    return-void

    :pswitch_6
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->L:F

    return-void

    :pswitch_7
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->K:F

    return-void

    :pswitch_8
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->J:F

    return-void

    :pswitch_9
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->I:F

    return-void

    :pswitch_a
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->H:F

    return-void

    :pswitch_b
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->G:F

    return-void

    :pswitch_c
    double-to-float p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->F:F

    return-void

    :cond_0
    double-to-long p1, p2

    iput-wide p1, p0, Lxde;->t:J

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    double-to-int p1, p2

    iput p1, p0, Lvde;->S:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(IJ)V
    .locals 8

    const/16 v0, 0x5031

    const/4 v1, 0x0

    const-string v2, " not supported"

    if-eq p1, v0, :cond_13

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->E:I

    return-void

    :pswitch_1
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->D:I

    return-void

    :pswitch_2
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p1, p0, Lxde;->w:Lvde;

    iput-boolean v7, p1, Lvde;->z:Z

    invoke-static {p2}, Lh6j;->a(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p1, p0, Lvde;->A:I

    return-void

    :pswitch_3
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    invoke-static {p2}, Lh6j;->b(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p1, p0, Lvde;->B:I

    return-void

    :pswitch_4
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    if-eq p2, v7, :cond_1

    if-eq p2, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, Lxde;->w:Lvde;

    iput v7, p0, Lvde;->C:I

    return-void

    :cond_1
    iget-object p0, p0, Lxde;->w:Lvde;

    iput v6, p0, Lvde;->C:I

    return-void

    :sswitch_0
    iput-wide p2, p0, Lxde;->s:J

    return-void

    :sswitch_1
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->f:I

    return-void

    :sswitch_2
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    if-eqz p2, :cond_5

    if-eq p2, v7, :cond_4

    if-eq p2, v6, :cond_3

    if-eq p2, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lxde;->w:Lvde;

    iput v5, p0, Lvde;->t:I

    return-void

    :cond_3
    iget-object p0, p0, Lxde;->w:Lvde;

    iput v6, p0, Lvde;->t:I

    return-void

    :cond_4
    iget-object p0, p0, Lxde;->w:Lvde;

    iput v7, p0, Lvde;->t:I

    return-void

    :cond_5
    iget-object p0, p0, Lxde;->w:Lvde;

    iput v0, p0, Lvde;->t:I

    return-void

    :sswitch_3
    iput-wide p2, p0, Lxde;->T:J

    return-void

    :sswitch_4
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->R:I

    return-void

    :sswitch_5
    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput-wide p2, p0, Lvde;->U:J

    return-void

    :sswitch_6
    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput-wide p2, p0, Lvde;->T:J

    return-void

    :sswitch_7
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->g:I

    return-void

    :sswitch_8
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput-boolean v7, p0, Lvde;->z:Z

    iput p2, p0, Lvde;->p:I

    return-void

    :sswitch_9
    cmp-long p2, p2, v3

    if-nez p2, :cond_6

    move v0, v7

    :cond_6
    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput-boolean v0, p0, Lvde;->W:Z

    return-void

    :sswitch_a
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->r:I

    return-void

    :sswitch_b
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->s:I

    return-void

    :sswitch_c
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->q:I

    return-void

    :sswitch_d
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    if-eqz p2, :cond_a

    if-eq p2, v7, :cond_9

    if-eq p2, v5, :cond_8

    const/16 p1, 0xf

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object p0, p0, Lxde;->w:Lvde;

    iput v5, p0, Lvde;->y:I

    return-void

    :cond_8
    iget-object p0, p0, Lxde;->w:Lvde;

    iput v7, p0, Lvde;->y:I

    return-void

    :cond_9
    iget-object p0, p0, Lxde;->w:Lvde;

    iput v6, p0, Lvde;->y:I

    return-void

    :cond_a
    iget-object p0, p0, Lxde;->w:Lvde;

    iput v0, p0, Lvde;->y:I

    return-void

    :sswitch_e
    iget-wide v0, p0, Lxde;->r:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lxde;->z:J

    return-void

    :sswitch_f
    cmp-long p0, p2, v3

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "AESSettingsCipherMode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :sswitch_10
    const-wide/16 p0, 0x5

    cmp-long p0, p2, p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ContentEncAlgo "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :sswitch_11
    cmp-long p0, p2, v3

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "EBMLReadVersion "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :sswitch_12
    cmp-long p0, p2, v3

    if-ltz p0, :cond_e

    const-wide/16 p0, 0x2

    cmp-long p0, p2, p0

    if-gtz p0, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "DocTypeReadVersion "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :sswitch_13
    const-wide/16 p0, 0x3

    cmp-long p0, p2, p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ContentCompAlgo "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :sswitch_14
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    invoke-static {p0, p2}, Lvde;->b(Lvde;I)V

    return-void

    :sswitch_15
    iput-boolean v7, p0, Lxde;->S:Z

    return-void

    :sswitch_16
    iget-boolean v0, p0, Lxde;->G:Z

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Lxde;->q(I)V

    iget-object p1, p0, Lxde;->F:Lxsg;

    invoke-virtual {p1, p2, p3}, Lxsg;->c(J)V

    iput-boolean v7, p0, Lxde;->G:Z

    return-void

    :sswitch_17
    long-to-int p1, p2

    iput p1, p0, Lxde;->R:I

    return-void

    :sswitch_18
    invoke-virtual {p0, p2, p3}, Lxde;->p(J)J

    move-result-wide p1

    iput-wide p1, p0, Lxde;->D:J

    return-void

    :sswitch_19
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->d:I

    return-void

    :sswitch_1a
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->o:I

    return-void

    :sswitch_1b
    invoke-virtual {p0, p1}, Lxde;->q(I)V

    iget-object p1, p0, Lxde;->E:Lxsg;

    invoke-virtual {p0, p2, p3}, Lxde;->p(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lxsg;->c(J)V

    return-void

    :sswitch_1c
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->n:I

    return-void

    :sswitch_1d
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->Q:I

    return-void

    :sswitch_1e
    invoke-virtual {p0, p2, p3}, Lxde;->p(J)J

    move-result-wide p1

    iput-wide p1, p0, Lxde;->K:J

    return-void

    :sswitch_1f
    cmp-long p2, p2, v3

    if-nez p2, :cond_10

    move v0, v7

    :cond_10
    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput-boolean v0, p0, Lvde;->X:Z

    return-void

    :sswitch_20
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput p2, p0, Lvde;->e:I

    return-void

    :cond_11
    cmp-long p0, p2, v3

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ContentEncodingScope "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_13
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-nez p0, :cond_15

    :cond_14
    :goto_0
    return-void

    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ContentEncodingOrder "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf1 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(IJJ)V
    .locals 6

    iget-object v0, p0, Lxde;->d0:Lf9e;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eq p1, v0, :cond_c

    const/16 v0, 0xae

    if-eq p1, v0, :cond_b

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_a

    const/16 v0, 0x4dbb

    const-wide/16 v4, -0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x5035

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_7

    const v0, 0x18538067

    if-eq p1, v0, :cond_4

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_3

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lxde;->x:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lxde;->c:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lxde;->B:J

    cmp-long p1, p1, v4

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lxde;->A:Z

    return-void

    :cond_1
    iget-object p1, p0, Lxde;->d0:Lf9e;

    new-instance p2, Ljae;

    iget-wide p3, p0, Lxde;->u:J

    invoke-direct {p2, p3, p4, v2, v3}, Ljae;-><init>(JJ)V

    invoke-interface {p1, p2}, Lf9e;->i(Lkae;)V

    iput-boolean v1, p0, Lxde;->x:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lxsg;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lxsg;-><init>(I)V

    iput-object p1, p0, Lxde;->E:Lxsg;

    new-instance p1, Lxsg;

    invoke-direct {p1, p2}, Lxsg;-><init>(I)V

    iput-object p1, p0, Lxde;->F:Lxsg;

    return-void

    :cond_4
    iget-wide v0, p0, Lxde;->r:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_6

    cmp-long p1, v0, p2

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const-string p0, "Multiple Segment elements not supported"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_6
    :goto_1
    iput-wide p2, p0, Lxde;->r:J

    iput-wide p4, p0, Lxde;->q:J

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput-boolean v1, p0, Lvde;->z:Z

    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput-boolean v1, p0, Lvde;->i:Z

    return-void

    :cond_9
    const/4 p1, -0x1

    iput p1, p0, Lxde;->y:I

    iput-wide v4, p0, Lxde;->z:J

    return-void

    :cond_a
    iput-boolean v1, p0, Lxde;->G:Z

    return-void

    :cond_b
    new-instance p1, Lvde;

    invoke-direct {p1}, Lvde;-><init>()V

    iput-object p1, p0, Lxde;->w:Lvde;

    iget-boolean p0, p0, Lxde;->v:Z

    iput-boolean p0, p1, Lvde;->a:Z

    return-void

    :cond_c
    iput-boolean v1, p0, Lxde;->S:Z

    iput-wide v2, p0, Lxde;->T:J

    return-void
.end method

.method public final l(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x86

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    invoke-static {p0, p2}, Lvde;->c(Lvde;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput-object p2, p0, Lvde;->b:Ljava/lang/String;

    return-void

    :cond_2
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "DocType "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_4
    :goto_0
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lxde;->v:Z

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lxde;->r(I)V

    iget-object p0, p0, Lxde;->w:Lvde;

    iput-object p2, p0, Lvde;->c:Ljava/lang/String;

    return-void
.end method

.method public final n(Ld9e;Lvde;IZ)I
    .locals 11

    iget-object v0, p2, Lvde;->c:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lxde;->f0:[B

    invoke-virtual {p0, p1, p2, p3}, Lxde;->v(Ld9e;[BI)V

    iget p1, p0, Lxde;->V:I

    invoke-virtual {p0}, Lxde;->u()V

    return p1

    :cond_0
    iget-object v0, p2, Lvde;->c:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lxde;->h0:[B

    invoke-virtual {p0, p1, p2, p3}, Lxde;->v(Ld9e;[BI)V

    iget p1, p0, Lxde;->V:I

    invoke-virtual {p0}, Lxde;->u()V

    return p1

    :cond_1
    iget-object v0, p2, Lvde;->c:Ljava/lang/String;

    const-string v1, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lxde;->i0:[B

    invoke-virtual {p0, p1, p2, p3}, Lxde;->v(Ld9e;[BI)V

    iget p1, p0, Lxde;->V:I

    invoke-virtual {p0}, Lxde;->u()V

    return p1

    :cond_2
    iget-object v0, p2, Lvde;->Z:Lrae;

    iget-boolean v1, p0, Lxde;->X:Z

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_11

    iget-boolean v1, p2, Lvde;->i:Z

    if-eqz v1, :cond_d

    iget v1, p0, Lxde;->Q:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lxde;->Q:I

    iget-boolean v1, p0, Lxde;->Y:Z

    const/16 v6, 0x80

    if-nez v1, :cond_4

    iget-object v1, p0, Lxde;->h:Lu4h;

    invoke-virtual {v1}, Lu4h;->n()[B

    move-result-object v7

    invoke-interface {p1, v7, v5, v4}, Ld9e;->h([BII)V

    iget v7, p0, Lxde;->U:I

    add-int/2addr v7, v4

    iput v7, p0, Lxde;->U:I

    invoke-virtual {v1}, Lu4h;->n()[B

    move-result-object v7

    aget-byte v7, v7, v5

    and-int/2addr v7, v6

    if-eq v7, v6, :cond_3

    invoke-virtual {v1}, Lu4h;->n()[B

    move-result-object v1

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lxde;->b0:B

    iput-boolean v4, p0, Lxde;->Y:Z

    goto :goto_0

    :cond_3
    const-string p0, "Extension bit is set in signal byte"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_4
    :goto_0
    iget-byte v1, p0, Lxde;->b0:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_e

    and-int/2addr v1, v2

    iget v7, p0, Lxde;->Q:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lxde;->Q:I

    iget-boolean v7, p0, Lxde;->c0:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lxde;->m:Lu4h;

    invoke-virtual {v7}, Lu4h;->n()[B

    move-result-object v8

    const/16 v9, 0x8

    invoke-interface {p1, v8, v5, v9}, Ld9e;->h([BII)V

    iget v8, p0, Lxde;->U:I

    add-int/2addr v8, v9

    iput v8, p0, Lxde;->U:I

    iput-boolean v4, p0, Lxde;->c0:Z

    iget-object v8, p0, Lxde;->h:Lu4h;

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    move v6, v5

    :goto_1
    or-int/2addr v6, v9

    invoke-virtual {v8}, Lu4h;->n()[B

    move-result-object v10

    int-to-byte v6, v6

    aput-byte v6, v10, v5

    invoke-virtual {v8, v5}, Lu4h;->l(I)V

    invoke-interface {v0, v8, v4, v4}, Lrae;->b(Lu4h;II)V

    iget v6, p0, Lxde;->V:I

    add-int/2addr v6, v4

    iput v6, p0, Lxde;->V:I

    invoke-virtual {v7, v5}, Lu4h;->l(I)V

    invoke-interface {v0, v7, v9, v4}, Lrae;->b(Lu4h;II)V

    iget v6, p0, Lxde;->V:I

    add-int/2addr v6, v9

    iput v6, p0, Lxde;->V:I

    :cond_6
    if-ne v1, v2, :cond_e

    iget-boolean v1, p0, Lxde;->Z:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lxde;->h:Lu4h;

    invoke-virtual {v1}, Lu4h;->n()[B

    move-result-object v6

    invoke-interface {p1, v6, v5, v4}, Ld9e;->h([BII)V

    iget v6, p0, Lxde;->U:I

    add-int/2addr v6, v4

    iput v6, p0, Lxde;->U:I

    invoke-virtual {v1, v5}, Lu4h;->l(I)V

    invoke-virtual {v1}, Lu4h;->G()I

    move-result v1

    iput v1, p0, Lxde;->a0:I

    iput-boolean v4, p0, Lxde;->Z:Z

    :cond_7
    iget v1, p0, Lxde;->a0:I

    mul-int/2addr v1, v3

    iget-object v6, p0, Lxde;->h:Lu4h;

    invoke-virtual {v6, v1}, Lu4h;->i(I)V

    invoke-virtual {v6}, Lu4h;->n()[B

    move-result-object v7

    invoke-interface {p1, v7, v5, v1}, Ld9e;->h([BII)V

    iget v7, p0, Lxde;->U:I

    add-int/2addr v7, v1

    iput v7, p0, Lxde;->U:I

    iget v1, p0, Lxde;->a0:I

    shr-int/2addr v1, v4

    add-int/2addr v1, v4

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v2

    iget-object v8, p0, Lxde;->p:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    if-ge v8, v7, :cond_9

    :cond_8
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lxde;->p:Ljava/nio/ByteBuffer;

    :cond_9
    int-to-short v1, v1

    iget-object v8, p0, Lxde;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, p0, Lxde;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v1, v5

    move v8, v1

    :goto_2
    iget v9, p0, Lxde;->a0:I

    if-ge v1, v9, :cond_b

    invoke-virtual {v6}, Lu4h;->J()I

    move-result v9

    sub-int v8, v9, v8

    rem-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_a

    iget-object v10, p0, Lxde;->p:Ljava/nio/ByteBuffer;

    int-to-short v8, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_a
    iget-object v10, p0, Lxde;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v8, v9

    goto :goto_2

    :cond_b
    iget v1, p0, Lxde;->U:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v8

    and-int/lit8 v6, v9, 0x1

    if-ne v6, v4, :cond_c

    iget-object v6, p0, Lxde;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_c
    iget-object v6, p0, Lxde;->p:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lxde;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    iget-object v1, p0, Lxde;->n:Lu4h;

    iget-object v6, p0, Lxde;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Lu4h;->j([BI)V

    invoke-interface {v0, v1, v7, v4}, Lrae;->b(Lu4h;II)V

    iget v1, p0, Lxde;->V:I

    add-int/2addr v1, v7

    iput v1, p0, Lxde;->V:I

    goto :goto_5

    :cond_d
    iget-object v1, p2, Lvde;->j:[B

    if-eqz v1, :cond_e

    iget-object v6, p0, Lxde;->k:Lu4h;

    array-length v7, v1

    invoke-virtual {v6, v1, v7}, Lu4h;->j([BI)V

    :cond_e
    :goto_5
    iget-object v1, p2, Lvde;->c:Ljava/lang/String;

    const-string v6, "A_OPUS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz p4, :cond_10

    goto :goto_6

    :cond_f
    iget p4, p2, Lvde;->g:I

    if-lez p4, :cond_10

    :goto_6
    iget p4, p0, Lxde;->Q:I

    const/high16 v1, 0x10000000

    or-int/2addr p4, v1

    iput p4, p0, Lxde;->Q:I

    iget-object p4, p0, Lxde;->o:Lu4h;

    invoke-virtual {p4, v5}, Lu4h;->i(I)V

    iget-object p4, p0, Lxde;->k:Lu4h;

    invoke-virtual {p4}, Lu4h;->x()I

    move-result p4

    add-int/2addr p4, p3

    iget v1, p0, Lxde;->U:I

    sub-int/2addr p4, v1

    iget-object v1, p0, Lxde;->h:Lu4h;

    invoke-virtual {v1, v3}, Lu4h;->i(I)V

    shr-int/lit8 v6, p4, 0x18

    invoke-virtual {v1}, Lu4h;->n()[B

    move-result-object v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    invoke-virtual {v1}, Lu4h;->n()[B

    move-result-object v6

    shr-int/lit8 v7, p4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    shr-int/lit8 v6, p4, 0x8

    invoke-virtual {v1}, Lu4h;->n()[B

    move-result-object v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v2

    invoke-virtual {v1}, Lu4h;->n()[B

    move-result-object v6

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    const/4 v7, 0x3

    aput-byte p4, v6, v7

    invoke-interface {v0, v1, v3, v2}, Lrae;->b(Lu4h;II)V

    iget p4, p0, Lxde;->V:I

    add-int/2addr p4, v3

    iput p4, p0, Lxde;->V:I

    :cond_10
    iput-boolean v4, p0, Lxde;->X:Z

    :cond_11
    iget-object p4, p0, Lxde;->k:Lu4h;

    invoke-virtual {p4}, Lu4h;->x()I

    move-result v1

    add-int/2addr p3, v1

    iget-object v1, p2, Lvde;->c:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p2, Lvde;->c:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_9

    :cond_12
    iget-object v1, p2, Lvde;->V:Lsae;

    if-nez v1, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {p4}, Lu4h;->x()I

    move-result p4

    if-nez p4, :cond_14

    goto :goto_7

    :cond_14
    move v4, v5

    :goto_7
    invoke-static {v4}, Ln7g;->f(Z)V

    iget-object p4, p2, Lvde;->V:Lsae;

    invoke-virtual {p4, p1}, Lsae;->d(Ld9e;)V

    :goto_8
    iget p4, p0, Lxde;->U:I

    if-ge p4, p3, :cond_18

    sub-int p4, p3, p4

    invoke-virtual {p0, p1, v0, p4}, Lxde;->o(Ld9e;Lrae;I)I

    move-result p4

    iget v1, p0, Lxde;->U:I

    add-int/2addr v1, p4

    iput v1, p0, Lxde;->U:I

    iget v1, p0, Lxde;->V:I

    add-int/2addr v1, p4

    iput v1, p0, Lxde;->V:I

    goto :goto_8

    :cond_15
    :goto_9
    iget-object v1, p0, Lxde;->g:Lu4h;

    invoke-virtual {v1}, Lu4h;->n()[B

    move-result-object v6

    aput-byte v5, v6, v5

    aput-byte v5, v6, v4

    aput-byte v5, v6, v2

    iget v2, p2, Lvde;->a0:I

    rsub-int/lit8 v4, v2, 0x4

    :goto_a
    iget v7, p0, Lxde;->U:I

    if-ge v7, p3, :cond_18

    iget v7, p0, Lxde;->W:I

    if-nez v7, :cond_17

    invoke-virtual {p4}, Lu4h;->u()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v8, v4, v7

    sub-int v9, v2, v7

    invoke-interface {p1, v6, v8, v9}, Ld9e;->h([BII)V

    if-lez v7, :cond_16

    invoke-virtual {p4, v6, v4, v7}, Lu4h;->h([BII)V

    :cond_16
    iget v7, p0, Lxde;->U:I

    add-int/2addr v7, v2

    iput v7, p0, Lxde;->U:I

    invoke-virtual {v1, v5}, Lu4h;->l(I)V

    invoke-virtual {v1}, Lu4h;->J()I

    move-result v7

    iput v7, p0, Lxde;->W:I

    iget-object v7, p0, Lxde;->f:Lu4h;

    invoke-virtual {v7, v5}, Lu4h;->l(I)V

    invoke-interface {v0, v7, v3}, Lrae;->d(Lu4h;I)V

    iget v7, p0, Lxde;->V:I

    add-int/2addr v7, v3

    iput v7, p0, Lxde;->V:I

    goto :goto_a

    :cond_17
    invoke-virtual {p0, p1, v0, v7}, Lxde;->o(Ld9e;Lrae;I)I

    move-result v7

    iget v8, p0, Lxde;->U:I

    add-int/2addr v8, v7

    iput v8, p0, Lxde;->U:I

    iget v8, p0, Lxde;->V:I

    add-int/2addr v8, v7

    iput v8, p0, Lxde;->V:I

    iget v8, p0, Lxde;->W:I

    sub-int/2addr v8, v7

    iput v8, p0, Lxde;->W:I

    goto :goto_a

    :cond_18
    iget-object p1, p2, Lvde;->c:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lxde;->i:Lu4h;

    invoke-virtual {p1, v5}, Lu4h;->l(I)V

    invoke-interface {v0, p1, v3}, Lrae;->d(Lu4h;I)V

    iget p1, p0, Lxde;->V:I

    add-int/2addr p1, v3

    iput p1, p0, Lxde;->V:I

    :cond_19
    iget p1, p0, Lxde;->V:I

    invoke-virtual {p0}, Lxde;->u()V

    return p1
.end method

.method public final o(Ld9e;Lrae;I)I
    .locals 1

    iget-object p0, p0, Lxde;->k:Lu4h;

    invoke-virtual {p0}, Lu4h;->u()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {p2, p0, p1}, Lrae;->d(Lu4h;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p2, p1, p3, p0}, Lrae;->a(Lk8j;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final p(J)J
    .locals 7

    iget-wide v2, p0, Lxde;->s:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string p0, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method

.method public final q(I)V
    .locals 1

    iget-object v0, p0, Lxde;->E:Lxsg;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lxde;->F:Lxsg;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Element "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method

.method public final r(I)V
    .locals 1

    iget-object p0, p0, Lxde;->w:Lvde;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Element "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method

.method public final s(Lvde;JIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lvde;->V:Lsae;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    iget-object v3, v1, Lvde;->Z:Lrae;

    iget-object v8, v1, Lvde;->k:Lqae;

    move-object v1, v2

    move-object v2, v3

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lsae;->c(Lrae;JIIILqae;)V

    goto/16 :goto_8

    :cond_0
    iget-object v2, v1, Lvde;->c:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "S_TEXT/WEBVTT"

    const-string v5, "S_TEXT/ASS"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v2, :cond_1

    iget-object v2, v1, Lvde;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lvde;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget v2, v0, Lxde;->M:I

    const-string v8, "MatroskaExtractor"

    if-le v2, v9, :cond_2

    const-string v2, "Skipping subtitle sample in laced block."

    invoke-static {v8, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v10, v0, Lxde;->K:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v10, v12

    if-nez v2, :cond_4

    const-string v2, "Skipping subtitle sample with no duration."

    invoke-static {v8, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move/from16 v2, p5

    goto/16 :goto_6

    :cond_4
    iget-object v2, v1, Lvde;->c:Ljava/lang/String;

    iget-object v8, v0, Lxde;->l:Lu4h;

    invoke-virtual {v8}, Lu4h;->n()[B

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, 0x2c0618eb

    if-eq v13, v14, :cond_7

    const v5, 0x3e4ca2d8

    if-eq v13, v5, :cond_6

    const v4, 0x54c61e47

    if-eq v13, v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v7

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v6

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v9

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_b

    if-eq v2, v9, :cond_a

    if-ne v2, v6, :cond_9

    const-string v2, "%02d:%02d:%02d.%03d"

    invoke-static {v10, v11, v2, v3, v4}, Lxde;->w(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x19

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_a
    const-string v2, "%01d:%02d:%02d:%02d"

    const-wide/16 v3, 0x2710

    invoke-static {v10, v11, v2, v3, v4}, Lxde;->w(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x15

    goto :goto_3

    :cond_b
    const-string v2, "%02d:%02d:%02d,%03d"

    invoke-static {v10, v11, v2, v3, v4}, Lxde;->w(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x13

    :goto_3
    array-length v4, v2

    invoke-static {v2, v7, v12, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v8}, Lu4h;->w()I

    move-result v2

    :goto_4
    invoke-virtual {v8}, Lu4h;->x()I

    move-result v3

    if-ge v2, v3, :cond_d

    invoke-virtual {v8}, Lu4h;->n()[B

    move-result-object v3

    aget-byte v3, v3, v2

    if-nez v3, :cond_c

    invoke-virtual {v8, v2}, Lu4h;->k(I)V

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    iget-object v2, v1, Lvde;->Z:Lrae;

    invoke-virtual {v8}, Lu4h;->x()I

    move-result v3

    invoke-interface {v2, v8, v3}, Lrae;->d(Lu4h;I)V

    invoke-virtual {v8}, Lu4h;->x()I

    move-result v2

    add-int v2, p5, v2

    :goto_6
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_f

    iget v3, v0, Lxde;->M:I

    if-le v3, v9, :cond_e

    iget-object v3, v0, Lxde;->o:Lu4h;

    invoke-virtual {v3, v7}, Lu4h;->i(I)V

    goto :goto_7

    :cond_e
    iget-object v3, v0, Lxde;->o:Lu4h;

    invoke-virtual {v3}, Lu4h;->x()I

    move-result v4

    iget-object v5, v1, Lvde;->Z:Lrae;

    invoke-interface {v5, v3, v4, v6}, Lrae;->b(Lu4h;II)V

    add-int/2addr v2, v4

    :cond_f
    :goto_7
    move v14, v2

    iget-object v10, v1, Lvde;->Z:Lrae;

    iget-object v1, v1, Lvde;->k:Lqae;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lrae;->g(JIIILqae;)V

    :goto_8
    iput-boolean v9, v0, Lxde;->H:Z

    return-void
.end method

.method public final t(Ld9e;I)V
    .locals 3

    iget-object p0, p0, Lxde;->h:Lu4h;

    invoke-virtual {p0}, Lu4h;->x()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lu4h;->v()I

    move-result v0

    if-ge v0, p2, :cond_1

    invoke-virtual {p0}, Lu4h;->v()I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lu4h;->f(I)V

    :cond_1
    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v0

    invoke-virtual {p0}, Lu4h;->x()I

    move-result v1

    invoke-virtual {p0}, Lu4h;->x()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Ld9e;->h([BII)V

    invoke-virtual {p0, p2}, Lu4h;->k(I)V

    return-void
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lxde;->U:I

    iput v0, p0, Lxde;->V:I

    iput v0, p0, Lxde;->W:I

    iput-boolean v0, p0, Lxde;->X:Z

    iput-boolean v0, p0, Lxde;->Y:Z

    iput-boolean v0, p0, Lxde;->Z:Z

    iput v0, p0, Lxde;->a0:I

    iput-byte v0, p0, Lxde;->b0:B

    iput-boolean v0, p0, Lxde;->c0:Z

    iget-object p0, p0, Lxde;->k:Lu4h;

    invoke-virtual {p0, v0}, Lu4h;->i(I)V

    return-void
.end method

.method public final v(Ld9e;[BI)V
    .locals 4

    array-length v0, p2

    add-int v1, v0, p3

    iget-object p0, p0, Lxde;->l:Lu4h;

    invoke-virtual {p0}, Lu4h;->v()I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    add-int v2, v1, p3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    array-length v2, p2

    invoke-virtual {p0, p2, v2}, Lu4h;->j([BI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v2

    invoke-static {p2, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object p2

    invoke-interface {p1, p2, v0, p3}, Ld9e;->h([BII)V

    invoke-virtual {p0, v3}, Lu4h;->l(I)V

    invoke-virtual {p0, v1}, Lu4h;->k(I)V

    return-void
.end method

.method public final synthetic zzc()Lc9e;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method
