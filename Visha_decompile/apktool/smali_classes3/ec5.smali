.class public final Lec5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:[C

.field public static final p:[C

.field public static final q:[C


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public final i:Ljava/io/Reader;

.field public final j:[C

.field public k:I

.field public final l:Z

.field public m:Ljava/lang/StringBuilder;

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lec5;->o:[C

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lec5;->p:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lec5;->q:[C

    return-void

    :array_0
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    :array_2
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lec5;->a:I

    const v0, 0x8000

    new-array v0, v0, [C

    iput-object v0, p0, Lec5;->j:[C

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lec5;->m:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lec5;->i:Ljava/io/Reader;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lec5;->l:Z

    invoke-virtual {p0}, Lec5;->m()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget-boolean v0, p0, Lec5;->g:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lec5;->j:[C

    iget v1, p0, Lec5;->h:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    iget v2, p0, Lec5;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lec5;->a:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lec5;->c:I

    add-int/2addr v2, v3

    iput v2, p0, Lec5;->b:I

    const/4 v2, 0x0

    iput v2, p0, Lec5;->d:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lec5;->h:I

    iget v2, p0, Lec5;->k:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lec5;->r()Z

    move-result v1

    iput-boolean v1, p0, Lec5;->g:Z

    :cond_2
    return v0
.end method

.method public b(Z)I
    .locals 6

    :goto_0
    invoke-virtual {p0}, Lec5;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lec5;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lec5;->h:I

    iget v2, p0, Lec5;->c:I

    add-int v3, v1, v2

    iget v4, p0, Lec5;->b:I

    sub-int/2addr v3, v4

    iget v4, p0, Lec5;->d:I

    sub-int/2addr v3, v4

    iput v3, p0, Lec5;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lec5;->f:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_e

    const/16 v2, 0x22

    if-eq v0, v2, :cond_d

    const/16 v2, 0x27

    if-eq v0, v2, :cond_d

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_c

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_b

    const/16 v2, 0x66

    const/16 v4, 0xc

    const/4 v5, 0x1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_7

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_4

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    if-eqz p1, :cond_1

    :goto_1
    sub-int/2addr v1, v5

    iput v1, p0, Lec5;->h:I

    invoke-virtual {p0}, Lec5;->e()V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Lec5;->n(I)Z

    move-result p1

    if-eqz p1, :cond_2

    int-to-char p1, v0

    invoke-virtual {p0, p1, v2, v3}, Lec5;->i(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v5}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :pswitch_0
    const/4 v4, 0x2

    goto :goto_2

    :pswitch_1
    int-to-char p1, v0

    invoke-virtual {p0, p1}, Lec5;->d(C)V

    const/16 v4, 0x9

    goto :goto_2

    :pswitch_2
    move v4, v5

    goto :goto_2

    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numbers may not start with \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v5}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_3
    const/4 v4, 0x3

    goto :goto_2

    :cond_4
    const/16 v4, 0xa

    goto :goto_2

    :cond_5
    int-to-char v0, v0

    :try_start_0
    sget-object v2, Lec5;->o:[C

    invoke-virtual {p0, v0, v2}, Lec5;->c(C[C)V
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x6

    goto :goto_2

    :catch_0
    move-exception v0

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    throw v0

    :cond_7
    int-to-char v0, v0

    :try_start_1
    sget-object v2, Lec5;->q:[C

    invoke-virtual {p0, v0, v2}, Lec5;->c(C[C)V
    :try_end_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x5

    goto :goto_2

    :catch_1
    move-exception v0

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    throw v0

    :cond_9
    int-to-char v0, v0

    :try_start_2
    sget-object v2, Lec5;->p:[C

    invoke-virtual {p0, v0, v2}, Lec5;->c(C[C)V
    :try_end_2
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v4, 0x7

    goto :goto_2

    :catch_2
    move-exception v0

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    throw v0

    :cond_b
    const/4 v4, 0x4

    goto :goto_2

    :cond_c
    const/16 v4, 0xb

    goto :goto_2

    :cond_d
    invoke-virtual {p0, v0}, Lec5;->f(I)V

    const/16 v4, 0x8

    :goto_2
    return v4

    :cond_e
    return v3

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(C[C)V
    .locals 4

    array-length v0, p2

    invoke-virtual {p0, v0}, Lec5;->k(I)I

    move-result v0

    array-length v1, p2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4

    :goto_0
    array-length v0, p2

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lec5;->j:[C

    iget v1, p0, Lec5;->h:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lec5;->h:I

    aget-char v0, v0, v1

    aget-char v1, p2, v2

    if-ne v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lec5;->i(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p0}, Lec5;->l()V

    invoke-virtual {p0}, Lec5;->q()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lec5;->i(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0, p1, p2, v2}, Lec5;->i(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0
.end method

.method public d(C)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iput-boolean v3, v0, Lec5;->n:Z

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x30

    const/4 v6, 0x1

    const/16 v7, 0x2d

    if-ne v1, v7, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v4

    :cond_2
    :goto_0
    const/16 v9, 0x100

    invoke-virtual {v0, v9}, Lec5;->k(I)I

    move-result v9

    const-string v10, "Malformed number: "

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x5

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    move v14, v3

    :goto_1
    if-ge v14, v9, :cond_2

    iget-object v15, v0, Lec5;->j:[C

    iget v3, v0, Lec5;->h:I

    aget-char v3, v15, v3

    invoke-virtual {v0, v3}, Lec5;->o(I)Z

    move-result v15

    if-nez v15, :cond_7

    :goto_2
    if-eq v8, v4, :cond_5

    if-eq v8, v2, :cond_5

    if-eq v8, v13, :cond_5

    if-ne v8, v12, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1, v6}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_3
    if-ne v8, v2, :cond_6

    if-ne v1, v7, :cond_6

    iput-boolean v6, v0, Lec5;->n:Z

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lec5;->l()V

    return-void

    :cond_7
    const/16 v15, 0x45

    const/16 v2, 0x65

    const/4 v11, 0x6

    const/16 v12, 0x39

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    if-lt v3, v5, :cond_11

    if-gt v3, v12, :cond_11

    :goto_4
    const/16 v8, 0x8

    goto :goto_a

    :pswitch_1
    const/16 v2, 0x2b

    if-eq v3, v2, :cond_9

    if-ne v3, v7, :cond_8

    if-ne v8, v11, :cond_8

    goto :goto_5

    :cond_8
    if-lt v3, v5, :cond_11

    if-gt v3, v12, :cond_11

    goto :goto_4

    :cond_9
    :goto_5
    const/4 v2, 0x7

    :goto_6
    move v8, v2

    goto :goto_a

    :pswitch_2
    if-lt v3, v5, :cond_a

    if-gt v3, v12, :cond_a

    move v8, v13

    goto :goto_a

    :cond_a
    if-eq v3, v2, :cond_b

    if-ne v3, v15, :cond_11

    :cond_b
    if-ne v8, v13, :cond_11

    :cond_c
    :goto_7
    iput-boolean v6, v0, Lec5;->n:Z

    move v8, v11

    goto :goto_a

    :pswitch_3
    if-lt v3, v5, :cond_d

    if-gt v3, v12, :cond_d

    if-ne v8, v4, :cond_d

    :goto_8
    move v8, v4

    goto :goto_a

    :cond_d
    const/16 v8, 0x2e

    if-ne v3, v8, :cond_e

    iput-boolean v6, v0, Lec5;->n:Z

    const/4 v2, 0x4

    goto :goto_6

    :cond_e
    if-eq v3, v2, :cond_c

    if-ne v3, v15, :cond_11

    goto :goto_7

    :pswitch_4
    if-ne v3, v7, :cond_f

    if-nez v8, :cond_f

    move v8, v6

    goto :goto_a

    :cond_f
    if-ne v3, v5, :cond_10

    const/4 v8, 0x3

    goto :goto_a

    :cond_10
    if-lt v3, v5, :cond_11

    if-gt v3, v12, :cond_11

    goto :goto_8

    :cond_11
    :goto_9
    const/4 v8, -0x1

    :goto_a
    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v0, Lec5;->h:I

    add-int/2addr v2, v6

    iput v2, v0, Lec5;->h:I

    const/4 v2, -0x1

    if-eq v8, v2, :cond_12

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    goto/16 :goto_1

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v6}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lec5;->m:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lec5;->k(I)I

    move-result v3

    const-string v4, "String was not terminated before end of input"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1a

    move v7, v2

    :goto_1
    if-ge v7, v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lec5;->s()C

    move-result v8

    invoke-virtual {v0, v8}, Lec5;->p(I)Z

    move-result v9

    if-nez v9, :cond_0

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_1

    :cond_0
    move v1, v6

    goto/16 :goto_b

    :cond_1
    const-string v10, "Invalid character in semi-string: "

    const/16 v11, 0x2c

    const/16 v12, 0x7d

    const/16 v13, 0x7b

    const/16 v14, 0x5c

    if-eq v8, v14, :cond_4

    iget-boolean v15, v0, Lec5;->l:Z

    if-eqz v15, :cond_2

    and-int/lit16 v15, v8, 0x80

    if-eqz v15, :cond_2

    goto :goto_2

    :cond_2
    const/16 v9, 0x5b

    if-eq v8, v9, :cond_3

    const/16 v9, 0x5d

    if-eq v8, v9, :cond_3

    if-eq v8, v13, :cond_3

    if-eq v8, v12, :cond_3

    if-eq v8, v11, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v2}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_2
    iget-object v3, v0, Lec5;->m:Ljava/lang/StringBuilder;

    iget-object v8, v0, Lec5;->j:[C

    iget v15, v0, Lec5;->h:I

    sub-int/2addr v15, v7

    sub-int/2addr v15, v6

    invoke-virtual {v3, v8, v15, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, v0, Lec5;->h:I

    sub-int/2addr v3, v6

    iput v3, v0, Lec5;->h:I

    :goto_3
    invoke-virtual {v0, v1}, Lec5;->k(I)I

    move-result v3

    if-eqz v3, :cond_18

    iget v7, v0, Lec5;->h:I

    add-int/2addr v7, v3

    :goto_4
    iget v3, v0, Lec5;->h:I

    const-string v8, "EOF encountered in the middle of a string escape"

    if-ge v3, v7, :cond_16

    invoke-virtual/range {p0 .. p0}, Lec5;->s()C

    move-result v3

    iget-boolean v15, v0, Lec5;->l:Z

    if-eqz v15, :cond_5

    and-int/lit16 v15, v3, 0x80

    if-eqz v15, :cond_5

    invoke-virtual {v0, v3}, Lec5;->g(C)V

    goto :goto_3

    :cond_5
    const/16 v15, 0x9

    if-eq v3, v15, :cond_15

    const/16 v1, 0xa

    if-eq v3, v1, :cond_15

    const/16 v6, 0xd

    if-eq v3, v6, :cond_15

    const/16 v1, 0x20

    if-eq v3, v1, :cond_15

    if-eq v3, v11, :cond_14

    if-eq v3, v9, :cond_15

    if-eq v3, v13, :cond_14

    if-eq v3, v12, :cond_14

    packed-switch v3, :pswitch_data_0

    iget-object v1, v0, Lec5;->m:Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :pswitch_0
    iget v1, v0, Lec5;->h:I

    sub-int v1, v7, v1

    const/16 v3, 0x75

    const/4 v9, 0x5

    if-ge v1, v9, :cond_8

    invoke-virtual {v0, v9}, Lec5;->k(I)I

    move-result v1

    iget v7, v0, Lec5;->h:I

    add-int v16, v7, v1

    iget-object v11, v0, Lec5;->j:[C

    aget-char v7, v11, v7

    if-ne v7, v3, :cond_7

    if-lt v1, v9, :cond_6

    goto :goto_6

    :cond_6
    iget v1, v0, Lec5;->k:I

    iput v1, v0, Lec5;->h:I

    invoke-virtual {v0, v5, v8, v2}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_6
    move/from16 v7, v16

    :cond_8
    iget-object v1, v0, Lec5;->j:[C

    iget v8, v0, Lec5;->h:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lec5;->h:I

    aget-char v1, v1, v8

    const/16 v8, 0x22

    if-eq v1, v8, :cond_13

    const/16 v8, 0x2f

    if-eq v1, v8, :cond_13

    if-eq v1, v14, :cond_13

    const/16 v8, 0x62

    if-eq v1, v8, :cond_12

    const/16 v8, 0x66

    if-eq v1, v8, :cond_11

    const/16 v9, 0x6e

    if-eq v1, v9, :cond_10

    const/16 v9, 0x72

    if-eq v1, v9, :cond_f

    const/16 v6, 0x74

    if-eq v1, v6, :cond_e

    if-ne v1, v3, :cond_d

    move v1, v2

    move v3, v1

    :goto_7
    const/4 v6, 0x4

    if-ge v1, v6, :cond_c

    shl-int/lit8 v3, v3, 0x4

    iget-object v6, v0, Lec5;->j:[C

    iget v9, v0, Lec5;->h:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Lec5;->h:I

    aget-char v6, v6, v9

    const/16 v9, 0x30

    if-lt v6, v9, :cond_9

    const/16 v9, 0x39

    if-gt v6, v9, :cond_9

    add-int/lit8 v6, v6, -0x30

    :goto_8
    or-int/2addr v3, v6

    goto :goto_9

    :cond_9
    const/16 v9, 0x41

    if-lt v6, v9, :cond_a

    const/16 v9, 0x46

    if-gt v6, v9, :cond_a

    add-int/lit8 v6, v6, -0x37

    goto :goto_8

    :cond_a
    const/16 v9, 0x61

    if-lt v6, v9, :cond_b

    if-gt v6, v8, :cond_b

    add-int/lit8 v6, v6, -0x57

    goto :goto_8

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected unicode hex escape character: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v2}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_c
    iget-object v1, v0, Lec5;->m:Ljava/lang/StringBuilder;

    int-to-char v3, v3

    goto/16 :goto_5

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid escape: \\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v2}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_e
    iget-object v1, v0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_f
    iget-object v1, v0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_10
    iget-object v1, v0, Lec5;->m:Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    goto/16 :goto_5

    :cond_11
    iget-object v1, v0, Lec5;->m:Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    goto/16 :goto_5

    :cond_12
    iget-object v1, v0, Lec5;->m:Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    goto/16 :goto_5

    :cond_13
    iget-object v3, v0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_a
    const/16 v1, 0x100

    const/4 v6, 0x1

    const/16 v9, 0x3a

    const/16 v11, 0x2c

    goto/16 :goto_4

    :cond_14
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v2}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lec5;->l()V

    return-void

    :cond_16
    iget v1, v0, Lec5;->k:I

    if-gt v3, v1, :cond_17

    const/16 v1, 0x100

    const/4 v6, 0x1

    const/16 v9, 0x3a

    const/16 v11, 0x2c

    goto/16 :goto_3

    :cond_17
    iput v1, v0, Lec5;->h:I

    invoke-virtual {v0, v5, v8, v2}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_18
    move v1, v6

    invoke-virtual {v0, v5, v4, v1}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :goto_b
    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lec5;->j:[C

    iget v4, v0, Lec5;->h:I

    sub-int/2addr v4, v7

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lec5;->l()V

    return-void

    :cond_19
    iget-object v1, v0, Lec5;->m:Ljava/lang/StringBuilder;

    iget-object v4, v0, Lec5;->j:[C

    iget v5, v0, Lec5;->h:I

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1a
    move v1, v6

    invoke-virtual {v0, v5, v4, v1}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lec5;->k(I)I

    move-result v4

    const-string v5, "String was not terminated before end of input"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_19

    move v8, v3

    :goto_1
    if-ge v8, v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lec5;->s()C

    move-result v9

    if-ne v9, v1, :cond_0

    iget-object v1, v0, Lec5;->m:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lec5;->j:[C

    iget v3, v0, Lec5;->h:I

    sub-int/2addr v3, v8

    sub-int/2addr v3, v7

    invoke-virtual {v1, v2, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lec5;->l()V

    return-void

    :cond_0
    const/16 v10, 0x5c

    if-eq v9, v10, :cond_2

    iget-boolean v11, v0, Lec5;->l:Z

    if-eqz v11, :cond_1

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v4, v0, Lec5;->m:Ljava/lang/StringBuilder;

    iget-object v9, v0, Lec5;->j:[C

    iget v11, v0, Lec5;->h:I

    sub-int/2addr v11, v8

    sub-int/2addr v11, v7

    invoke-virtual {v4, v9, v11, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v4, v0, Lec5;->h:I

    sub-int/2addr v4, v7

    iput v4, v0, Lec5;->h:I

    :goto_3
    invoke-virtual {v0, v2}, Lec5;->k(I)I

    move-result v4

    if-eqz v4, :cond_17

    iget v8, v0, Lec5;->h:I

    add-int/2addr v8, v4

    :goto_4
    iget v4, v0, Lec5;->h:I

    const-string v9, "EOF encountered in the middle of a string escape"

    if-ge v4, v8, :cond_15

    invoke-virtual/range {p0 .. p0}, Lec5;->s()C

    move-result v4

    iget-boolean v11, v0, Lec5;->l:Z

    if-eqz v11, :cond_3

    and-int/lit16 v11, v4, 0x80

    if-eqz v11, :cond_3

    invoke-virtual {v0, v4}, Lec5;->g(C)V

    goto :goto_3

    :cond_3
    const/16 v11, 0x22

    if-eq v4, v11, :cond_13

    const/16 v12, 0x27

    if-eq v4, v12, :cond_13

    if-eq v4, v10, :cond_4

    iget-object v9, v0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_4
    iget v4, v0, Lec5;->h:I

    sub-int v4, v8, v4

    const/16 v13, 0x75

    const/4 v14, 0x5

    if-ge v4, v14, :cond_7

    invoke-virtual {v0, v14}, Lec5;->k(I)I

    move-result v4

    iget v8, v0, Lec5;->h:I

    add-int v15, v8, v4

    iget-object v2, v0, Lec5;->j:[C

    aget-char v2, v2, v8

    if-ne v2, v13, :cond_6

    if-lt v4, v14, :cond_5

    goto :goto_5

    :cond_5
    iget v1, v0, Lec5;->k:I

    iput v1, v0, Lec5;->h:I

    invoke-virtual {v0, v6, v9, v3}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_5
    move v8, v15

    :cond_7
    iget-object v2, v0, Lec5;->j:[C

    iget v4, v0, Lec5;->h:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v0, Lec5;->h:I

    aget-char v2, v2, v4

    if-eq v2, v11, :cond_12

    if-eq v2, v12, :cond_12

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_12

    if-eq v2, v10, :cond_12

    const/16 v4, 0x62

    if-eq v2, v4, :cond_11

    const/16 v4, 0x66

    if-eq v2, v4, :cond_10

    const/16 v9, 0x6e

    if-eq v2, v9, :cond_f

    const/16 v9, 0x72

    if-eq v2, v9, :cond_e

    const/16 v9, 0x74

    if-eq v2, v9, :cond_d

    if-ne v2, v13, :cond_c

    move v2, v3

    move v9, v2

    :goto_6
    const/4 v11, 0x4

    if-ge v2, v11, :cond_b

    shl-int/lit8 v9, v9, 0x4

    iget-object v11, v0, Lec5;->j:[C

    iget v12, v0, Lec5;->h:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lec5;->h:I

    aget-char v11, v11, v12

    const/16 v12, 0x30

    if-lt v11, v12, :cond_8

    const/16 v12, 0x39

    if-gt v11, v12, :cond_8

    add-int/lit8 v11, v11, -0x30

    :goto_7
    or-int/2addr v9, v11

    goto :goto_8

    :cond_8
    const/16 v12, 0x41

    if-lt v11, v12, :cond_9

    const/16 v12, 0x46

    if-gt v11, v12, :cond_9

    add-int/lit8 v11, v11, -0x37

    goto :goto_7

    :cond_9
    const/16 v12, 0x61

    if-lt v11, v12, :cond_a

    if-gt v11, v4, :cond_a

    add-int/lit8 v11, v11, -0x57

    goto :goto_7

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected unicode hex escape character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v3}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_b
    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    int-to-char v4, v9

    :goto_9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid escape: \\"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v3}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_d
    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    const/16 v4, 0x9

    goto :goto_9

    :cond_e
    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    const/16 v4, 0xd

    goto :goto_9

    :cond_f
    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    goto :goto_9

    :cond_10
    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    goto :goto_9

    :cond_11
    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    goto :goto_9

    :cond_12
    iget-object v4, v0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_13
    if-ne v4, v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lec5;->l()V

    return-void

    :cond_14
    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    goto :goto_9

    :goto_a
    const/16 v2, 0x100

    goto/16 :goto_4

    :cond_15
    iget v2, v0, Lec5;->k:I

    if-gt v4, v2, :cond_16

    const/16 v2, 0x100

    goto/16 :goto_3

    :cond_16
    iput v2, v0, Lec5;->h:I

    invoke-virtual {v0, v6, v9, v3}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-virtual {v0, v6, v5, v7}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_18
    iget-object v2, v0, Lec5;->m:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lec5;->j:[C

    iget v6, v0, Lec5;->h:I

    sub-int/2addr v6, v4

    invoke-virtual {v2, v5, v6, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v0, v6, v5, v7}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method public final g(C)V
    .locals 9

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lec5;->k(I)I

    and-int/lit16 v1, p1, 0xf0

    const/16 v2, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_d

    const/16 v2, 0x90

    if-eq v1, v2, :cond_d

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_d

    const/16 v2, 0xb0

    if-eq v1, v2, :cond_d

    const/16 v2, 0xc0

    const-string v5, "Illegal UTF-8 byte: 0x"

    const/4 v6, 0x1

    if-eq v1, v2, :cond_9

    const/16 v2, 0xd0

    if-eq v1, v2, :cond_a

    const/16 v2, 0xe0

    const/4 v7, 0x2

    if-eq v1, v2, :cond_5

    const/16 v2, 0xf0

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    and-int/lit8 v1, p1, 0xf

    if-ge v1, v0, :cond_4

    and-int/lit8 v1, p1, 0xc

    shr-int/2addr v1, v7

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_3

    const-string v5, " in a Java string"

    const-string v8, "Unable to represent codepoint 0x"

    if-eq v1, v7, :cond_2

    if-eq v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    and-int/2addr p1, v6

    shl-int/lit8 p1, p1, 0x1e

    iget-object v1, p0, Lec5;->j:[C

    iget v2, p0, Lec5;->h:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lec5;->h:I

    aget-char v7, v1, v2

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr p1, v7

    add-int/lit8 v7, v2, 0x2

    iput v7, p0, Lec5;->h:I

    aget-char v6, v1, v6

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x12

    or-int/2addr p1, v6

    add-int/lit8 v6, v2, 0x3

    iput v6, p0, Lec5;->h:I

    aget-char v7, v1, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr p1, v7

    add-int/lit8 v7, v2, 0x4

    iput v7, p0, Lec5;->h:I

    aget-char v6, v1, v6

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr p1, v6

    add-int/2addr v2, v0

    iput v2, p0, Lec5;->h:I

    aget-char v0, v1, v7

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_2
    and-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x18

    iget-object v0, p0, Lec5;->j:[C

    iget v1, p0, Lec5;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lec5;->h:I

    aget-char v6, v0, v1

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x12

    or-int/2addr p1, v6

    add-int/lit8 v6, v1, 0x2

    iput v6, p0, Lec5;->h:I

    aget-char v2, v0, v2

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr p1, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lec5;->h:I

    aget-char v6, v0, v6

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr p1, v6

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lec5;->h:I

    aget-char v0, v0, v2

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_3
    iget-object v0, p0, Lec5;->m:Ljava/lang/StringBuilder;

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x12

    iget-object v1, p0, Lec5;->j:[C

    iget v5, p0, Lec5;->h:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lec5;->h:I

    aget-char v7, v1, v5

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr p1, v7

    add-int/lit8 v7, v5, 0x2

    iput v7, p0, Lec5;->h:I

    aget-char v6, v1, v6

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr p1, v6

    add-int/2addr v5, v2

    iput v5, p0, Lec5;->h:I

    aget-char v1, v1, v7

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    iget p1, p0, Lec5;->d:I

    add-int/2addr p1, v2

    :goto_0
    iput p1, p0, Lec5;->d:I

    goto/16 :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_5
    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    iget-object v0, p0, Lec5;->j:[C

    iget v1, p0, Lec5;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lec5;->h:I

    aget-char v5, v0, v1

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr p1, v5

    add-int/2addr v1, v7

    iput v1, p0, Lec5;->h:I

    aget-char v0, v0, v2

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    int-to-char p1, p1

    iget v0, p0, Lec5;->d:I

    add-int/2addr v0, v7

    iput v0, p0, Lec5;->d:I

    const v0, 0xd800

    if-lt p1, v0, :cond_6

    const v0, 0xdbff

    if-le p1, v0, :cond_7

    :cond_6
    const v0, 0xdc00

    if-lt p1, v0, :cond_8

    const v0, 0xdfff

    if-le p1, v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal UTF-8 codepoint: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_8
    :goto_1
    iget-object v0, p0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_c

    :cond_a
    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Lec5;->j:[C

    iget v1, p0, Lec5;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lec5;->h:I

    aget-char v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    int-to-char p1, p1

    iget-object v0, p0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lec5;->d:I

    add-int/2addr p1, v6

    goto/16 :goto_0

    :goto_2
    iget p1, p0, Lec5;->h:I

    iget v0, p0, Lec5;->k:I

    if-gt p1, v0, :cond_b

    return-void

    :cond_b
    const-string p1, "UTF-8 codepoint was truncated"

    invoke-virtual {p0, v4, p1, v3}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal UTF-8 continuation byte: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0
.end method

.method public final h()V
    .locals 6

    :cond_0
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lec5;->k(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lec5;->j:[C

    iget v5, p0, Lec5;->h:I

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lec5;->p(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lec5;->l()V

    return-void

    :cond_1
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    iget v4, p0, Lec5;->a:I

    add-int/2addr v4, v3

    iput v4, p0, Lec5;->a:I

    iget v4, p0, Lec5;->h:I

    add-int/2addr v4, v3

    iget v5, p0, Lec5;->c:I

    add-int/2addr v4, v5

    iput v4, p0, Lec5;->b:I

    iput v1, p0, Lec5;->d:I

    :cond_2
    iget v4, p0, Lec5;->h:I

    add-int/2addr v4, v3

    iput v4, p0, Lec5;->h:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-gtz v0, :cond_0

    iput-boolean v3, p0, Lec5;->g:Z

    return-void
.end method

.method public i(C[CI)Lcom/grack/nanojson/JsonParserException;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, p3}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lec5;->q()I

    move-result p3

    invoke-virtual {p0, p3}, Lec5;->n(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/16 v1, 0xf

    if-ge p3, v1, :cond_1

    invoke-virtual {p0}, Lec5;->a()I

    move-result p3

    int-to-char p3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ". Did you mean \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;
    .locals 9

    const-string v0, ", char "

    const-string v1, " on line "

    if-eqz p3, :cond_0

    new-instance p3, Lcom/grack/nanojson/JsonParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lec5;->a:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lec5;->e:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lec5;->a:I

    iget v6, p0, Lec5;->e:I

    iget v7, p0, Lec5;->f:I

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    return-object p3

    :cond_0
    iget p3, p0, Lec5;->h:I

    iget v2, p0, Lec5;->c:I

    add-int/2addr p3, v2

    iget v2, p0, Lec5;->b:I

    sub-int/2addr p3, v2

    iget v2, p0, Lec5;->d:I

    sub-int/2addr p3, v2

    const/4 v2, 0x1

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-instance p3, Lcom/grack/nanojson/JsonParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lec5;->a:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lec5;->a:I

    iget p2, p0, Lec5;->h:I

    iget p0, p0, Lec5;->c:I

    add-int v8, p2, p0

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    return-object p3
.end method

.method public k(I)I
    .locals 4

    iget v0, p0, Lec5;->k:I

    sub-int v1, v0, p1

    iget v2, p0, Lec5;->h:I

    if-lt v1, v2, :cond_0

    return p1

    :cond_0
    if-lez v2, :cond_1

    iget v1, p0, Lec5;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lec5;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lec5;->k:I

    iget-object v1, p0, Lec5;->j:[C

    const/4 v3, 0x0

    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lec5;->h:I

    :cond_1
    :try_start_0
    iget-object v0, p0, Lec5;->j:[C

    array-length v1, v0

    iget v2, p0, Lec5;->k:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lec5;->i:Ljava/io/Reader;

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gtz v0, :cond_2

    iget p1, p0, Lec5;->k:I

    iget p0, p0, Lec5;->h:I

    sub-int/2addr p1, p0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    iget v1, p0, Lec5;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lec5;->k:I

    if-le v1, p1, :cond_1

    iget p0, p0, Lec5;->h:I

    sub-int/2addr v1, p0

    return v1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected internal error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "IOException"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0
.end method

.method public l()V
    .locals 2

    iget v0, p0, Lec5;->h:I

    iget v1, p0, Lec5;->k:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lec5;->r()Z

    move-result v0

    iput-boolean v0, p0, Lec5;->g:Z

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    invoke-virtual {p0}, Lec5;->r()Z

    move-result v0

    iput-boolean v0, p0, Lec5;->g:Z

    invoke-virtual {p0}, Lec5;->h()V

    return-void
.end method

.method public n(I)Z
    .locals 0

    const/16 p0, 0x41

    if-lt p1, p0, :cond_0

    const/16 p0, 0x5a

    if-le p1, p0, :cond_1

    :cond_0
    const/16 p0, 0x61

    if-lt p1, p0, :cond_2

    const/16 p0, 0x7a

    if-gt p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o(I)Z
    .locals 0

    const/16 p0, 0x30

    if-lt p1, p0, :cond_0

    const/16 p0, 0x39

    if-le p1, p0, :cond_2

    :cond_0
    const/16 p0, 0x65

    if-eq p1, p0, :cond_2

    const/16 p0, 0x45

    if-eq p1, p0, :cond_2

    const/16 p0, 0x2e

    if-eq p1, p0, :cond_2

    const/16 p0, 0x2b

    if-eq p1, p0, :cond_2

    const/16 p0, 0x2d

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public p(I)Z
    .locals 0

    const/16 p0, 0x20

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final q()I
    .locals 1

    iget-boolean v0, p0, Lec5;->g:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lec5;->j:[C

    iget p0, p0, Lec5;->h:I

    aget-char p0, v0, p0

    :goto_0
    return p0
.end method

.method public final r()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lec5;->i:Ljava/io/Reader;

    iget-object v2, p0, Lec5;->j:[C

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    iget v2, p0, Lec5;->c:I

    iget v3, p0, Lec5;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lec5;->c:I

    iput v4, p0, Lec5;->h:I

    iput v1, p0, Lec5;->k:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    const-string v2, "IOException"

    invoke-virtual {p0, v1, v2, v0}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0
.end method

.method public final s()C
    .locals 3

    iget-object v0, p0, Lec5;->j:[C

    iget v1, p0, Lec5;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lec5;->h:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lec5;->t(C)V

    :cond_0
    return v0
.end method

.method public final t(C)V
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget v0, p0, Lec5;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lec5;->a:I

    iget v0, p0, Lec5;->h:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lec5;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lec5;->b:I

    iput v1, p0, Lec5;->d:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strings may not contain control characters: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0
.end method
