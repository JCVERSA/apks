.class public final Lvde;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:F

.field public G:F

.field public H:F

.field public I:F

.field public J:F

.field public K:F

.field public L:F

.field public M:F

.field public N:F

.field public O:F

.field public P:[B

.field public Q:I

.field public R:I

.field public S:I

.field public T:J

.field public U:J

.field public V:Lsae;

.field public W:Z

.field public X:Z

.field public Y:Ljava/lang/String;

.field public Z:Lrae;

.field public a:Z

.field public a0:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:[B

.field public k:Lqae;

.field public l:[B

.field public m:Lcom/google/android/gms/internal/ads/zzs;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:F

.field public v:F

.field public w:F

.field public x:[B

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lvde;->n:I

    iput v0, p0, Lvde;->o:I

    iput v0, p0, Lvde;->p:I

    iput v0, p0, Lvde;->q:I

    iput v0, p0, Lvde;->r:I

    const/4 v1, 0x0

    iput v1, p0, Lvde;->s:I

    iput v0, p0, Lvde;->t:I

    const/4 v2, 0x0

    iput v2, p0, Lvde;->u:F

    iput v2, p0, Lvde;->v:F

    iput v2, p0, Lvde;->w:F

    const/4 v2, 0x0

    iput-object v2, p0, Lvde;->x:[B

    iput v0, p0, Lvde;->y:I

    iput-boolean v1, p0, Lvde;->z:Z

    iput v0, p0, Lvde;->A:I

    iput v0, p0, Lvde;->B:I

    iput v0, p0, Lvde;->C:I

    const/16 v1, 0x3e8

    iput v1, p0, Lvde;->D:I

    const/16 v1, 0xc8

    iput v1, p0, Lvde;->E:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lvde;->F:F

    iput v1, p0, Lvde;->G:F

    iput v1, p0, Lvde;->H:F

    iput v1, p0, Lvde;->I:F

    iput v1, p0, Lvde;->J:F

    iput v1, p0, Lvde;->K:F

    iput v1, p0, Lvde;->L:F

    iput v1, p0, Lvde;->M:F

    iput v1, p0, Lvde;->N:F

    iput v1, p0, Lvde;->O:F

    const/4 v1, 0x1

    iput v1, p0, Lvde;->Q:I

    iput v0, p0, Lvde;->R:I

    const/16 v0, 0x1f40

    iput v0, p0, Lvde;->S:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lvde;->T:J

    iput-wide v2, p0, Lvde;->U:J

    iput-boolean v1, p0, Lvde;->X:Z

    const-string v0, "eng"

    iput-object v0, p0, Lvde;->Y:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lvde;)I
    .locals 0

    iget p0, p0, Lvde;->h:I

    return p0
.end method

.method public static bridge synthetic b(Lvde;I)V
    .locals 0

    iput p1, p0, Lvde;->h:I

    return-void
.end method

.method public static bridge synthetic c(Lvde;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lvde;->Y:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lvde;)V
    .locals 0

    iget-object p0, p0, Lvde;->Z:Lrae;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static f(Lu4h;)Landroid/util/Pair;
    .locals 6

    const/16 v0, 0x10

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->M()J

    move-result-wide v2

    const-wide/32 v4, 0x58564944

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/divx"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const-wide/32 v4, 0x33363248

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/3gpp"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const-wide/32 v4, 0x31435657

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object p0

    :goto_0
    array-length v2, p0

    add-int/lit8 v3, v2, -0x4

    if-ge v0, v3, :cond_3

    aget-byte v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    if-nez v3, :cond_2

    aget-byte v3, p0, v4

    if-nez v3, :cond_2

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p0, v3

    const/16 v5, 0xf

    if-ne v3, v5, :cond_2

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    const-string v2, "video/wvc1"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    const-string p0, "Failed to find FourCC VC1 initialization data"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const-string p0, "MatroskaExtractor"

    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {p0, v0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/x-unknown"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_0
    const-string p0, "Error parsing FourCC private data"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method

.method public static g([B)Ljava/util/List;
    .locals 10

    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    aget-byte v3, p0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    move v6, v2

    move v5, v3

    :goto_0
    aget-byte v7, p0, v5

    add-int/lit8 v5, v5, 0x1

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_0

    add-int/lit16 v6, v6, 0xff

    goto :goto_0

    :cond_0
    add-int/2addr v6, v7

    move v7, v2

    :goto_1
    aget-byte v9, p0, v5

    add-int/lit8 v5, v5, 0x1

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_1

    add-int/lit16 v7, v7, 0xff

    goto :goto_1

    :cond_1
    add-int/2addr v7, v9

    aget-byte v8, p0, v5

    if-ne v8, v3, :cond_4

    new-array v3, v6, [B

    invoke-static {p0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    aget-byte v6, p0, v5

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    add-int/2addr v5, v7

    aget-byte v6, p0, v5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    array-length v6, p0

    sub-int/2addr v6, v5

    new-array v7, v6, [B

    invoke-static {p0, v5, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method

.method public static h(Lu4h;)Z
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lu4h;->E()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lu4h;->l(I)V

    invoke-virtual {p0}, Lu4h;->N()J

    move-result-wide v4

    invoke-static {}, Lxde;->c()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lu4h;->N()J

    move-result-wide v4

    invoke-static {}, Lxde;->c()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v4, v6

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v3

    :catch_0
    const-string p0, "Error parsing MS/ACM codec private"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final e(Lf9e;I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lvde;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x10

    const/16 v5, 0x18

    const/16 v6, 0x20

    const/4 v8, 0x4

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x3

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "A_OPUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v12

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v10

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v11

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "V_AV1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_1

    :sswitch_19
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_1a
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_1b
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto :goto_1

    :sswitch_1c
    const-string v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_1d
    const-string v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto :goto_1

    :sswitch_1e
    const-string v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_1

    :sswitch_1f
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_1

    :sswitch_20
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v14, "application/vobsub"

    const-string v15, "application/pgs"

    const-string v7, "application/dvbsubs"

    const-string v16, "audio/raw"

    const-string v17, "audio/x-unknown"

    const-string v4, "MatroskaExtractor"

    const/4 v13, 0x0

    const-string v9, ". Setting mimeType to audio/x-unknown"

    packed-switch v2, :pswitch_data_0

    const-string v0, "Unrecognized codec identifier."

    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :pswitch_0
    new-array v2, v8, [B

    invoke-virtual {v0, v1}, Lvde;->i(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v11, v2, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v1

    move-object/from16 v16, v7

    :goto_2
    move-object v3, v13

    :goto_3
    const/4 v2, -0x1

    :goto_4
    const/4 v8, -0x1

    goto/16 :goto_e

    :pswitch_1
    move-object v1, v13

    move-object v3, v1

    move-object/from16 v16, v15

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v1}, Lvde;->i(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v1

    move-object v3, v13

    move-object/from16 v16, v14

    goto :goto_3

    :pswitch_3
    const-string v16, "text/vtt"

    :goto_5
    move-object v1, v13

    move-object v3, v1

    goto :goto_3

    :pswitch_4
    invoke-static {}, Lxde;->m()[B

    move-result-object v1

    iget-object v2, v0, Lvde;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lvde;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfww;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v1

    const-string v16, "text/x-ssa"

    goto :goto_2

    :pswitch_5
    const-string v16, "application/x-subrip"

    goto :goto_5

    :pswitch_6
    iget v1, v0, Lvde;->R:I

    if-ne v1, v6, :cond_2

    :cond_1
    :goto_6
    move-object v1, v13

    move-object v3, v1

    const/4 v2, -0x1

    goto/16 :goto_e

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported floating point PCM bit depth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move-object v1, v13

    move-object v3, v1

    move-object/from16 v16, v17

    goto :goto_3

    :pswitch_7
    iget v1, v0, Lvde;->R:I

    if-ne v1, v10, :cond_3

    move v8, v12

    goto :goto_6

    :cond_3
    if-ne v1, v3, :cond_4

    const/high16 v8, 0x10000000

    goto :goto_6

    :cond_4
    if-ne v1, v5, :cond_5

    const/high16 v8, 0x50000000

    goto :goto_6

    :cond_5
    if-ne v1, v6, :cond_6

    const/high16 v8, 0x60000000

    goto :goto_6

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported big endian PCM bit depth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_8
    iget v1, v0, Lvde;->R:I

    invoke-static {v1}, Lkfh;->I(I)I

    move-result v8

    if-nez v8, :cond_1

    iget v1, v0, Lvde;->R:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported little endian PCM bit depth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_9
    new-instance v1, Lu4h;

    iget-object v2, v0, Lvde;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lvde;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lu4h;-><init>([B)V

    invoke-static {v1}, Lvde;->h(Lu4h;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v0, Lvde;->R:I

    invoke-static {v1}, Lkfh;->I(I)I

    move-result v8

    if-nez v8, :cond_1

    iget v1, v0, Lvde;->R:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported PCM bit depth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    const-string v1, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    invoke-static {v4, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_a
    invoke-virtual {v0, v1}, Lvde;->i(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v16, "audio/flac"

    goto/16 :goto_2

    :pswitch_b
    const-string v16, "audio/vnd.dts.hd"

    goto/16 :goto_5

    :pswitch_c
    const-string v16, "audio/vnd.dts"

    goto/16 :goto_5

    :pswitch_d
    new-instance v1, Lsae;

    invoke-direct {v1}, Lsae;-><init>()V

    iput-object v1, v0, Lvde;->V:Lsae;

    const-string v16, "audio/true-hd"

    goto/16 :goto_5

    :pswitch_e
    const-string v16, "audio/eac3"

    goto/16 :goto_5

    :pswitch_f
    const-string v16, "audio/ac3"

    goto/16 :goto_5

    :pswitch_10
    const/16 v1, 0x1000

    const-string v16, "audio/mpeg"

    :goto_8
    move v2, v1

    move-object v1, v13

    move-object v3, v1

    goto/16 :goto_4

    :pswitch_11
    const/16 v1, 0x1000

    const-string v16, "audio/mpeg-L2"

    goto :goto_8

    :pswitch_12
    invoke-virtual {v0, v1}, Lvde;->i(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lvde;->l:[B

    invoke-static {v2}, Lp7e;->a([B)Ln7e;

    move-result-object v2

    iget v3, v2, Ln7e;->a:I

    iput v3, v0, Lvde;->S:I

    iget v3, v2, Ln7e;->b:I

    iput v3, v0, Lvde;->Q:I

    iget-object v2, v2, Ln7e;->c:Ljava/lang/String;

    const-string v16, "audio/mp4a-latm"

    move-object v3, v2

    goto/16 :goto_3

    :pswitch_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lvde;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lvde;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v4, v0, Lvde;->T:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v3, v0, Lvde;->U:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x1680

    const-string v16, "audio/opus"

    :goto_9
    move-object v3, v13

    goto/16 :goto_4

    :pswitch_14
    invoke-virtual {v0, v1}, Lvde;->i(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lvde;->g([B)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x2000

    const-string v16, "audio/vorbis"

    goto :goto_9

    :pswitch_15
    const-string v16, "video/x-unknown"

    goto/16 :goto_5

    :pswitch_16
    new-instance v1, Lu4h;

    iget-object v2, v0, Lvde;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lvde;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lu4h;-><init>([B)V

    invoke-static {v1}, Lvde;->f(Lu4h;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    goto/16 :goto_2

    :pswitch_17
    new-instance v1, Lu4h;

    iget-object v2, v0, Lvde;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lvde;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lu4h;-><init>([B)V

    invoke-static {v1}, Lr9e;->a(Lu4h;)Lr9e;

    move-result-object v1

    iget-object v2, v1, Lr9e;->a:Ljava/util/List;

    iget v3, v1, Lr9e;->b:I

    iput v3, v0, Lvde;->a0:I

    iget-object v1, v1, Lr9e;->l:Ljava/lang/String;

    const-string v16, "video/hevc"

    :goto_a
    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_3

    :pswitch_18
    new-instance v1, Lu4h;

    iget-object v2, v0, Lvde;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lvde;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lu4h;-><init>([B)V

    invoke-static {v1}, Lb8e;->a(Lu4h;)Lb8e;

    move-result-object v1

    iget-object v2, v1, Lb8e;->a:Ljava/util/List;

    iget v3, v1, Lb8e;->b:I

    iput v3, v0, Lvde;->a0:I

    iget-object v1, v1, Lb8e;->l:Ljava/lang/String;

    const-string v16, "video/avc"

    goto :goto_a

    :pswitch_19
    iget-object v1, v0, Lvde;->l:[B

    if-nez v1, :cond_8

    move-object v1, v13

    goto :goto_b

    :cond_8
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_b
    const-string v16, "video/mp4v-es"

    goto/16 :goto_2

    :pswitch_1a
    const-string v16, "video/mpeg2"

    goto/16 :goto_5

    :pswitch_1b
    iget-object v1, v0, Lvde;->l:[B

    if-nez v1, :cond_9

    move-object v1, v13

    goto :goto_c

    :cond_9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v1

    :goto_c
    const-string v16, "video/av01"

    goto/16 :goto_2

    :pswitch_1c
    iget-object v1, v0, Lvde;->l:[B

    if-nez v1, :cond_a

    move-object v1, v13

    goto :goto_d

    :cond_a
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v1

    :goto_d
    const-string v16, "video/x-vnd.on2.vp9"

    goto/16 :goto_2

    :pswitch_1d
    const-string v16, "video/x-vnd.on2.vp8"

    goto/16 :goto_5

    :goto_e
    iget-object v4, v0, Lvde;->P:[B

    if-eqz v4, :cond_b

    new-instance v4, Lu4h;

    iget-object v5, v0, Lvde;->P:[B

    invoke-direct {v4, v5}, Lu4h;-><init>([B)V

    invoke-static {v4}, Lt8e;->a(Lu4h;)Lt8e;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v3, v4, Lt8e;->a:Ljava/lang/String;

    const-string v16, "video/dolby-vision"

    :cond_b
    move-object/from16 v4, v16

    iget-boolean v5, v0, Lvde;->X:Z

    iget-boolean v6, v0, Lvde;->W:Z

    const/4 v9, 0x1

    if-eq v9, v6, :cond_c

    move v6, v11

    goto :goto_f

    :cond_c
    const/4 v6, 0x2

    :goto_f
    or-int/2addr v5, v6

    new-instance v6, Lgpj;

    invoke-direct {v6}, Lgpj;-><init>()V

    invoke-static {v4}, Lbue;->h(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget v7, v0, Lvde;->Q:I

    invoke-virtual {v6, v7}, Lgpj;->b(I)Lgpj;

    iget v7, v0, Lvde;->S:I

    invoke-virtual {v6, v7}, Lgpj;->F(I)Lgpj;

    invoke-virtual {v6, v8}, Lgpj;->x(I)Lgpj;

    const/4 v7, 0x1

    goto/16 :goto_14

    :cond_d
    invoke-static {v4}, Lbue;->j(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget v7, v0, Lvde;->s:I

    if-nez v7, :cond_10

    iget v7, v0, Lvde;->q:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_e

    iget v7, v0, Lvde;->n:I

    :cond_e
    iput v7, v0, Lvde;->q:I

    iget v7, v0, Lvde;->r:I

    if-ne v7, v8, :cond_f

    iget v7, v0, Lvde;->o:I

    :cond_f
    iput v7, v0, Lvde;->r:I

    goto :goto_10

    :cond_10
    const/4 v8, -0x1

    :goto_10
    iget v7, v0, Lvde;->q:I

    const/high16 v9, -0x40800000    # -1.0f

    if-eq v7, v8, :cond_11

    iget v10, v0, Lvde;->r:I

    if-eq v10, v8, :cond_11

    iget v12, v0, Lvde;->o:I

    mul-int/2addr v12, v7

    iget v7, v0, Lvde;->n:I

    mul-int/2addr v7, v10

    int-to-float v10, v12

    int-to-float v7, v7

    div-float/2addr v10, v7

    goto :goto_11

    :cond_11
    move v10, v9

    :goto_11
    iget-boolean v7, v0, Lvde;->z:Z

    if-eqz v7, :cond_14

    iget v7, v0, Lvde;->F:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_13

    iget v7, v0, Lvde;->G:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_13

    iget v7, v0, Lvde;->H:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_13

    iget v7, v0, Lvde;->I:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_13

    iget v7, v0, Lvde;->J:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_13

    iget v7, v0, Lvde;->K:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_13

    iget v7, v0, Lvde;->L:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_13

    iget v7, v0, Lvde;->M:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_13

    iget v7, v0, Lvde;->N:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_13

    iget v7, v0, Lvde;->O:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_12

    goto :goto_12

    :cond_12
    const/16 v7, 0x19

    new-array v13, v7, [B

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->F:F

    const v12, 0x47435000    # 50000.0f

    mul-float/2addr v9, v12

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v9, v14

    float-to-int v9, v9

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->G:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v14

    float-to-int v9, v9

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->H:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v14

    float-to-int v9, v9

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->I:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v14

    float-to-int v9, v9

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->J:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v14

    float-to-int v9, v9

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->K:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v14

    float-to-int v9, v9

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->L:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v14

    float-to-int v9, v9

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->M:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v14

    float-to-int v9, v9

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->N:F

    add-float/2addr v9, v14

    float-to-int v9, v9

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->O:F

    add-float/2addr v9, v14

    float-to-int v9, v9

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->D:I

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v9, v0, Lvde;->E:I

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_13
    :goto_12
    new-instance v7, Lp1j;

    invoke-direct {v7}, Lp1j;-><init>()V

    iget v9, v0, Lvde;->A:I

    invoke-virtual {v7, v9}, Lp1j;->c(I)Lp1j;

    iget v9, v0, Lvde;->C:I

    invoke-virtual {v7, v9}, Lp1j;->b(I)Lp1j;

    iget v9, v0, Lvde;->B:I

    invoke-virtual {v7, v9}, Lp1j;->d(I)Lp1j;

    invoke-virtual {v7, v13}, Lp1j;->e([B)Lp1j;

    iget v9, v0, Lvde;->p:I

    invoke-virtual {v7, v9}, Lp1j;->f(I)Lp1j;

    iget v9, v0, Lvde;->p:I

    invoke-virtual {v7, v9}, Lp1j;->a(I)Lp1j;

    invoke-virtual {v7}, Lp1j;->g()Lh6j;

    move-result-object v13

    :cond_14
    iget-object v7, v0, Lvde;->b:Ljava/lang/String;

    if-eqz v7, :cond_15

    invoke-static {}, Lxde;->a()Ljava/util/Map;

    move-result-object v7

    iget-object v9, v0, Lvde;->b:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-static {}, Lxde;->a()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v0, Lvde;->b:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v8, v7

    :cond_15
    iget v7, v0, Lvde;->t:I

    if-nez v7, :cond_1a

    iget v7, v0, Lvde;->u:F

    const/4 v9, 0x0

    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_1a

    iget v7, v0, Lvde;->v:F

    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_1a

    iget v7, v0, Lvde;->w:F

    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_16

    goto :goto_13

    :cond_16
    iget v7, v0, Lvde;->w:F

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_17

    const/16 v11, 0x5a

    goto :goto_13

    :cond_17
    iget v7, v0, Lvde;->w:F

    const/high16 v9, -0x3ccc0000    # -180.0f

    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_18

    iget v7, v0, Lvde;->w:F

    const/high16 v9, 0x43340000    # 180.0f

    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_19

    :cond_18
    const/16 v11, 0xb4

    goto :goto_13

    :cond_19
    iget v7, v0, Lvde;->w:F

    const/high16 v9, -0x3d4c0000    # -90.0f

    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_1a

    const/16 v11, 0x10e

    goto :goto_13

    :cond_1a
    move v11, v8

    :goto_13
    iget v7, v0, Lvde;->n:I

    invoke-virtual {v6, v7}, Lgpj;->J(I)Lgpj;

    iget v7, v0, Lvde;->o:I

    invoke-virtual {v6, v7}, Lgpj;->m(I)Lgpj;

    invoke-virtual {v6, v10}, Lgpj;->z(F)Lgpj;

    invoke-virtual {v6, v11}, Lgpj;->D(I)Lgpj;

    iget-object v7, v0, Lvde;->x:[B

    invoke-virtual {v6, v7}, Lgpj;->B([B)Lgpj;

    iget v7, v0, Lvde;->y:I

    invoke-virtual {v6, v7}, Lgpj;->H(I)Lgpj;

    invoke-virtual {v6, v13}, Lgpj;->d(Lh6j;)Lgpj;

    const/4 v7, 0x2

    goto :goto_14

    :cond_1b
    const-string v8, "application/x-subrip"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    const-string v8, "text/x-ssa"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    const-string v8, "text/vtt"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    :cond_1c
    move v7, v12

    goto :goto_14

    :cond_1d
    const-string v0, "Unexpected MIME type."

    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :goto_14
    iget-object v8, v0, Lvde;->b:Ljava/lang/String;

    if-eqz v8, :cond_1e

    invoke-static {}, Lxde;->a()Ljava/util/Map;

    move-result-object v8

    iget-object v9, v0, Lvde;->b:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    iget-object v8, v0, Lvde;->b:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lgpj;->q(Ljava/lang/String;)Lgpj;

    :cond_1e
    move/from16 v8, p2

    invoke-virtual {v6, v8}, Lgpj;->n(I)Lgpj;

    iget-boolean v8, v0, Lvde;->a:Z

    const/4 v9, 0x1

    if-eq v9, v8, :cond_1f

    const-string v8, "video/x-matroska"

    goto :goto_15

    :cond_1f
    const-string v8, "video/webm"

    :goto_15
    invoke-virtual {v6, v8}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {v6, v4}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v6, v2}, Lgpj;->t(I)Lgpj;

    iget-object v2, v0, Lvde;->Y:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    invoke-virtual {v6, v5}, Lgpj;->G(I)Lgpj;

    invoke-virtual {v6, v1}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v6, v3}, Lgpj;->c(Ljava/lang/String;)Lgpj;

    iget-object v1, v0, Lvde;->m:Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual {v6, v1}, Lgpj;->h(Lcom/google/android/gms/internal/ads/zzs;)Lgpj;

    invoke-virtual {v6}, Lgpj;->K()Lerj;

    move-result-object v1

    iget v2, v0, Lvde;->d:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v7}, Lf9e;->j(II)Lrae;

    move-result-object v2

    iput-object v2, v0, Lvde;->Z:Lrae;

    invoke-interface {v2, v1}, Lrae;->f(Lerj;)V

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
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/String;)[B
    .locals 0

    iget-object p0, p0, Lvde;->l:[B

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing CodecPrivate for codec "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method
