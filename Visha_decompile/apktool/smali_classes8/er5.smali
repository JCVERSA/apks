.class public abstract Ler5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzj3;
.implements Len6;


# static fields
.field public static final p:[J


# instance fields
.field public final a:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field public b:[B

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:[J

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x50

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Ler5;->p:[J

    return-void

    :array_0
    .array-data 8
        0x428a2f98d728ae22L    # 3.5989662528217666E12
        0x7137449123ef65cdL    # 2.367405559035152E237
        -0x4a3f043013b2c4d1L    # -9.0786554787018E-50
        -0x164a245a7e762444L
        0x3956c25bf348b538L
        0x59f111f1b605d019L    # 1.8054860536953294E125
        -0x6dc07d5b50e6b065L    # -8.717181310573585E-221
        -0x54e3a12a25927ee8L
        -0x27f855675cfcfdbeL    # -1.1656291332323638E116
        0x12835b0145706fbeL
        0x243185be4ee4b28cL    # 2.410773468256423E-134
        0x550c7dc3d5ffb4e2L    # 4.985403983718413E101
        0x72be5d74f27b896fL    # 5.183352230240388E244
        -0x7f214e01c4e9694fL
        -0x6423f958da38edcbL
        -0x3e640e8b3096d96cL    # -1.1720222785268623E8
        -0x1b64963e610eb52eL    # -4.339261227288659E176
        -0x1041b879c7b0da1dL    # -1.836300920646737E230
        0xfc19dc68b8cd5b5L    # 8.864787397362889E-233
        0x240ca1cc77ac9c65L    # 4.924067956729057E-135
        0x2de92c6f592b0275L    # 1.5818166760957606E-87
        0x4a7484aa6ea6e483L    # 4.79798724707082E50
        0x5cb0a9dcbd41fbd4L    # 3.100593885146353E138
        0x76f988da831153b5L    # 1.2864857866870779E265
        -0x67c1aead11992055L
        -0x57ce3992d24bcdf0L    # -4.511217866312199E-115
        -0x4ffcd8376704dec1L    # -2.0678662886600765E-77
        -0x40a680384110f11cL    # -0.0015563440936014411
        -0x391ff40cc257703eL    # -2.603722742751637E33
        -0x2a586eb86cf558dbL    # -4.222814448133811E104
        0x6ca6351e003826fL
        0x142929670a0e6e70L
        0x27b70a8546d22ffcL
        0x2e1b21385c26c926L    # 1.3637893953385892E-86
        0x4d2c6dfc5ac42aedL    # 5.84763610164635E63
        0x53380d139d95b3dfL    # 7.838866619197482E92
        0x650a73548baf63deL    # 5.35921865865203E178
        0x766a0abb3c77b2a8L    # 2.5625906234442426E262
        -0x7e3d36d1b812511aL    # -3.506432391784029E-300
        -0x6d8dd37aeb7dcac5L    # -8.044358981173315E-220
        -0x5d40175eb30efc9cL
        -0x57e599b443bdcfffL
        -0x3db4748f2f07686fL    # -2.366070870891841E11
        -0x3893ae5cf9ab41d0L    # -1.17632082693375E36
        -0x2e6d17e62910ade8L    # -9.182337425192181E84
        -0x2966f9dbaa9a56f0L    # -1.4692477645833556E109
        -0xbf1ca7aa88edfd6L
        0x106aa07032bbd1b8L
        0x19a4c116b8d2d0c8L
        0x1e376c085141ab53L    # 4.067301537801791E-163
        0x2748774cdf8eeb99L    # 1.894937972556452E-119
        0x34b0bcb5e19b48a8L    # 6.82593759724882E-55
        0x391c0cb3c5c95a63L    # 1.3505399862746614E-33
        0x4ed8aa4ae3418acbL    # 6.809319594147137E71
        0x5b9cca4f7763e373L    # 2.0435436325319052E133
        0x682e6ff3d6b2b8a3L    # 6.943421982965376E193
        0x748f82ee5defb2fcL    # 2.887850816088868E253
        0x78a5636f43172f60L    # 1.4463210820003646E273
        -0x7b3787eb5e0f548eL
        -0x7338fdf7e59bc614L
        -0x6f410005dc9ce1d8L    # -5.111680914909667E-228
        -0x5baf9314217d4217L    # -9.03940504491957E-134
        -0x41065c084d3986ebL    # -2.445268471406536E-5
        -0x398e870d1c8dacd5L    # -2.2148969568888243E31
        -0x35d8c13115d99e64L    # -1.6986554718624063E49
        -0x2e794738de3f3df9L    # -5.517613964471652E84
        -0x15258229321f14e2L    # -5.315750124715331E206
        -0xa82b08011912e88L    # -8.801976642581914E257
        0x6f067aa72176fbaL
        0xa637dc5a2c898a6L
        0x113f9804bef90daeL
        0x1b710b35131c471bL
        0x28db77f523047d84L    # 7.138679721560702E-112
        0x32caab7b40c72493L    # 5.064907242937011E-64
        0x3c9ebe0a15c9bebcL    # 1.0665892261952011E-16
        0x431d67c49c100d4cL    # 2.069217113539411E15
        0x4cc5d4becb3e42b6L    # 7.016224550123326E61
        0x597f299cfc657e2aL    # 1.2875119238090917E123
        0x5fcb6fab3ad6faecL    # 2.873901462601813E153
        0x6c44198c4a475817L    # 3.3832852265175575E213
    .end array-data
.end method

.method public constructor <init>(Ler5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ler5;->b:[B

    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Ler5;->n:[J

    iget-object v0, p1, Ler5;->a:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Ler5;->a:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {p0, p1}, Ler5;->p(Ler5;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ler5;->b:[B

    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Ler5;->n:[J

    iput-object p1, p0, Ler5;->a:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/4 p1, 0x0

    iput p1, p0, Ler5;->c:I

    invoke-virtual {p0}, Ler5;->reset()V

    return-void
.end method


# virtual methods
.method public b(B)V
    .locals 4

    iget-object v0, p0, Ler5;->b:[B

    iget v1, p0, Ler5;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ler5;->c:I

    aput-byte p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ler5;->t([BI)V

    iput p1, p0, Ler5;->c:I

    :cond_0
    iget-wide v0, p0, Ler5;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ler5;->d:J

    return-void
.end method

.method public h()I
    .locals 0

    const/16 p0, 0x80

    return p0
.end method

.method public final i(JJJ)J
    .locals 0

    and-long/2addr p3, p1

    not-long p0, p1

    and-long/2addr p0, p5

    xor-long/2addr p0, p3

    return-wide p0
.end method

.method public final j(JJJ)J
    .locals 2

    and-long v0, p1, p3

    and-long p0, p1, p5

    xor-long/2addr p0, v0

    and-long p2, p3, p5

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method public final k(J)J
    .locals 6

    const/16 p0, 0x3f

    shl-long v0, p1, p0

    const/4 p0, 0x1

    ushr-long v2, p1, p0

    or-long/2addr v0, v2

    const/16 p0, 0x38

    shl-long v2, p1, p0

    const/16 p0, 0x8

    ushr-long v4, p1, p0

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 p0, 0x7

    ushr-long p0, p1, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public final l(J)J
    .locals 6

    const/16 p0, 0x2d

    shl-long v0, p1, p0

    const/16 p0, 0x13

    ushr-long v2, p1, p0

    or-long/2addr v0, v2

    const/4 p0, 0x3

    shl-long v2, p1, p0

    const/16 p0, 0x3d

    ushr-long v4, p1, p0

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 p0, 0x6

    ushr-long p0, p1, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public final m(J)J
    .locals 6

    const/16 p0, 0x24

    shl-long v0, p1, p0

    const/16 p0, 0x1c

    ushr-long v2, p1, p0

    or-long/2addr v0, v2

    const/16 p0, 0x1e

    shl-long v2, p1, p0

    const/16 p0, 0x22

    ushr-long v4, p1, p0

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 p0, 0x19

    shl-long v2, p1, p0

    const/16 p0, 0x27

    ushr-long p0, p1, p0

    or-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public final n(J)J
    .locals 6

    const/16 p0, 0x32

    shl-long v0, p1, p0

    const/16 p0, 0xe

    ushr-long v2, p1, p0

    or-long/2addr v0, v2

    const/16 p0, 0x2e

    shl-long v2, p1, p0

    const/16 p0, 0x12

    ushr-long v4, p1, p0

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 p0, 0x17

    shl-long v2, p1, p0

    const/16 p0, 0x29

    ushr-long p0, p1, p0

    or-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public final o()V
    .locals 8

    iget-wide v0, p0, Ler5;->d:J

    const-wide v2, 0x1fffffffffffffffL

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Ler5;->e:J

    const/16 v6, 0x3d

    ushr-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Ler5;->e:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Ler5;->d:J

    :cond_0
    return-void
.end method

.method public p(Ler5;)V
    .locals 4

    iget-object v0, p1, Ler5;->b:[B

    iget-object v1, p0, Ler5;->b:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Ler5;->c:I

    iput v0, p0, Ler5;->c:I

    iget-wide v0, p1, Ler5;->d:J

    iput-wide v0, p0, Ler5;->d:J

    iget-wide v0, p1, Ler5;->e:J

    iput-wide v0, p0, Ler5;->e:J

    iget-wide v0, p1, Ler5;->f:J

    iput-wide v0, p0, Ler5;->f:J

    iget-wide v0, p1, Ler5;->g:J

    iput-wide v0, p0, Ler5;->g:J

    iget-wide v0, p1, Ler5;->h:J

    iput-wide v0, p0, Ler5;->h:J

    iget-wide v0, p1, Ler5;->i:J

    iput-wide v0, p0, Ler5;->i:J

    iget-wide v0, p1, Ler5;->j:J

    iput-wide v0, p0, Ler5;->j:J

    iget-wide v0, p1, Ler5;->k:J

    iput-wide v0, p0, Ler5;->k:J

    iget-wide v0, p1, Ler5;->l:J

    iput-wide v0, p0, Ler5;->l:J

    iget-wide v0, p1, Ler5;->m:J

    iput-wide v0, p0, Ler5;->m:J

    iget-object v0, p1, Ler5;->n:[J

    iget-object v1, p0, Ler5;->n:[J

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Ler5;->o:I

    iput p1, p0, Ler5;->o:I

    return-void
.end method

.method public q()V
    .locals 5

    invoke-virtual {p0}, Ler5;->o()V

    iget-wide v0, p0, Ler5;->d:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    iget-wide v2, p0, Ler5;->e:J

    const/16 v4, -0x80

    :goto_0
    invoke-virtual {p0, v4}, Ler5;->b(B)V

    iget v4, p0, Ler5;->c:I

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1, v2, v3}, Ler5;->s(JJ)V

    invoke-virtual {p0}, Ler5;->r()V

    return-void
.end method

.method public r()V
    .locals 35

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Ler5;->o()V

    const/16 v0, 0x10

    :goto_0
    const/16 v1, 0x4f

    if-gt v0, v1, :cond_0

    iget-object v1, v7, Ler5;->n:[J

    add-int/lit8 v2, v0, -0x2

    aget-wide v2, v1, v2

    invoke-virtual {v7, v2, v3}, Ler5;->l(J)J

    move-result-wide v2

    iget-object v4, v7, Ler5;->n:[J

    add-int/lit8 v5, v0, -0x7

    aget-wide v5, v4, v5

    add-long/2addr v2, v5

    add-int/lit8 v5, v0, -0xf

    aget-wide v4, v4, v5

    invoke-virtual {v7, v4, v5}, Ler5;->k(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, v7, Ler5;->n:[J

    add-int/lit8 v5, v0, -0x10

    aget-wide v4, v4, v5

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, v7, Ler5;->f:J

    iget-wide v2, v7, Ler5;->g:J

    iget-wide v4, v7, Ler5;->h:J

    iget-wide v9, v7, Ler5;->i:J

    iget-wide v11, v7, Ler5;->j:J

    iget-wide v13, v7, Ler5;->k:J

    move-wide v15, v9

    iget-wide v8, v7, Ler5;->l:J

    move-wide/from16 v17, v0

    iget-wide v0, v7, Ler5;->m:J

    move-wide/from16 v21, v13

    move-wide/from16 v19, v15

    const/16 v23, 0x0

    move-wide v13, v2

    move-wide v15, v4

    move-wide v5, v11

    const/4 v3, 0x0

    move-wide v11, v0

    move-wide/from16 v33, v8

    move-wide/from16 v8, v17

    move-wide/from16 v17, v33

    :goto_1
    const/16 v0, 0xa

    if-ge v3, v0, :cond_1

    invoke-virtual {v7, v5, v6}, Ler5;->n(J)J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide v1, v5

    move/from16 v26, v3

    move-wide/from16 v3, v21

    move-wide/from16 v27, v5

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Ler5;->i(JJJ)J

    move-result-wide v0

    add-long v24, v24, v0

    sget-object v29, Ler5;->p:[J

    aget-wide v0, v29, v23

    add-long v24, v24, v0

    iget-object v0, v7, Ler5;->n:[J

    add-int/lit8 v30, v23, 0x1

    aget-wide v0, v0, v23

    add-long v24, v24, v0

    add-long v11, v11, v24

    add-long v5, v19, v11

    invoke-virtual {v7, v8, v9}, Ler5;->m(J)J

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v13

    move-wide/from16 v31, v5

    move-wide v5, v15

    invoke-virtual/range {v0 .. v6}, Ler5;->j(JJJ)J

    move-result-wide v0

    add-long v19, v19, v0

    add-long v11, v11, v19

    move-wide/from16 v5, v31

    invoke-virtual {v7, v5, v6}, Ler5;->n(J)J

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide/from16 v3, v27

    move-wide/from16 v24, v5

    move-wide/from16 v5, v21

    invoke-virtual/range {v0 .. v6}, Ler5;->i(JJJ)J

    move-result-wide v0

    add-long v19, v19, v0

    aget-wide v0, v29, v30

    add-long v19, v19, v0

    iget-object v0, v7, Ler5;->n:[J

    add-int/lit8 v31, v23, 0x2

    aget-wide v0, v0, v30

    add-long v19, v19, v0

    add-long v17, v17, v19

    add-long v5, v15, v17

    invoke-virtual {v7, v11, v12}, Ler5;->m(J)J

    move-result-wide v15

    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v8

    move-wide/from16 v19, v11

    move-wide v10, v5

    move-wide v5, v13

    invoke-virtual/range {v0 .. v6}, Ler5;->j(JJJ)J

    move-result-wide v0

    add-long/2addr v15, v0

    add-long v5, v17, v15

    invoke-virtual {v7, v10, v11}, Ler5;->n(J)J

    move-result-wide v15

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide/from16 v3, v24

    move-wide/from16 v17, v10

    move-wide v10, v5

    move-wide/from16 v5, v27

    invoke-virtual/range {v0 .. v6}, Ler5;->i(JJJ)J

    move-result-wide v0

    add-long/2addr v15, v0

    aget-wide v0, v29, v31

    add-long/2addr v15, v0

    iget-object v0, v7, Ler5;->n:[J

    add-int/lit8 v12, v23, 0x3

    aget-wide v0, v0, v31

    add-long/2addr v15, v0

    add-long v21, v21, v15

    add-long v13, v13, v21

    invoke-virtual {v7, v10, v11}, Ler5;->m(J)J

    move-result-wide v15

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide/from16 v3, v19

    move-wide v5, v8

    invoke-virtual/range {v0 .. v6}, Ler5;->j(JJJ)J

    move-result-wide v0

    add-long/2addr v15, v0

    add-long v5, v21, v15

    invoke-virtual {v7, v13, v14}, Ler5;->n(J)J

    move-result-wide v15

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide/from16 v3, v17

    move-wide/from16 v21, v13

    move-wide v13, v5

    move-wide/from16 v5, v24

    invoke-virtual/range {v0 .. v6}, Ler5;->i(JJJ)J

    move-result-wide v0

    add-long/2addr v15, v0

    aget-wide v0, v29, v12

    add-long/2addr v15, v0

    iget-object v0, v7, Ler5;->n:[J

    add-int/lit8 v31, v23, 0x4

    aget-wide v0, v0, v12

    add-long/2addr v15, v0

    add-long v15, v27, v15

    add-long/2addr v8, v15

    invoke-virtual {v7, v13, v14}, Ler5;->m(J)J

    move-result-wide v27

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v10

    move-wide/from16 v5, v19

    invoke-virtual/range {v0 .. v6}, Ler5;->j(JJJ)J

    move-result-wide v0

    add-long v27, v27, v0

    add-long v5, v15, v27

    invoke-virtual {v7, v8, v9}, Ler5;->n(J)J

    move-result-wide v15

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide/from16 v3, v21

    move-wide/from16 v27, v8

    move-wide v8, v5

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Ler5;->i(JJJ)J

    move-result-wide v0

    add-long/2addr v15, v0

    aget-wide v0, v29, v31

    add-long/2addr v15, v0

    iget-object v0, v7, Ler5;->n:[J

    add-int/lit8 v12, v23, 0x5

    aget-wide v0, v0, v31

    add-long/2addr v15, v0

    add-long v15, v24, v15

    add-long v5, v19, v15

    invoke-virtual {v7, v8, v9}, Ler5;->m(J)J

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v13

    move-wide/from16 v24, v13

    move-wide v13, v5

    move-wide v5, v10

    invoke-virtual/range {v0 .. v6}, Ler5;->j(JJJ)J

    move-result-wide v0

    add-long v19, v19, v0

    add-long v5, v15, v19

    invoke-virtual {v7, v13, v14}, Ler5;->n(J)J

    move-result-wide v15

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide/from16 v3, v27

    move-wide/from16 v19, v13

    move-wide v13, v5

    move-wide/from16 v5, v21

    invoke-virtual/range {v0 .. v6}, Ler5;->i(JJJ)J

    move-result-wide v0

    add-long/2addr v15, v0

    aget-wide v0, v29, v12

    add-long/2addr v15, v0

    iget-object v0, v7, Ler5;->n:[J

    add-int/lit8 v31, v23, 0x6

    aget-wide v0, v0, v12

    add-long/2addr v15, v0

    add-long v15, v17, v15

    add-long/2addr v10, v15

    invoke-virtual {v7, v13, v14}, Ler5;->m(J)J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v8

    move-wide/from16 v5, v24

    invoke-virtual/range {v0 .. v6}, Ler5;->j(JJJ)J

    move-result-wide v0

    add-long v17, v17, v0

    add-long v5, v15, v17

    invoke-virtual {v7, v10, v11}, Ler5;->n(J)J

    move-result-wide v15

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide/from16 v3, v19

    move-wide/from16 v17, v10

    move-wide v10, v5

    move-wide/from16 v5, v27

    invoke-virtual/range {v0 .. v6}, Ler5;->i(JJJ)J

    move-result-wide v0

    add-long/2addr v15, v0

    aget-wide v0, v29, v31

    add-long/2addr v15, v0

    iget-object v0, v7, Ler5;->n:[J

    add-int/lit8 v12, v23, 0x7

    aget-wide v0, v0, v31

    add-long/2addr v15, v0

    add-long v15, v21, v15

    add-long v5, v24, v15

    invoke-virtual {v7, v10, v11}, Ler5;->m(J)J

    move-result-wide v21

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v13

    move-wide/from16 v24, v13

    move-wide v13, v5

    move-wide v5, v8

    invoke-virtual/range {v0 .. v6}, Ler5;->j(JJJ)J

    move-result-wide v0

    add-long v21, v21, v0

    add-long v5, v15, v21

    invoke-virtual {v7, v13, v14}, Ler5;->n(J)J

    move-result-wide v15

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide/from16 v3, v17

    move-wide/from16 v21, v13

    move-wide v13, v5

    move-wide/from16 v5, v19

    invoke-virtual/range {v0 .. v6}, Ler5;->i(JJJ)J

    move-result-wide v0

    add-long/2addr v15, v0

    aget-wide v0, v29, v12

    add-long/2addr v15, v0

    iget-object v0, v7, Ler5;->n:[J

    add-int/lit8 v23, v23, 0x8

    aget-wide v0, v0, v12

    add-long/2addr v15, v0

    add-long v15, v27, v15

    add-long/2addr v8, v15

    invoke-virtual {v7, v13, v14}, Ler5;->m(J)J

    move-result-wide v27

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v10

    move-wide/from16 v5, v24

    invoke-virtual/range {v0 .. v6}, Ler5;->j(JJJ)J

    move-result-wide v0

    add-long v27, v27, v0

    add-long v0, v15, v27

    add-int/lit8 v3, v26, 0x1

    move-wide v5, v8

    move-wide v15, v10

    move-wide/from16 v11, v19

    move-wide/from16 v19, v24

    move-wide v8, v0

    goto/16 :goto_1

    :cond_1
    move-wide/from16 v27, v5

    iget-wide v0, v7, Ler5;->f:J

    add-long/2addr v0, v8

    iput-wide v0, v7, Ler5;->f:J

    iget-wide v0, v7, Ler5;->g:J

    add-long/2addr v0, v13

    iput-wide v0, v7, Ler5;->g:J

    iget-wide v0, v7, Ler5;->h:J

    add-long/2addr v0, v15

    iput-wide v0, v7, Ler5;->h:J

    iget-wide v0, v7, Ler5;->i:J

    add-long v0, v0, v19

    iput-wide v0, v7, Ler5;->i:J

    iget-wide v0, v7, Ler5;->j:J

    add-long v0, v0, v27

    iput-wide v0, v7, Ler5;->j:J

    iget-wide v0, v7, Ler5;->k:J

    add-long v0, v0, v21

    iput-wide v0, v7, Ler5;->k:J

    iget-wide v0, v7, Ler5;->l:J

    add-long v0, v0, v17

    iput-wide v0, v7, Ler5;->l:J

    iget-wide v0, v7, Ler5;->m:J

    add-long/2addr v0, v11

    iput-wide v0, v7, Ler5;->m:J

    const/4 v0, 0x0

    iput v0, v7, Ler5;->o:I

    move v10, v0

    const/16 v0, 0x10

    :goto_2
    if-ge v10, v0, :cond_2

    iget-object v1, v7, Ler5;->n:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ler5;->d:J

    iput-wide v0, p0, Ler5;->e:J

    const/4 v2, 0x0

    iput v2, p0, Ler5;->c:I

    move v3, v2

    :goto_0
    iget-object v4, p0, Ler5;->b:[B

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aput-byte v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Ler5;->o:I

    :goto_1
    iget-object v3, p0, Ler5;->n:[J

    array-length v4, v3

    if-eq v2, v4, :cond_1

    aput-wide v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public s(JJ)V
    .locals 2

    iget v0, p0, Ler5;->o:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ler5;->r()V

    :cond_0
    iget-object p0, p0, Ler5;->n:[J

    aput-wide p3, p0, v1

    const/16 p3, 0xf

    aput-wide p1, p0, p3

    return-void
.end method

.method public t([BI)V
    .locals 2

    iget-object v0, p0, Ler5;->n:[J

    iget v1, p0, Ler5;->o:I

    invoke-static {p1, p2}, Lcv7;->b([BI)J

    move-result-wide p1

    aput-wide p1, v0, v1

    iget p1, p0, Ler5;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ler5;->o:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Ler5;->r()V

    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 5

    :goto_0
    iget v0, p0, Ler5;->c:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Ler5;->b(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Ler5;->b:[B

    array-length v0, v0

    if-lt p3, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Ler5;->t([BI)V

    iget-object v0, p0, Ler5;->b:[B

    array-length v1, v0

    add-int/2addr p2, v1

    array-length v1, v0

    sub-int/2addr p3, v1

    iget-wide v1, p0, Ler5;->d:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Ler5;->d:J

    goto :goto_1

    :cond_1
    :goto_2
    if-lez p3, :cond_2

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Ler5;->b(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method
