.class public final Lgfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# static fields
.field public static final J:[B

.field public static final K:Lerj;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Z

.field public E:Z

.field public F:Lf9e;

.field public G:[Lrae;

.field public H:[Lrae;

.field public I:Z

.field public final a:Lvge;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Landroid/util/SparseArray;

.field public final e:Lu4h;

.field public final f:Lu4h;

.field public final g:Lu4h;

.field public final h:[B

.field public final i:Lu4h;

.field public final j:Lkce;

.field public final k:Lu4h;

.field public final l:Ljava/util/ArrayDeque;

.field public final m:Ljava/util/ArrayDeque;

.field public final n:Lz2i;

.field public o:Lcom/google/android/gms/internal/ads/zzfww;

.field public p:I

.field public q:I

.field public r:J

.field public s:I

.field public t:Lu4h;

.field public u:J

.field public v:I

.field public w:J

.field public x:J

.field public y:J

.field public z:Lffe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lgfe;->J:[B

    new-instance v0, Lgpj;

    invoke-direct {v0}, Lgpj;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object v0

    sput-object v0, Lgfe;->K:Lerj;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(Lvge;ILfch;Lsfe;Ljava/util/List;Lrae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfe;->a:Lvge;

    iput p2, p0, Lgfe;->b:I

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgfe;->c:Ljava/util/List;

    new-instance p1, Lkce;

    invoke-direct {p1}, Lkce;-><init>()V

    iput-object p1, p0, Lgfe;->j:Lkce;

    new-instance p1, Lu4h;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lgfe;->k:Lu4h;

    new-instance p1, Lu4h;

    sget-object p3, Ljzh;->a:[B

    invoke-direct {p1, p3}, Lu4h;-><init>([B)V

    iput-object p1, p0, Lgfe;->e:Lu4h;

    new-instance p1, Lu4h;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lgfe;->f:Lu4h;

    new-instance p1, Lu4h;

    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lgfe;->g:Lu4h;

    new-array p1, p2, [B

    iput-object p1, p0, Lgfe;->h:[B

    new-instance p2, Lu4h;

    invoke-direct {p2, p1}, Lu4h;-><init>([B)V

    iput-object p2, p0, Lgfe;->i:Lu4h;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lgfe;->l:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lgfe;->m:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lgfe;->d:Landroid/util/SparseArray;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lgfe;->o:Lcom/google/android/gms/internal/ads/zzfww;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lgfe;->x:J

    iput-wide p1, p0, Lgfe;->w:J

    iput-wide p1, p0, Lgfe;->y:J

    sget-object p1, Lf9e;->C6:Lf9e;

    iput-object p1, p0, Lgfe;->F:Lf9e;

    const/4 p1, 0x0

    new-array p2, p1, [Lrae;

    iput-object p2, p0, Lgfe;->G:[Lrae;

    new-array p1, p1, [Lrae;

    iput-object p1, p0, Lgfe;->H:[Lrae;

    new-instance p1, Lz2i;

    new-instance p2, Ldfe;

    invoke-direct {p2, p0}, Ldfe;-><init>(Lgfe;)V

    invoke-direct {p1, p2}, Lz2i;-><init>(Lb2i;)V

    iput-object p1, p0, Lgfe;->n:Lz2i;

    return-void
.end method

.method public static synthetic a(Lgfe;JLu4h;)V
    .locals 0

    iget-object p0, p0, Lgfe;->H:[Lrae;

    invoke-static {p1, p2, p3, p0}, Lj8e;->a(JLu4h;[Lrae;)V

    return-void
.end method

.method public static c(I)I
    .locals 2

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method

.method public static g(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;
    .locals 18

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_b

    move-object/from16 v5, p0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkjh;

    iget v7, v6, Lrlh;->a:I

    const v8, 0x70737368    # 3.013775E29f

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v6, v6, Lkjh;->b:Lu4h;

    invoke-virtual {v6}, Lu4h;->n()[B

    move-result-object v6

    new-instance v7, Lu4h;

    invoke-direct {v7, v6}, Lu4h;-><init>([B)V

    invoke-virtual {v7}, Lu4h;->x()I

    move-result v9

    const/16 v10, 0x20

    if-ge v9, v10, :cond_1

    :goto_1
    move/from16 v16, v3

    move-object/from16 v17, v4

    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v7, v1}, Lu4h;->l(I)V

    invoke-virtual {v7}, Lu4h;->u()I

    move-result v9

    invoke-virtual {v7}, Lu4h;->A()I

    move-result v10

    const-string v11, "PsshAtomUtil"

    if-eq v10, v9, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Advertised atom size ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") does not match buffer size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lu4h;->A()I

    move-result v9

    if-eq v9, v8, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Atom type is not pssh: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lu4h;->A()I

    move-result v8

    invoke-static {v8}, Lafe;->a(I)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported pssh version: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v10, Ljava/util/UUID;

    invoke-virtual {v7}, Lu4h;->N()J

    move-result-wide v12

    invoke-virtual {v7}, Lu4h;->N()J

    move-result-wide v14

    invoke-direct {v10, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v8, v9, :cond_6

    invoke-virtual {v7}, Lu4h;->J()I

    move-result v9

    new-array v12, v9, [Ljava/util/UUID;

    move v13, v1

    :goto_3
    if-ge v13, v9, :cond_5

    new-instance v14, Ljava/util/UUID;

    move/from16 v16, v3

    invoke-virtual {v7}, Lu4h;->N()J

    move-result-wide v2

    move-object/from16 v17, v4

    invoke-virtual {v7}, Lu4h;->N()J

    move-result-wide v4

    invoke-direct {v14, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p0

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_3

    :cond_5
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_4

    :cond_6
    move/from16 v16, v3

    move-object/from16 v17, v4

    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v7}, Lu4h;->J()I

    move-result v2

    invoke-virtual {v7}, Lu4h;->u()I

    move-result v3

    if-eq v2, v3, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Atom data size ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") does not match the bytes left: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    new-array v3, v2, [B

    invoke-virtual {v7, v3, v1, v2}, Lu4h;->h([BII)V

    new-instance v2, Lofe;

    invoke-direct {v2, v10, v8, v3, v12}, Lofe;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    :goto_5
    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    iget-object v2, v2, Lofe;->a:Ljava/util/UUID;

    :goto_6
    if-nez v2, :cond_9

    const-string v2, "FragmentedMp4Extractor"

    const-string v3, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v2, v3}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v17

    goto :goto_7

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzr;

    const-string v4, "video/mp4"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzr;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    move-object/from16 v4, v17

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    move/from16 v16, v3

    :goto_7
    const/4 v5, 0x0

    :goto_8
    add-int/lit8 v3, v16, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x0

    if-nez v4, :cond_c

    return-object v5

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzs;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzs;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lgfe;->p:I

    iput v0, p0, Lgfe;->s:I

    return-void
.end method

.method public static i(Lu4h;ILufe;)V
    .locals 3

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lu4h;->l(I)V

    invoke-virtual {p0}, Lu4h;->A()I

    move-result p1

    sget-object v0, Lafe;->a:[B

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lu4h;->J()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p2, Lufe;->l:[Z

    iget p1, p2, Lufe;->e:I

    invoke-static {p0, v1, p1, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v2, p2, Lufe;->e:I

    if-ne p1, v2, :cond_2

    iget-object v2, p2, Lufe;->l:[Z

    invoke-static {v2, v1, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lu4h;->u()I

    move-result p1

    invoke-virtual {p2, p1}, Lufe;->a(I)V

    iget-object p1, p2, Lufe;->n:Lu4h;

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object v0

    invoke-virtual {p1}, Lu4h;->x()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lu4h;->h([BII)V

    invoke-virtual {p1, v1}, Lu4h;->l(I)V

    iput-boolean v1, p2, Lufe;->o:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Senc sample count "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method

.method public static final k(Landroid/util/SparseArray;I)Lbfe;
    .locals 2

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbfe;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbfe;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final b(JJ)V
    .locals 3

    iget-object p1, p0, Lgfe;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lffe;

    invoke-virtual {v2}, Lffe;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgfe;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Lgfe;->v:I

    iget-object p1, p0, Lgfe;->n:Lz2i;

    invoke-virtual {p1}, Lz2i;->c()V

    iput-wide p3, p0, Lgfe;->w:J

    iget-object p1, p0, Lgfe;->l:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    invoke-direct {p0}, Lgfe;->h()V

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    iget v4, v0, Lgfe;->p:I

    const v6, 0x656d7367

    const v7, 0x73696478

    const/4 v8, 0x2

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_3c

    const-string v12, "FragmentedMp4Extractor"

    if-eq v4, v3, :cond_2e

    const-wide v6, 0x7fffffffffffffffL

    const/4 v13, 0x3

    if-eq v4, v8, :cond_29

    iget-object v4, v0, Lgfe;->z:Lffe;

    if-nez v4, :cond_7

    iget-object v4, v0, Lgfe;->d:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v14

    move-wide v15, v6

    move-object v6, v10

    move v7, v11

    :goto_2
    if-ge v7, v14, :cond_3

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lffe;

    invoke-static {v5}, Lffe;->k(Lffe;)Z

    move-result v17

    if-nez v17, :cond_0

    iget v8, v5, Lffe;->f:I

    iget-object v2, v5, Lffe;->d:Lvfe;

    iget v2, v2, Lvfe;->b:I

    if-eq v8, v2, :cond_2

    :cond_0
    invoke-static {v5}, Lffe;->k(Lffe;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v5, Lffe;->h:I

    iget-object v8, v5, Lffe;->b:Lufe;

    iget v8, v8, Lufe;->d:I

    if-ne v2, v8, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v5}, Lffe;->d()J

    move-result-wide v19

    cmp-long v2, v19, v15

    if-gez v2, :cond_2

    move-object v6, v5

    move-wide/from16 v15, v19

    :cond_2
    :goto_3
    add-int/2addr v7, v3

    const/4 v8, 0x2

    goto :goto_2

    :cond_3
    if-nez v6, :cond_5

    iget-wide v4, v0, Lgfe;->u:J

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-ltz v2, :cond_4

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    invoke-direct/range {p0 .. p0}, Lgfe;->h()V

    goto :goto_1

    :cond_4
    const-string v0, "Offset to end of mdat was negative."

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_5
    invoke-virtual {v6}, Lffe;->d()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v7

    sub-long/2addr v4, v7

    long-to-int v2, v4

    if-gez v2, :cond_6

    const-string v2, "Ignoring negative offset to sample data."

    invoke-static {v12, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v11

    :cond_6
    invoke-interface {v1, v2}, Ld9e;->f(I)V

    iput-object v6, v0, Lgfe;->z:Lffe;

    move-object v4, v6

    :cond_7
    iget v2, v0, Lgfe;->p:I

    const/4 v5, 0x6

    const-string v6, "video/hevc"

    const-string v7, "video/avc"

    if-ne v2, v13, :cond_10

    invoke-virtual {v4}, Lffe;->b()I

    move-result v2

    iput v2, v0, Lgfe;->A:I

    iget-object v2, v4, Lffe;->d:Lvfe;

    iget-object v2, v2, Lvfe;->a:Lsfe;

    iget-object v2, v2, Lsfe;->g:Lerj;

    iget-object v2, v2, Lerj;->o:Ljava/lang/String;

    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_8
    iput-boolean v3, v0, Lgfe;->D:Z

    iget v2, v4, Lffe;->f:I

    iget v8, v4, Lffe;->i:I

    if-ge v2, v8, :cond_d

    iget v2, v0, Lgfe;->A:I

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    invoke-virtual {v4}, Lffe;->f()Ltfe;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v2, v4, Lffe;->b:Lufe;

    iget-object v3, v2, Lufe;->n:Lu4h;

    iget v1, v1, Ltfe;->d:I

    if-eqz v1, :cond_a

    invoke-virtual {v3, v1}, Lu4h;->m(I)V

    :cond_a
    iget v1, v4, Lffe;->f:I

    invoke-virtual {v2, v1}, Lufe;->b(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v3}, Lu4h;->K()I

    move-result v1

    mul-int/2addr v1, v5

    invoke-virtual {v3, v1}, Lu4h;->m(I)V

    :cond_b
    :goto_4
    invoke-virtual {v4}, Lffe;->l()Z

    move-result v1

    if-nez v1, :cond_c

    iput-object v10, v0, Lgfe;->z:Lffe;

    :cond_c
    move v1, v13

    goto/16 :goto_14

    :cond_d
    iget-object v2, v4, Lffe;->d:Lvfe;

    iget-object v2, v2, Lvfe;->a:Lsfe;

    iget v2, v2, Lsfe;->h:I

    if-ne v2, v3, :cond_e

    iget v2, v0, Lgfe;->A:I

    add-int/lit8 v2, v2, -0x8

    iput v2, v0, Lgfe;->A:I

    invoke-interface {v1, v9}, Ld9e;->f(I)V

    :cond_e
    iget-object v2, v4, Lffe;->d:Lvfe;

    iget-object v2, v2, Lvfe;->a:Lsfe;

    iget-object v2, v2, Lsfe;->g:Lerj;

    const-string v8, "audio/ac4"

    iget-object v2, v2, Lerj;->o:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, v0, Lgfe;->A:I

    const/4 v8, 0x7

    invoke-virtual {v4, v2, v8}, Lffe;->c(II)I

    move-result v2

    iput v2, v0, Lgfe;->B:I

    iget v2, v0, Lgfe;->A:I

    iget-object v9, v0, Lgfe;->i:Lu4h;

    invoke-static {v2, v9}, La8e;->c(ILu4h;)V

    iget-object v2, v4, Lffe;->a:Lrae;

    invoke-interface {v2, v9, v8}, Lrae;->d(Lu4h;I)V

    iget v2, v0, Lgfe;->B:I

    add-int/2addr v2, v8

    iput v2, v0, Lgfe;->B:I

    goto :goto_5

    :cond_f
    iget v2, v0, Lgfe;->A:I

    invoke-virtual {v4, v2, v11}, Lffe;->c(II)I

    move-result v2

    iput v2, v0, Lgfe;->B:I

    :goto_5
    iget v8, v0, Lgfe;->A:I

    add-int/2addr v8, v2

    iput v8, v0, Lgfe;->A:I

    const/4 v2, 0x4

    iput v2, v0, Lgfe;->p:I

    iput v11, v0, Lgfe;->C:I

    :cond_10
    iget-object v2, v4, Lffe;->d:Lvfe;

    iget-object v2, v2, Lvfe;->a:Lsfe;

    iget-object v8, v4, Lffe;->a:Lrae;

    invoke-virtual {v4}, Lffe;->e()J

    move-result-wide v14

    iget v9, v2, Lsfe;->k:I

    if-nez v9, :cond_11

    :goto_6
    iget v2, v0, Lgfe;->B:I

    iget v5, v0, Lgfe;->A:I

    if-ge v2, v5, :cond_22

    sub-int/2addr v5, v2

    invoke-interface {v8, v1, v5, v11}, Lrae;->a(Lk8j;IZ)I

    move-result v2

    iget v5, v0, Lgfe;->B:I

    add-int/2addr v5, v2

    iput v5, v0, Lgfe;->B:I

    goto :goto_6

    :cond_11
    iget-object v12, v0, Lgfe;->f:Lu4h;

    invoke-virtual {v12}, Lu4h;->n()[B

    move-result-object v13

    aput-byte v11, v13, v11

    aput-byte v11, v13, v3

    const/16 v17, 0x2

    aput-byte v11, v13, v17

    const/16 v17, 0x4

    rsub-int/lit8 v10, v9, 0x4

    :goto_7
    iget v3, v0, Lgfe;->B:I

    iget v5, v0, Lgfe;->A:I

    if-ge v3, v5, :cond_22

    iget v3, v0, Lgfe;->C:I

    if-nez v3, :cond_1d

    iget-object v3, v0, Lgfe;->H:[Lrae;

    array-length v3, v3

    if-gtz v3, :cond_13

    iget-boolean v3, v0, Lgfe;->D:Z

    if-nez v3, :cond_12

    goto :goto_8

    :cond_12
    move v3, v11

    goto :goto_9

    :cond_13
    :goto_8
    iget-object v3, v2, Lsfe;->g:Lerj;

    invoke-static {v3}, Ljzh;->b(Lerj;)I

    move-result v3

    add-int v5, v9, v3

    iget v11, v0, Lgfe;->A:I

    move/from16 v19, v3

    iget v3, v0, Lgfe;->B:I

    sub-int/2addr v11, v3

    if-le v5, v11, :cond_14

    const/4 v3, 0x0

    goto :goto_9

    :cond_14
    move/from16 v3, v19

    :goto_9
    add-int v5, v9, v3

    invoke-interface {v1, v13, v10, v5}, Ld9e;->h([BII)V

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Lu4h;->l(I)V

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v11

    if-ltz v11, :cond_1c

    sub-int/2addr v11, v3

    iput v11, v0, Lgfe;->C:I

    iget-object v11, v0, Lgfe;->e:Lu4h;

    invoke-virtual {v11, v5}, Lu4h;->l(I)V

    const/4 v5, 0x4

    invoke-interface {v8, v11, v5}, Lrae;->d(Lu4h;I)V

    iget v11, v0, Lgfe;->B:I

    add-int/2addr v11, v5

    iput v11, v0, Lgfe;->B:I

    iget v11, v0, Lgfe;->A:I

    add-int/2addr v11, v10

    iput v11, v0, Lgfe;->A:I

    iget-object v11, v0, Lgfe;->H:[Lrae;

    array-length v11, v11

    if-lez v11, :cond_1a

    if-lez v3, :cond_1a

    iget-object v11, v2, Lsfe;->g:Lerj;

    aget-byte v19, v13, v5

    sget-object v5, Ljzh;->a:[B

    iget-object v5, v11, Lerj;->o:Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_16

    move/from16 v20, v9

    iget-object v9, v11, Lerj;->k:Ljava/lang/String;

    invoke-static {v9, v7}, Lbue;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_a

    :cond_15
    move-object/from16 v21, v7

    const/4 v7, 0x6

    goto :goto_b

    :cond_16
    move/from16 v20, v9

    :goto_a
    and-int/lit8 v9, v19, 0x1f

    move-object/from16 v21, v7

    const/4 v7, 0x6

    if-eq v9, v7, :cond_19

    :goto_b
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v5, v11, Lerj;->k:Ljava/lang/String;

    invoke-static {v5, v6}, Lbue;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_d

    :cond_17
    :goto_c
    const/4 v5, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    and-int/lit8 v5, v19, 0x7e

    const/4 v9, 0x1

    shr-int/2addr v5, v9

    const/16 v9, 0x27

    if-ne v5, v9, :cond_17

    :cond_19
    const/4 v5, 0x1

    goto :goto_e

    :cond_1a
    move-object/from16 v21, v7

    move/from16 v20, v9

    const/4 v7, 0x6

    goto :goto_c

    :goto_e
    iput-boolean v5, v0, Lgfe;->E:Z

    invoke-interface {v8, v12, v3}, Lrae;->d(Lu4h;I)V

    iget v5, v0, Lgfe;->B:I

    add-int/2addr v5, v3

    iput v5, v0, Lgfe;->B:I

    if-lez v3, :cond_1b

    iget-boolean v5, v0, Lgfe;->D:Z

    if-nez v5, :cond_1b

    iget-object v5, v2, Lsfe;->g:Lerj;

    const/4 v9, 0x4

    invoke-static {v13, v9, v3, v5}, Ljzh;->j([BIILerj;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    iput-boolean v3, v0, Lgfe;->D:Z

    :cond_1b
    move v5, v7

    move/from16 v9, v20

    move-object/from16 v7, v21

    :goto_f
    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_1c
    const-string v0, "Invalid NAL length"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_1d
    move-object/from16 v21, v7

    move/from16 v20, v9

    const/4 v7, 0x6

    iget-boolean v5, v0, Lgfe;->E:Z

    if-eqz v5, :cond_20

    iget-object v5, v0, Lgfe;->g:Lu4h;

    invoke-virtual {v5, v3}, Lu4h;->i(I)V

    invoke-virtual {v5}, Lu4h;->n()[B

    move-result-object v3

    iget v9, v0, Lgfe;->C:I

    const/4 v11, 0x0

    invoke-interface {v1, v3, v11, v9}, Ld9e;->h([BII)V

    iget v3, v0, Lgfe;->C:I

    invoke-interface {v8, v5, v3}, Lrae;->d(Lu4h;I)V

    iget v3, v0, Lgfe;->C:I

    invoke-virtual {v5}, Lu4h;->n()[B

    move-result-object v9

    invoke-virtual {v5}, Lu4h;->x()I

    move-result v7

    invoke-static {v9, v7}, Ljzh;->c([BI)I

    move-result v7

    invoke-virtual {v5, v11}, Lu4h;->l(I)V

    invoke-virtual {v5, v7}, Lu4h;->k(I)V

    iget-object v7, v2, Lsfe;->g:Lerj;

    iget v7, v7, Lerj;->q:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_1e

    iget-object v7, v0, Lgfe;->n:Lz2i;

    invoke-virtual {v7}, Lz2i;->a()I

    move-result v9

    if-eqz v9, :cond_1f

    invoke-virtual {v7, v11}, Lz2i;->e(I)V

    goto :goto_10

    :cond_1e
    iget-object v9, v0, Lgfe;->n:Lz2i;

    invoke-virtual {v9}, Lz2i;->a()I

    move-result v11

    if-eq v11, v7, :cond_1f

    invoke-virtual {v9, v7}, Lz2i;->e(I)V

    :cond_1f
    :goto_10
    iget-object v7, v0, Lgfe;->n:Lz2i;

    invoke-virtual {v7, v14, v15, v5}, Lz2i;->b(JLu4h;)V

    invoke-virtual {v4}, Lffe;->a()I

    move-result v5

    const/4 v9, 0x4

    and-int/2addr v5, v9

    if-eqz v5, :cond_21

    invoke-virtual {v7}, Lz2i;->d()V

    goto :goto_11

    :cond_20
    const/4 v5, 0x0

    invoke-interface {v8, v1, v3, v5}, Lrae;->a(Lk8j;IZ)I

    move-result v3

    :cond_21
    :goto_11
    iget v5, v0, Lgfe;->B:I

    add-int/2addr v5, v3

    iput v5, v0, Lgfe;->B:I

    iget v5, v0, Lgfe;->C:I

    sub-int/2addr v5, v3

    iput v5, v0, Lgfe;->C:I

    move/from16 v9, v20

    move-object/from16 v7, v21

    const/4 v5, 0x6

    goto :goto_f

    :cond_22
    invoke-virtual {v4}, Lffe;->a()I

    move-result v1

    iget-boolean v2, v0, Lgfe;->D:Z

    if-nez v2, :cond_23

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_23
    move/from16 v22, v1

    invoke-virtual {v4}, Lffe;->f()Ltfe;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, v1, Ltfe;->c:Lqae;

    move-object/from16 v25, v1

    goto :goto_12

    :cond_24
    const/16 v25, 0x0

    :goto_12
    iget v1, v0, Lgfe;->A:I

    const/16 v24, 0x0

    move-object/from16 v19, v8

    move-wide/from16 v20, v14

    move/from16 v23, v1

    invoke-interface/range {v19 .. v25}, Lrae;->g(JIIILqae;)V

    :cond_25
    iget-object v1, v0, Lgfe;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lefe;

    iget v2, v0, Lgfe;->v:I

    iget v3, v1, Lefe;->c:I

    sub-int/2addr v2, v3

    iput v2, v0, Lgfe;->v:I

    iget-wide v5, v1, Lefe;->a:J

    iget-boolean v1, v1, Lefe;->b:Z

    if-eqz v1, :cond_26

    add-long/2addr v5, v14

    :cond_26
    move-wide v1, v5

    iget-object v12, v0, Lgfe;->G:[Lrae;

    array-length v13, v12

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v13, :cond_25

    aget-object v5, v12, v11

    iget v10, v0, Lgfe;->v:I

    const/16 v17, 0x0

    const/4 v8, 0x1

    move-wide v6, v1

    move v9, v3

    move/from16 v18, v11

    move-object/from16 v11, v17

    invoke-interface/range {v5 .. v11}, Lrae;->g(JIIILqae;)V

    const/4 v5, 0x1

    add-int/lit8 v11, v18, 0x1

    goto :goto_13

    :cond_27
    invoke-virtual {v4}, Lffe;->l()Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x0

    iput-object v1, v0, Lgfe;->z:Lffe;

    :cond_28
    const/4 v1, 0x3

    :goto_14
    iput v1, v0, Lgfe;->p:I

    const/4 v0, 0x0

    return v0

    :cond_29
    iget-object v2, v0, Lgfe;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v3, :cond_2b

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lffe;

    iget-object v8, v8, Lffe;->b:Lufe;

    iget-boolean v9, v8, Lufe;->o:Z

    if-eqz v9, :cond_2a

    iget-wide v8, v8, Lufe;->c:J

    cmp-long v10, v8, v6

    if-gez v10, :cond_2a

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lffe;

    move-wide v6, v8

    :cond_2a
    const/4 v8, 0x1

    add-int/2addr v5, v8

    goto :goto_15

    :cond_2b
    if-nez v4, :cond_2c

    const/4 v2, 0x3

    iput v2, v0, Lgfe;->p:I

    goto/16 :goto_0

    :cond_2c
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v2

    sub-long/2addr v6, v2

    long-to-int v2, v6

    if-ltz v2, :cond_2d

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    iget-object v2, v4, Lffe;->b:Lufe;

    iget-object v3, v2, Lufe;->n:Lu4h;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v4

    invoke-virtual {v3}, Lu4h;->x()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6, v5}, Ld9e;->h([BII)V

    invoke-virtual {v3, v6}, Lu4h;->l(I)V

    iput-boolean v6, v2, Lufe;->o:Z

    goto/16 :goto_0

    :cond_2d
    const-string v0, "Offset to encryption data was negative."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_2e
    iget-wide v2, v0, Lgfe;->r:J

    iget v4, v0, Lgfe;->s:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget-object v4, v0, Lgfe;->t:Lu4h;

    long-to-int v2, v2

    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Lu4h;->n()[B

    move-result-object v3

    invoke-interface {v1, v3, v9, v2}, Ld9e;->h([BII)V

    new-instance v2, Lkjh;

    iget v3, v0, Lgfe;->q:I

    invoke-direct {v2, v3, v4}, Lkjh;-><init>(ILu4h;)V

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v3

    iget-object v5, v0, Lgfe;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2f

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmih;

    invoke-virtual {v3, v2}, Lmih;->e(Lkjh;)V

    const/4 v10, 0x4

    goto/16 :goto_1d

    :cond_2f
    iget v5, v2, Lrlh;->a:I

    if-ne v5, v7, :cond_33

    iget-object v2, v2, Lkjh;->b:Lu4h;

    invoke-virtual {v2, v9}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->A()I

    move-result v5

    invoke-static {v5}, Lafe;->a(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lu4h;->m(I)V

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v14

    if-nez v5, :cond_30

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v5

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v7

    :goto_16
    add-long/2addr v3, v7

    goto :goto_17

    :cond_30
    invoke-virtual {v2}, Lu4h;->Q()J

    move-result-wide v5

    invoke-virtual {v2}, Lu4h;->Q()J

    move-result-wide v7

    goto :goto_16

    :goto_17
    const-wide/32 v9, 0xf4240

    sget-object v13, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v7, v5

    move-wide v11, v14

    invoke-static/range {v7 .. v13}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v19

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lu4h;->m(I)V

    invoke-virtual {v2}, Lu4h;->K()I

    move-result v13

    new-array v11, v13, [I

    new-array v12, v13, [J

    new-array v9, v13, [J

    new-array v10, v13, [J

    move-wide/from16 v16, v19

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v13, :cond_32

    invoke-virtual {v2}, Lu4h;->A()I

    move-result v8

    const/high16 v21, -0x80000000

    and-int v21, v8, v21

    if-nez v21, :cond_31

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v21

    const v23, 0x7fffffff

    and-int v8, v8, v23

    aput v8, v11, v7

    aput-wide v3, v12, v7

    aput-wide v16, v10, v7

    add-long v5, v5, v21

    const-wide/32 v16, 0xf4240

    sget-object v21, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move/from16 v26, v7

    move-wide v7, v5

    move-wide/from16 v22, v5

    move-object v5, v9

    move-object v6, v10

    move-wide/from16 v9, v16

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-wide v11, v14

    move/from16 v16, v13

    move-object/from16 v13, v21

    invoke-static/range {v7 .. v13}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    aget-wide v9, v6, v26

    sub-long v9, v7, v9

    aput-wide v9, v5, v26

    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Lu4h;->m(I)V

    move-object/from16 v9, v27

    aget v11, v9, v26

    int-to-long v11, v11

    add-long/2addr v3, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v26, 0x1

    move-object v10, v6

    move-object v11, v9

    move/from16 v13, v16

    move-object v9, v5

    move-wide/from16 v16, v7

    move v7, v12

    move-wide/from16 v5, v22

    move-object/from16 v12, v28

    goto :goto_18

    :cond_31
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_32
    move-object v5, v9

    move-object v6, v10

    move-object v9, v11

    move-object/from16 v28, v12

    const/4 v10, 0x4

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lk8e;

    move-object/from16 v4, v28

    invoke-direct {v3, v9, v4, v5, v6}, Lk8e;-><init>([I[J[J[J)V

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lgfe;->y:J

    iget-object v3, v0, Lgfe;->F:Lf9e;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lkae;

    invoke-interface {v3, v2}, Lf9e;->i(Lkae;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lgfe;->I:Z

    goto/16 :goto_1d

    :cond_33
    const/4 v10, 0x4

    if-ne v5, v6, :cond_3b

    iget-object v2, v2, Lkjh;->b:Lu4h;

    iget-object v3, v0, Lgfe;->G:[Lrae;

    array-length v3, v3

    if-eqz v3, :cond_3b

    invoke-virtual {v2, v9}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->A()I

    move-result v3

    invoke-static {v3}, Lafe;->a(I)I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_35

    const/4 v6, 0x1

    if-eq v3, v6, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unsupported emsg version: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_34
    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v6

    invoke-virtual {v2}, Lu4h;->Q()J

    move-result-wide v13

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v15, 0xf4240

    move-wide/from16 v17, v6

    move-object/from16 v19, v3

    invoke-static/range {v13 .. v19}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    invoke-static/range {v13 .. v19}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v11

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lu4h;->S(C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lu4h;->S(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v20, v6

    move-wide/from16 v22, v11

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-wide v6, v4

    goto :goto_1a

    :cond_35
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lu4h;->S(C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lu4h;->S(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v6

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v15

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v17, 0xf4240

    move-wide/from16 v19, v6

    move-object/from16 v21, v3

    invoke-static/range {v15 .. v21}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    iget-wide v11, v0, Lgfe;->y:J

    cmp-long v15, v11, v4

    if-eqz v15, :cond_36

    add-long/2addr v11, v8

    goto :goto_19

    :cond_36
    move-wide v11, v4

    :goto_19
    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    move-wide/from16 v19, v6

    move-object/from16 v21, v3

    invoke-static/range {v15 .. v21}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v15

    move-wide/from16 v20, v6

    move-wide v6, v8

    move-wide v8, v11

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-wide/from16 v22, v15

    :goto_1a
    invoke-virtual {v2}, Lu4h;->u()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v2}, Lu4h;->u()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v12, v11}, Lu4h;->h([BII)V

    new-instance v2, Ljce;

    move-object/from16 v17, v2

    move-object/from16 v24, v3

    invoke-direct/range {v17 .. v24}, Ljce;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    iget-object v3, v0, Lgfe;->j:Lkce;

    new-instance v11, Lu4h;

    invoke-virtual {v3, v2}, Lkce;->a(Ljce;)[B

    move-result-object v2

    invoke-direct {v11, v2}, Lu4h;-><init>([B)V

    invoke-virtual {v11}, Lu4h;->u()I

    move-result v2

    iget-object v3, v0, Lgfe;->G:[Lrae;

    array-length v12, v3

    const/4 v13, 0x0

    :goto_1b
    if-ge v13, v12, :cond_37

    aget-object v14, v3, v13

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lu4h;->l(I)V

    invoke-interface {v14, v11, v2}, Lrae;->d(Lu4h;I)V

    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_1b

    :cond_37
    const/4 v14, 0x1

    cmp-long v3, v8, v4

    if-nez v3, :cond_38

    iget-object v3, v0, Lgfe;->m:Ljava/util/ArrayDeque;

    new-instance v4, Lefe;

    invoke-direct {v4, v6, v7, v14, v2}, Lefe;-><init>(JZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lgfe;->v:I

    add-int/2addr v3, v2

    iput v3, v0, Lgfe;->v:I

    goto :goto_1d

    :cond_38
    iget-object v3, v0, Lgfe;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    new-instance v4, Lefe;

    const/4 v5, 0x0

    invoke-direct {v4, v8, v9, v5, v2}, Lefe;-><init>(JZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lgfe;->v:I

    add-int/2addr v3, v2

    iput v3, v0, Lgfe;->v:I

    goto :goto_1d

    :cond_39
    iget-object v3, v0, Lgfe;->G:[Lrae;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_3b

    aget-object v11, v3, v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x1

    move-wide v12, v8

    move v15, v2

    invoke-interface/range {v11 .. v17}, Lrae;->g(JIIILqae;)V

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_1c

    :cond_3a
    const/4 v10, 0x4

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    :cond_3b
    :goto_1d
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lgfe;->j(J)V

    goto/16 :goto_0

    :cond_3c
    const/4 v10, 0x4

    iget v2, v0, Lgfe;->s:I

    if-nez v2, :cond_3e

    iget-object v2, v0, Lgfe;->k:Lu4h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v9, v5}, Ld9e;->d([BIIZ)Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v0, v0, Lgfe;->n:Lz2i;

    invoke-virtual {v0}, Lz2i;->d()V

    const/4 v0, -0x1

    return v0

    :cond_3d
    iput v9, v0, Lgfe;->s:I

    invoke-virtual {v2, v4}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v3

    iput-wide v3, v0, Lgfe;->r:J

    invoke-virtual {v2}, Lu4h;->A()I

    move-result v2

    iput v2, v0, Lgfe;->q:I

    :cond_3e
    iget-wide v2, v0, Lgfe;->r:J

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_3f

    iget-object v2, v0, Lgfe;->k:Lu4h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v3

    invoke-interface {v1, v3, v9, v9}, Ld9e;->h([BII)V

    iget v3, v0, Lgfe;->s:I

    add-int/2addr v3, v9

    iput v3, v0, Lgfe;->s:I

    invoke-virtual {v2}, Lu4h;->Q()J

    move-result-wide v2

    iput-wide v2, v0, Lgfe;->r:J

    goto :goto_1f

    :cond_3f
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_42

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_41

    iget-object v2, v0, Lgfe;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmih;

    iget-wide v2, v2, Lmih;->b:J

    goto :goto_1e

    :cond_40
    move-wide v2, v4

    :cond_41
    :goto_1e
    cmp-long v4, v2, v4

    if-eqz v4, :cond_42

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v4, v0, Lgfe;->s:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lgfe;->r:J

    :cond_42
    :goto_1f
    iget-wide v2, v0, Lgfe;->r:J

    iget v4, v0, Lgfe;->s:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4f

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v2

    sub-long/2addr v2, v4

    iget v4, v0, Lgfe;->q:I

    const v5, 0x6d646174

    const v8, 0x6d6f6f66

    if-eq v4, v8, :cond_43

    if-ne v4, v5, :cond_44

    :cond_43
    iget-boolean v4, v0, Lgfe;->I:Z

    if-nez v4, :cond_44

    iget-object v4, v0, Lgfe;->F:Lf9e;

    new-instance v11, Ljae;

    iget-wide v12, v0, Lgfe;->x:J

    invoke-direct {v11, v12, v13, v2, v3}, Ljae;-><init>(JJ)V

    invoke-interface {v4, v11}, Lf9e;->i(Lkae;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Lgfe;->I:Z

    :cond_44
    iget v4, v0, Lgfe;->q:I

    if-ne v4, v8, :cond_45

    iget-object v4, v0, Lgfe;->d:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_20
    if-ge v12, v11, :cond_45

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lffe;

    iget-object v13, v13, Lffe;->b:Lufe;

    iput-wide v2, v13, Lufe;->c:J

    iput-wide v2, v13, Lufe;->b:J

    const/4 v13, 0x1

    add-int/2addr v12, v13

    goto :goto_20

    :cond_45
    iget v4, v0, Lgfe;->q:I

    if-ne v4, v5, :cond_46

    const/4 v5, 0x0

    iput-object v5, v0, Lgfe;->z:Lffe;

    iget-wide v4, v0, Lgfe;->r:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lgfe;->u:J

    const/4 v2, 0x2

    iput v2, v0, Lgfe;->p:I

    goto/16 :goto_0

    :cond_46
    const v2, 0x6d6f6f76

    if-eq v4, v2, :cond_47

    const v2, 0x7472616b

    if-eq v4, v2, :cond_47

    const v2, 0x6d646961

    if-eq v4, v2, :cond_47

    const v2, 0x6d696e66

    if-eq v4, v2, :cond_47

    const v2, 0x7374626c

    if-eq v4, v2, :cond_47

    if-eq v4, v8, :cond_47

    const v2, 0x74726166

    if-eq v4, v2, :cond_47

    const v2, 0x6d766578

    if-eq v4, v2, :cond_47

    const v2, 0x65647473

    if-ne v4, v2, :cond_48

    :cond_47
    const/4 v2, 0x1

    goto/16 :goto_23

    :cond_48
    const v2, 0x68646c72    # 4.3148E24f

    const-wide/32 v11, 0x7fffffff

    if-eq v4, v2, :cond_4b

    const v2, 0x6d646864

    if-eq v4, v2, :cond_4b

    const v2, 0x6d766864

    if-eq v4, v2, :cond_4b

    if-eq v4, v7, :cond_4b

    const v2, 0x73747364

    if-eq v4, v2, :cond_4b

    const v2, 0x73747473

    if-eq v4, v2, :cond_4b

    const v2, 0x63747473

    if-eq v4, v2, :cond_4b

    const v2, 0x73747363

    if-eq v4, v2, :cond_4b

    const v2, 0x7374737a

    if-eq v4, v2, :cond_4b

    const v2, 0x73747a32

    if-eq v4, v2, :cond_4b

    const v2, 0x7374636f

    if-eq v4, v2, :cond_4b

    const v2, 0x636f3634

    if-eq v4, v2, :cond_4b

    const v2, 0x73747373

    if-eq v4, v2, :cond_4b

    const v2, 0x74666474

    if-eq v4, v2, :cond_4b

    const v2, 0x74666864

    if-eq v4, v2, :cond_4b

    const v2, 0x746b6864

    if-eq v4, v2, :cond_4b

    const v2, 0x74726578

    if-eq v4, v2, :cond_4b

    const v2, 0x7472756e

    if-eq v4, v2, :cond_4b

    const v2, 0x70737368    # 3.013775E29f

    if-eq v4, v2, :cond_4b

    const v2, 0x7361697a

    if-eq v4, v2, :cond_4b

    const v2, 0x7361696f

    if-eq v4, v2, :cond_4b

    const v2, 0x73656e63

    if-eq v4, v2, :cond_4b

    const v2, 0x75756964

    if-eq v4, v2, :cond_4b

    const v2, 0x73626770

    if-eq v4, v2, :cond_4b

    const v2, 0x73677064

    if-eq v4, v2, :cond_4b

    const v2, 0x656c7374

    if-eq v4, v2, :cond_4b

    const v2, 0x6d656864

    if-eq v4, v2, :cond_4b

    if-ne v4, v6, :cond_49

    goto :goto_22

    :cond_49
    iget-wide v2, v0, Lgfe;->r:J

    cmp-long v2, v2, v11

    if-gtz v2, :cond_4a

    const/4 v2, 0x0

    iput-object v2, v0, Lgfe;->t:Lu4h;

    const/4 v2, 0x1

    iput v2, v0, Lgfe;->p:I

    :goto_21
    move v3, v2

    goto/16 :goto_1

    :cond_4a
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_4b
    :goto_22
    iget v2, v0, Lgfe;->s:I

    if-ne v2, v9, :cond_4d

    iget-wide v2, v0, Lgfe;->r:J

    cmp-long v2, v2, v11

    if-gtz v2, :cond_4c

    new-instance v2, Lu4h;

    iget-wide v3, v0, Lgfe;->r:J

    long-to-int v3, v3

    invoke-direct {v2, v3}, Lu4h;-><init>(I)V

    iget-object v3, v0, Lgfe;->k:Lu4h;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v3

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lgfe;->t:Lu4h;

    const/4 v2, 0x1

    iput v2, v0, Lgfe;->p:I

    goto :goto_21

    :cond_4c
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_4d
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :goto_23
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v5

    iget-wide v7, v0, Lgfe;->r:J

    add-long/2addr v5, v7

    iget-object v3, v0, Lgfe;->l:Ljava/util/ArrayDeque;

    new-instance v7, Lmih;

    const-wide/16 v8, -0x8

    add-long/2addr v5, v8

    invoke-direct {v7, v4, v5, v6}, Lmih;-><init>(IJ)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v3, v0, Lgfe;->r:J

    iget v7, v0, Lgfe;->s:I

    int-to-long v7, v7

    cmp-long v3, v3, v7

    if-nez v3, :cond_4e

    invoke-virtual {v0, v5, v6}, Lgfe;->j(J)V

    goto :goto_21

    :cond_4e
    invoke-direct/range {p0 .. p0}, Lgfe;->h()V

    goto :goto_21

    :cond_4f
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0
.end method

.method public final e(Ld9e;)Z
    .locals 1

    invoke-static {p1}, Lrfe;->a(Ld9e;)Loae;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lgfe;->o:Lcom/google/android/gms/internal/ads/zzfww;

    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf9e;)V
    .locals 6

    iget v0, p0, Lgfe;->b:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_0

    iget-object v1, p0, Lgfe;->a:Lvge;

    new-instance v2, Lche;

    invoke-direct {v2, p1, v1}, Lche;-><init>(Lf9e;Lvge;)V

    move-object p1, v2

    :cond_0
    iput-object p1, p0, Lgfe;->F:Lf9e;

    invoke-direct {p0}, Lgfe;->h()V

    const/4 p1, 0x2

    new-array p1, p1, [Lrae;

    iput-object p1, p0, Lgfe;->G:[Lrae;

    and-int/lit8 v0, v0, 0x4

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgfe;->F:Lf9e;

    const/4 v3, 0x5

    invoke-interface {v0, v1, v3}, Lf9e;->j(II)Lrae;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 p1, 0x1

    const/16 v1, 0x65

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iget-object v0, p0, Lgfe;->G:[Lrae;

    invoke-static {v0, p1}, Lkfh;->q([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lrae;

    iput-object p1, p0, Lgfe;->G:[Lrae;

    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    sget-object v5, Lgfe;->K:Lerj;

    invoke-interface {v4, v5}, Lrae;->f(Lerj;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lgfe;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lrae;

    iput-object v0, p0, Lgfe;->H:[Lrae;

    :goto_2
    iget-object v0, p0, Lgfe;->H:[Lrae;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lgfe;->F:Lf9e;

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4}, Lf9e;->j(II)Lrae;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lerj;

    invoke-interface {v0, v1}, Lrae;->f(Lerj;)V

    iget-object v1, p0, Lgfe;->H:[Lrae;

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final j(J)V
    .locals 54

    move-object/from16 v0, p0

    const/16 v2, 0x8

    :cond_0
    :goto_0
    iget-object v6, v0, Lgfe;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_51

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmih;

    iget-wide v7, v7, Lmih;->b:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_51

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lmih;

    iget v7, v8, Lrlh;->a:I

    const v9, 0x6d6f6f76

    const/16 v12, 0xc

    if-ne v7, v9, :cond_9

    iget-object v6, v8, Lmih;->c:Ljava/util/List;

    invoke-static {v6}, Lgfe;->g(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v6

    const v7, 0x6d766578

    invoke-virtual {v8, v7}, Lmih;->b(I)Lmih;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    iget-object v7, v7, Lmih;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_4

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lkjh;

    iget v1, v15, Lrlh;->a:I

    const v4, 0x74726578

    if-ne v1, v4, :cond_1

    iget-object v1, v15, Lkjh;->b:Lu4h;

    invoke-virtual {v1, v12}, Lu4h;->l(I)V

    invoke-virtual {v1}, Lu4h;->A()I

    move-result v4

    invoke-virtual {v1}, Lu4h;->A()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v1}, Lu4h;->A()I

    move-result v12

    invoke-virtual {v1}, Lu4h;->A()I

    move-result v3

    invoke-virtual {v1}, Lu4h;->A()I

    move-result v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lbfe;

    invoke-direct {v5, v15, v12, v3, v1}, Lbfe;-><init>(IIII)V

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lbfe;

    invoke-virtual {v14, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    const v3, 0x6d656864

    if-ne v1, v3, :cond_3

    iget-object v1, v15, Lkjh;->b:Lu4h;

    invoke-virtual {v1, v2}, Lu4h;->l(I)V

    invoke-virtual {v1}, Lu4h;->A()I

    move-result v3

    invoke-static {v3}, Lafe;->a(I)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lu4h;->O()J

    move-result-wide v3

    :goto_2
    move-wide v10, v3

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lu4h;->Q()J

    move-result-wide v3

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v1, 0x1

    add-int/2addr v13, v1

    const/16 v12, 0xc

    goto :goto_1

    :cond_4
    new-instance v9, Lq9e;

    invoke-direct {v9}, Lq9e;-><init>()V

    iget v1, v0, Lgfe;->b:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-eqz v1, :cond_5

    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    new-instance v15, Lcfe;

    invoke-direct {v15, v0}, Lcfe;-><init>(Lgfe;)V

    const/4 v1, 0x0

    move-object v12, v6

    move-object v3, v14

    move v14, v1

    const/4 v1, 0x0

    invoke-static/range {v8 .. v15}, Lafe;->f(Lmih;Lq9e;JLcom/google/android/gms/internal/ads/zzs;ZZLm2i;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v0, Lgfe;->d:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v4}, Ljfe;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    move v15, v1

    :goto_5
    if-ge v15, v5, :cond_6

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvfe;

    iget-object v8, v1, Lvfe;->a:Lsfe;

    iget-object v9, v0, Lgfe;->F:Lf9e;

    iget v10, v8, Lsfe;->b:I

    invoke-interface {v9, v15, v10}, Lf9e;->j(II)Lrae;

    move-result-object v9

    iget-wide v10, v8, Lsfe;->e:J

    invoke-interface {v9, v10, v11}, Lrae;->c(J)V

    iget v8, v8, Lsfe;->a:I

    new-instance v12, Lffe;

    invoke-static {v3, v8}, Lgfe;->k(Landroid/util/SparseArray;I)Lbfe;

    move-result-object v13

    invoke-direct {v12, v9, v1, v13, v7}, Lffe;-><init>(Lrae;Lvfe;Lbfe;Ljava/lang/String;)V

    invoke-virtual {v6, v8, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v8, v0, Lgfe;->x:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lgfe;->x:J

    const/4 v1, 0x1

    add-int/2addr v15, v1

    goto :goto_5

    :cond_6
    iget-object v1, v0, Lgfe;->F:Lf9e;

    invoke-interface {v1}, Lf9e;->zzG()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ne v7, v5, :cond_8

    const/4 v15, 0x1

    goto :goto_6

    :cond_8
    move v15, v1

    :goto_6
    invoke-static {v15}, Ln7g;->f(Z)V

    move v15, v1

    :goto_7
    if-ge v15, v5, :cond_0

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvfe;

    iget-object v7, v1, Lvfe;->a:Lsfe;

    iget v7, v7, Lsfe;->a:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lffe;

    invoke-static {v3, v7}, Lgfe;->k(Landroid/util/SparseArray;I)Lbfe;

    move-result-object v7

    invoke-virtual {v8, v1, v7}, Lffe;->h(Lvfe;Lbfe;)V

    const/4 v1, 0x1

    add-int/2addr v15, v1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    const v3, 0x6d6f6f66

    if-ne v7, v3, :cond_50

    iget-object v3, v0, Lgfe;->d:Landroid/util/SparseArray;

    iget v4, v0, Lgfe;->b:I

    iget-object v5, v0, Lgfe;->h:[B

    iget-object v6, v8, Lmih;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v15, v1

    :goto_8
    if-ge v15, v7, :cond_4a

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmih;

    iget v12, v9, Lrlh;->a:I

    const v13, 0x74726166

    if-ne v12, v13, :cond_49

    const v12, 0x74666864

    invoke-virtual {v9, v12}, Lmih;->c(I)Lkjh;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v12, Lkjh;->b:Lu4h;

    invoke-virtual {v12, v2}, Lu4h;->l(I)V

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v13

    sget-object v14, Lafe;->a:[B

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lffe;

    if-nez v14, :cond_a

    const/4 v14, 0x0

    goto :goto_e

    :cond_a
    const/4 v11, 0x1

    and-int/lit8 v17, v13, 0x1

    if-eqz v17, :cond_b

    invoke-virtual {v12}, Lu4h;->Q()J

    move-result-wide v10

    iget-object v1, v14, Lffe;->b:Lufe;

    iput-wide v10, v1, Lufe;->b:J

    iput-wide v10, v1, Lufe;->c:J

    :cond_b
    iget-object v1, v14, Lffe;->e:Lbfe;

    const/4 v10, 0x2

    and-int/lit8 v11, v13, 0x2

    if-eqz v11, :cond_c

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    :cond_c
    iget v10, v1, Lbfe;->a:I

    :goto_9
    and-int/lit8 v11, v13, 0x8

    if-eqz v11, :cond_d

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v11

    :goto_a
    const/16 v19, 0x10

    goto :goto_b

    :cond_d
    iget v11, v1, Lbfe;->b:I

    goto :goto_a

    :goto_b
    and-int/lit8 v22, v13, 0x10

    if-eqz v22, :cond_e

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v22

    move/from16 v2, v22

    goto :goto_c

    :cond_e
    iget v2, v1, Lbfe;->c:I

    :goto_c
    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_f

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v1

    goto :goto_d

    :cond_f
    iget v1, v1, Lbfe;->d:I

    :goto_d
    iget-object v12, v14, Lffe;->b:Lufe;

    new-instance v13, Lbfe;

    invoke-direct {v13, v10, v11, v2, v1}, Lbfe;-><init>(IIII)V

    iput-object v13, v12, Lufe;->a:Lbfe;

    :goto_e
    if-nez v14, :cond_10

    move-object/from16 v29, v3

    move/from16 v49, v4

    move-object/from16 v23, v6

    move/from16 v25, v7

    move-object/from16 v30, v8

    move/from16 v32, v15

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v7, 0x10

    const/16 v12, 0xc

    const/4 v13, 0x4

    const/4 v14, 0x2

    goto/16 :goto_36

    :cond_10
    iget-object v1, v14, Lffe;->b:Lufe;

    iget-wide v10, v1, Lufe;->p:J

    iget-boolean v2, v1, Lufe;->q:Z

    invoke-virtual {v14}, Lffe;->i()V

    const/4 v12, 0x1

    invoke-static {v14, v12}, Lffe;->g(Lffe;Z)V

    const v13, 0x74666474

    invoke-virtual {v9, v13}, Lmih;->c(I)Lkjh;

    move-result-object v13

    if-eqz v13, :cond_12

    const/16 v18, 0x2

    and-int/lit8 v20, v4, 0x2

    if-nez v20, :cond_12

    iget-object v2, v13, Lkjh;->b:Lu4h;

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->A()I

    move-result v10

    invoke-static {v10}, Lafe;->a(I)I

    move-result v10

    if-ne v10, v12, :cond_11

    invoke-virtual {v2}, Lu4h;->Q()J

    move-result-wide v10

    goto :goto_f

    :cond_11
    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v10

    :goto_f
    iput-wide v10, v1, Lufe;->p:J

    iput-boolean v12, v1, Lufe;->q:Z

    goto :goto_10

    :cond_12
    iput-wide v10, v1, Lufe;->p:J

    iput-boolean v2, v1, Lufe;->q:Z

    :goto_10
    iget-object v2, v9, Lmih;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v23, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_11
    const v6, 0x7472756e

    if-ge v11, v10, :cond_14

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move/from16 v25, v7

    move-object/from16 v7, v24

    check-cast v7, Lkjh;

    iget v0, v7, Lrlh;->a:I

    if-ne v0, v6, :cond_13

    iget-object v0, v7, Lkjh;->b:Lu4h;

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Lu4h;->l(I)V

    invoke-virtual {v0}, Lu4h;->J()I

    move-result v0

    if-lez v0, :cond_13

    add-int/2addr v13, v0

    const/4 v0, 0x1

    add-int/2addr v12, v0

    goto :goto_12

    :cond_13
    const/4 v0, 0x1

    :goto_12
    add-int/2addr v11, v0

    move-object/from16 v0, p0

    move/from16 v7, v25

    goto :goto_11

    :cond_14
    move/from16 v25, v7

    const/4 v0, 0x0

    iput v0, v14, Lffe;->h:I

    iput v0, v14, Lffe;->g:I

    iput v0, v14, Lffe;->f:I

    iput v12, v1, Lufe;->d:I

    iput v13, v1, Lufe;->e:I

    iget-object v0, v1, Lufe;->g:[I

    array-length v0, v0

    if-ge v0, v12, :cond_15

    new-array v0, v12, [J

    iput-object v0, v1, Lufe;->f:[J

    new-array v0, v12, [I

    iput-object v0, v1, Lufe;->g:[I

    :cond_15
    iget-object v0, v1, Lufe;->h:[I

    array-length v0, v0

    if-ge v0, v13, :cond_16

    mul-int/lit8 v13, v13, 0x7d

    div-int/lit8 v13, v13, 0x64

    new-array v0, v13, [I

    iput-object v0, v1, Lufe;->h:[I

    new-array v0, v13, [J

    iput-object v0, v1, Lufe;->i:[J

    new-array v0, v13, [Z

    iput-object v0, v1, Lufe;->j:[Z

    new-array v0, v13, [Z

    iput-object v0, v1, Lufe;->l:[Z

    :cond_16
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_13
    if-ge v0, v10, :cond_2b

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v12, v24

    check-cast v12, Lkjh;

    iget v13, v12, Lrlh;->a:I

    if-ne v13, v6, :cond_2a

    const/4 v13, 0x1

    add-int/lit8 v24, v7, 0x1

    iget-object v12, v12, Lkjh;->b:Lu4h;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lu4h;->l(I)V

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v13

    iget-object v6, v14, Lffe;->d:Lvfe;

    iget-object v6, v6, Lvfe;->a:Lsfe;

    move/from16 v28, v10

    iget-object v10, v1, Lufe;->a:Lbfe;

    sget v29, Lkfh;->a:I

    move-object/from16 v29, v3

    iget-object v3, v1, Lufe;->g:[I

    invoke-virtual {v12}, Lu4h;->J()I

    move-result v30

    aput v30, v3, v7

    iget-object v3, v1, Lufe;->f:[J

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    iget-wide v8, v1, Lufe;->b:J

    aput-wide v8, v3, v7

    const/16 v20, 0x1

    and-int/lit8 v32, v13, 0x1

    if-eqz v32, :cond_17

    move/from16 v32, v15

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v15

    move-object/from16 v33, v14

    int-to-long v14, v15

    add-long/2addr v8, v14

    aput-wide v8, v3, v7

    :goto_14
    const/4 v3, 0x4

    goto :goto_15

    :cond_17
    move-object/from16 v33, v14

    move/from16 v32, v15

    goto :goto_14

    :goto_15
    and-int/lit8 v8, v13, 0x4

    if-eqz v8, :cond_18

    const/4 v15, 0x1

    goto :goto_16

    :cond_18
    const/4 v15, 0x0

    :goto_16
    iget v3, v10, Lbfe;->d:I

    if-eqz v15, :cond_19

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v8

    goto :goto_17

    :cond_19
    move v8, v3

    :goto_17
    and-int/lit16 v9, v13, 0x100

    and-int/lit16 v14, v13, 0x200

    move/from16 v34, v3

    and-int/lit16 v3, v13, 0x400

    and-int/lit16 v13, v13, 0x800

    move/from16 v35, v8

    iget-object v8, v6, Lsfe;->i:[J

    if-eqz v8, :cond_1e

    move-object/from16 v36, v5

    array-length v5, v8

    move-object/from16 v37, v2

    const/4 v2, 0x1

    if-ne v5, v2, :cond_1a

    iget-object v2, v6, Lsfe;->j:[J

    if-nez v2, :cond_1b

    :cond_1a
    :goto_18
    move/from16 v38, v9

    move/from16 v39, v13

    move v5, v14

    :goto_19
    const-wide/16 v26, 0x0

    goto :goto_1b

    :cond_1b
    const/4 v5, 0x0

    aget-wide v38, v8, v5

    const-wide/16 v26, 0x0

    cmp-long v5, v38, v26

    if-nez v5, :cond_1d

    move/from16 v38, v9

    move/from16 v39, v13

    move v5, v14

    :cond_1c
    const/4 v8, 0x0

    goto :goto_1a

    :cond_1d
    move v8, v13

    move v5, v14

    iget-wide v13, v6, Lsfe;->d:J

    sget-object v46, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v40, 0xf4240

    move-wide/from16 v42, v13

    move-object/from16 v44, v46

    invoke-static/range {v38 .. v44}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v13

    const/16 v21, 0x0

    aget-wide v40, v2, v21

    const-wide/32 v42, 0xf4240

    move/from16 v39, v8

    move/from16 v38, v9

    iget-wide v8, v6, Lsfe;->c:J

    move-wide/from16 v44, v8

    invoke-static/range {v40 .. v46}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    add-long/2addr v13, v8

    iget-wide v8, v6, Lsfe;->e:J

    cmp-long v8, v13, v8

    if-gez v8, :cond_1c

    goto :goto_19

    :goto_1a
    aget-wide v13, v2, v8

    move-wide/from16 v26, v13

    goto :goto_1b

    :cond_1e
    move-object/from16 v37, v2

    move-object/from16 v36, v5

    goto :goto_18

    :goto_1b
    iget-object v2, v1, Lufe;->h:[I

    iget-object v8, v1, Lufe;->i:[J

    iget-object v9, v1, Lufe;->j:[Z

    iget v13, v6, Lsfe;->b:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1f

    const/4 v13, 0x1

    and-int/lit8 v14, v4, 0x1

    if-eqz v14, :cond_1f

    const/4 v13, 0x1

    goto :goto_1c

    :cond_1f
    const/4 v13, 0x0

    :goto_1c
    iget-object v14, v1, Lufe;->g:[I

    aget v7, v14, v7

    add-int/2addr v7, v11

    move/from16 v47, v13

    iget-wide v13, v6, Lsfe;->c:J

    move-object v6, v8

    move-object/from16 v48, v9

    iget-wide v8, v1, Lufe;->p:J

    :goto_1d
    if-ge v11, v7, :cond_29

    if-eqz v38, :cond_20

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v40

    move/from16 v49, v4

    move/from16 v4, v40

    goto :goto_1e

    :cond_20
    move/from16 v49, v4

    iget v4, v10, Lbfe;->b:I

    :goto_1e
    invoke-static {v4}, Lgfe;->c(I)I

    if-eqz v5, :cond_21

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v40

    move/from16 v50, v5

    move/from16 v5, v40

    goto :goto_1f

    :cond_21
    move/from16 v50, v5

    iget v5, v10, Lbfe;->c:I

    :goto_1f
    invoke-static {v5}, Lgfe;->c(I)I

    if-eqz v3, :cond_22

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v40

    move/from16 v51, v40

    goto :goto_20

    :cond_22
    if-nez v11, :cond_24

    if-eqz v15, :cond_23

    move/from16 v51, v35

    const/4 v11, 0x0

    goto :goto_20

    :cond_23
    const/4 v11, 0x0

    :cond_24
    move/from16 v51, v34

    :goto_20
    if-eqz v39, :cond_25

    invoke-virtual {v12}, Lu4h;->A()I

    move-result v40

    move/from16 v52, v3

    move/from16 v53, v4

    move/from16 v3, v40

    goto :goto_21

    :cond_25
    move/from16 v52, v3

    move/from16 v53, v4

    const/4 v3, 0x0

    :goto_21
    int-to-long v3, v3

    add-long/2addr v3, v8

    sub-long v40, v3, v26

    const-wide/32 v42, 0xf4240

    sget-object v46, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v44, v13

    invoke-static/range {v40 .. v46}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    aput-wide v3, v6, v11

    move/from16 v40, v7

    iget-boolean v7, v1, Lufe;->q:Z

    if-nez v7, :cond_26

    move-object/from16 v7, v33

    move-object/from16 v33, v10

    iget-object v10, v7, Lffe;->d:Lvfe;

    move-object/from16 v41, v12

    move-wide/from16 v42, v13

    iget-wide v12, v10, Lvfe;->h:J

    add-long/2addr v3, v12

    aput-wide v3, v6, v11

    goto :goto_22

    :cond_26
    move-object/from16 v41, v12

    move-wide/from16 v42, v13

    move-object/from16 v7, v33

    move-object/from16 v33, v10

    :goto_22
    aput v5, v2, v11

    const/16 v3, 0x10

    shr-int/lit8 v4, v51, 0x10

    const/4 v3, 0x1

    and-int/2addr v4, v3

    if-nez v4, :cond_27

    if-eqz v47, :cond_28

    if-nez v11, :cond_27

    move v4, v3

    const/4 v11, 0x0

    goto :goto_23

    :cond_27
    const/4 v4, 0x0

    goto :goto_23

    :cond_28
    move v4, v3

    :goto_23
    aput-boolean v4, v48, v11

    move/from16 v4, v53

    int-to-long v4, v4

    add-long/2addr v8, v4

    add-int/2addr v11, v3

    move-object/from16 v10, v33

    move-object/from16 v12, v41

    move-wide/from16 v13, v42

    move/from16 v4, v49

    move/from16 v5, v50

    move/from16 v3, v52

    move-object/from16 v33, v7

    move/from16 v7, v40

    goto/16 :goto_1d

    :cond_29
    move/from16 v49, v4

    move/from16 v40, v7

    move-object/from16 v7, v33

    const/4 v3, 0x1

    iput-wide v8, v1, Lufe;->p:J

    move-object v14, v7

    move/from16 v7, v24

    move/from16 v11, v40

    goto :goto_24

    :cond_2a
    move-object/from16 v37, v2

    move-object/from16 v29, v3

    move/from16 v49, v4

    move-object/from16 v36, v5

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move/from16 v28, v10

    move/from16 v32, v15

    const/4 v3, 0x1

    :goto_24
    add-int/2addr v0, v3

    move/from16 v10, v28

    move-object/from16 v3, v29

    move-object/from16 v8, v30

    move-object/from16 v9, v31

    move/from16 v15, v32

    move-object/from16 v5, v36

    move-object/from16 v2, v37

    move/from16 v4, v49

    const v6, 0x7472756e

    goto/16 :goto_13

    :cond_2b
    move-object/from16 v37, v2

    move-object/from16 v29, v3

    move/from16 v49, v4

    move-object/from16 v36, v5

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move/from16 v32, v15

    iget-object v0, v14, Lffe;->d:Lvfe;

    iget-object v0, v0, Lvfe;->a:Lsfe;

    iget-object v2, v1, Lufe;->a:Lbfe;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, Lbfe;->a:I

    invoke-virtual {v0, v2}, Lsfe;->b(I)Ltfe;

    move-result-object v0

    const v2, 0x7361697a

    move-object/from16 v9, v31

    invoke-virtual {v9, v2}, Lmih;->c(I)Lkjh;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v0, Ltfe;->d:I

    iget-object v2, v2, Lkjh;->b:Lu4h;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->A()I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2c

    invoke-virtual {v2, v4}, Lu4h;->m(I)V

    :cond_2c
    invoke-virtual {v2}, Lu4h;->G()I

    move-result v4

    invoke-virtual {v2}, Lu4h;->J()I

    move-result v5

    iget v6, v1, Lufe;->e:I

    if-gt v5, v6, :cond_31

    if-nez v4, :cond_2f

    iget-object v4, v1, Lufe;->l:[Z

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_25
    if-ge v15, v5, :cond_2e

    invoke-virtual {v2}, Lu4h;->G()I

    move-result v7

    add-int/2addr v6, v7

    if-le v7, v3, :cond_2d

    const/4 v7, 0x1

    goto :goto_26

    :cond_2d
    const/4 v7, 0x0

    :goto_26
    aput-boolean v7, v4, v15

    const/4 v7, 0x1

    add-int/2addr v15, v7

    goto :goto_25

    :cond_2e
    const/4 v3, 0x0

    goto :goto_28

    :cond_2f
    if-le v4, v3, :cond_30

    const/4 v15, 0x1

    goto :goto_27

    :cond_30
    const/4 v15, 0x0

    :goto_27
    mul-int v6, v4, v5

    iget-object v2, v1, Lufe;->l:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v5, v15}, Ljava/util/Arrays;->fill([ZIIZ)V

    :goto_28
    iget-object v2, v1, Lufe;->l:[Z

    iget v4, v1, Lufe;->e:I

    invoke-static {v2, v5, v4, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v6, :cond_32

    invoke-virtual {v1, v6}, Lufe;->a(I)V

    goto :goto_29

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saiz sample count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is greater than fragment sample count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_32
    :goto_29
    const v2, 0x7361696f

    invoke-virtual {v9, v2}, Lmih;->c(I)Lkjh;

    move-result-object v2

    if-eqz v2, :cond_35

    iget-object v2, v2, Lkjh;->b:Lu4h;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->A()I

    move-result v4

    const/4 v5, 0x1

    and-int/lit8 v6, v4, 0x1

    if-ne v6, v5, :cond_33

    invoke-virtual {v2, v3}, Lu4h;->m(I)V

    :cond_33
    invoke-virtual {v2}, Lu4h;->J()I

    move-result v3

    if-ne v3, v5, :cond_36

    invoke-static {v4}, Lafe;->a(I)I

    move-result v3

    iget-wide v4, v1, Lufe;->c:J

    if-nez v3, :cond_34

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v2

    goto :goto_2a

    :cond_34
    invoke-virtual {v2}, Lu4h;->Q()J

    move-result-wide v2

    :goto_2a
    add-long/2addr v4, v2

    iput-wide v4, v1, Lufe;->c:J

    :cond_35
    const/4 v2, 0x0

    goto :goto_2b

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected saio entry count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :goto_2b
    const v3, 0x73656e63

    invoke-virtual {v9, v3}, Lmih;->c(I)Lkjh;

    move-result-object v3

    if-eqz v3, :cond_37

    iget-object v3, v3, Lkjh;->b:Lu4h;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lgfe;->i(Lu4h;ILufe;)V

    :cond_37
    if-eqz v0, :cond_38

    iget-object v0, v0, Ltfe;->b:Ljava/lang/String;

    move-object v5, v0

    goto :goto_2c

    :cond_38
    move-object v5, v2

    :goto_2c
    move-object v0, v2

    move-object v3, v0

    const/4 v15, 0x0

    :goto_2d
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_3b

    move-object/from16 v11, v37

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkjh;

    iget-object v6, v4, Lkjh;->b:Lu4h;

    iget v4, v4, Lrlh;->a:I

    const v7, 0x73626770

    const v8, 0x73656967

    if-ne v4, v7, :cond_3a

    const/16 v12, 0xc

    invoke-virtual {v6, v12}, Lu4h;->l(I)V

    invoke-virtual {v6}, Lu4h;->A()I

    move-result v4

    if-ne v4, v8, :cond_39

    move-object v0, v6

    :cond_39
    :goto_2e
    const/4 v4, 0x1

    goto :goto_2f

    :cond_3a
    const/16 v12, 0xc

    const v7, 0x73677064

    if-ne v4, v7, :cond_39

    invoke-virtual {v6, v12}, Lu4h;->l(I)V

    invoke-virtual {v6}, Lu4h;->A()I

    move-result v4

    if-ne v4, v8, :cond_39

    move-object v3, v6

    goto :goto_2e

    :goto_2f
    add-int/2addr v15, v4

    move-object/from16 v37, v11

    goto :goto_2d

    :cond_3b
    move-object/from16 v11, v37

    const/4 v4, 0x1

    const/16 v12, 0xc

    if-eqz v0, :cond_3c

    if-nez v3, :cond_3d

    :cond_3c
    const/4 v13, 0x4

    const/4 v14, 0x2

    goto/16 :goto_32

    :cond_3d
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lu4h;->l(I)V

    invoke-virtual {v0}, Lu4h;->A()I

    move-result v7

    invoke-static {v7}, Lafe;->a(I)I

    move-result v7

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Lu4h;->m(I)V

    if-ne v7, v4, :cond_3e

    invoke-virtual {v0, v13}, Lu4h;->m(I)V

    :cond_3e
    invoke-virtual {v0}, Lu4h;->A()I

    move-result v0

    if-ne v0, v4, :cond_44

    invoke-virtual {v3, v6}, Lu4h;->l(I)V

    invoke-virtual {v3}, Lu4h;->A()I

    move-result v0

    invoke-static {v0}, Lafe;->a(I)I

    move-result v0

    invoke-virtual {v3, v13}, Lu4h;->m(I)V

    if-ne v0, v4, :cond_40

    invoke-virtual {v3}, Lu4h;->O()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3f

    const/4 v14, 0x2

    goto :goto_30

    :cond_3f
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_40
    const/4 v14, 0x2

    if-lt v0, v14, :cond_41

    invoke-virtual {v3, v13}, Lu4h;->m(I)V

    :cond_41
    :goto_30
    invoke-virtual {v3}, Lu4h;->O()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_43

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lu4h;->m(I)V

    invoke-virtual {v3}, Lu4h;->G()I

    move-result v4

    and-int/lit16 v6, v4, 0xf0

    shr-int/lit8 v8, v6, 0x4

    and-int/lit8 v9, v4, 0xf

    invoke-virtual {v3}, Lu4h;->G()I

    move-result v4

    if-ne v4, v0, :cond_45

    invoke-virtual {v3}, Lu4h;->G()I

    move-result v6

    const/16 v4, 0x10

    new-array v7, v4, [B

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v10, v4}, Lu4h;->h([BII)V

    if-nez v6, :cond_42

    invoke-virtual {v3}, Lu4h;->G()I

    move-result v2

    new-array v4, v2, [B

    invoke-virtual {v3, v4, v10, v2}, Lu4h;->h([BII)V

    move-object v10, v4

    goto :goto_31

    :cond_42
    move-object v10, v2

    :goto_31
    iput-boolean v0, v1, Lufe;->k:Z

    new-instance v0, Ltfe;

    const/4 v4, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ltfe;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lufe;->m:Ltfe;

    goto :goto_32

    :cond_43
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_44
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_45
    :goto_32
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v15, 0x0

    :goto_33
    if-ge v15, v0, :cond_48

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkjh;

    iget v3, v2, Lrlh;->a:I

    const v4, 0x75756964

    if-ne v3, v4, :cond_47

    iget-object v2, v2, Lkjh;->b:Lu4h;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lu4h;->l(I)V

    move-object/from16 v5, v36

    const/4 v4, 0x0

    const/16 v7, 0x10

    invoke-virtual {v2, v5, v4, v7}, Lu4h;->h([BII)V

    sget-object v6, Lgfe;->J:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-static {v2, v7, v1}, Lgfe;->i(Lu4h;ILufe;)V

    :cond_46
    :goto_34
    const/4 v2, 0x1

    goto :goto_35

    :cond_47
    move-object/from16 v5, v36

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v7, 0x10

    goto :goto_34

    :goto_35
    add-int/2addr v15, v2

    move-object/from16 v36, v5

    goto :goto_33

    :cond_48
    move-object/from16 v5, v36

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v7, 0x10

    goto :goto_36

    :cond_49
    move-object/from16 v29, v3

    move/from16 v49, v4

    move-object/from16 v23, v6

    move/from16 v25, v7

    move-object/from16 v30, v8

    move/from16 v32, v15

    const/16 v7, 0x10

    const/16 v12, 0xc

    const/4 v13, 0x4

    const/4 v14, 0x2

    move v4, v1

    move v3, v2

    const/4 v2, 0x1

    :goto_36
    add-int/lit8 v15, v32, 0x1

    move-object/from16 v0, p0

    move v2, v3

    move v1, v4

    move-object/from16 v6, v23

    move/from16 v7, v25

    move-object/from16 v3, v29

    move-object/from16 v8, v30

    move/from16 v4, v49

    goto/16 :goto_8

    :cond_4a
    move v4, v1

    move-object/from16 v29, v3

    move-object v0, v8

    const/16 v7, 0x10

    const/4 v13, 0x4

    const/4 v14, 0x2

    move v3, v2

    const/4 v2, 0x1

    iget-object v0, v0, Lmih;->c:Ljava/util/List;

    invoke-static {v0}, Lgfe;->g(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v15, v4

    :goto_37
    if-ge v15, v1, :cond_4b

    move-object/from16 v5, v29

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lffe;

    invoke-virtual {v6, v0}, Lffe;->j(Lcom/google/android/gms/internal/ads/zzs;)V

    add-int/2addr v15, v2

    goto :goto_37

    :cond_4b
    move-object/from16 v5, v29

    move-object/from16 v1, p0

    iget-wide v8, v1, Lgfe;->w:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4f

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v15, v4

    :goto_38
    if-ge v15, v0, :cond_4e

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lffe;

    iget-wide v8, v1, Lgfe;->w:J

    iget v4, v2, Lffe;->f:I

    :goto_39
    iget-object v6, v2, Lffe;->b:Lufe;

    iget v10, v6, Lufe;->e:I

    if-ge v4, v10, :cond_4d

    iget-object v10, v6, Lufe;->i:[J

    aget-wide v10, v10, v4

    cmp-long v10, v10, v8

    if-gtz v10, :cond_4d

    iget-object v6, v6, Lufe;->j:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_4c

    iput v4, v2, Lffe;->i:I

    :cond_4c
    const/4 v10, 0x1

    add-int/2addr v4, v10

    goto :goto_39

    :cond_4d
    const/4 v10, 0x1

    add-int/2addr v15, v10

    goto :goto_38

    :cond_4e
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    iput-wide v8, v1, Lgfe;->w:J

    :cond_4f
    :goto_3a
    move-object v0, v1

    move v2, v3

    goto/16 :goto_0

    :cond_50
    move-object v1, v0

    move v3, v2

    move-object v0, v8

    const/16 v7, 0x10

    const/4 v10, 0x1

    const/4 v13, 0x4

    const/4 v14, 0x2

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmih;

    invoke-virtual {v2, v0}, Lmih;->d(Lmih;)V

    goto :goto_3a

    :cond_51
    move-object v1, v0

    invoke-direct/range {p0 .. p0}, Lgfe;->h()V

    return-void
.end method

.method public final synthetic zzc()Lc9e;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lgfe;->o:Lcom/google/android/gms/internal/ads/zzfww;

    return-object p0
.end method
