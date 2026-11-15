.class public abstract Luc5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:[C

.field public static final n:[C

.field public static final o:[C

.field public static final p:[C

.field public static final q:[C

.field public static final r:[C


# instance fields
.field public final a:Ljava/lang/Appendable;

.field public final b:Ljava/io/OutputStream;

.field public final c:Z

.field public final d:Ljava/lang/StringBuilder;

.field public final e:[B

.field public f:I

.field public g:Ljava/util/BitSet;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Luc5;->m:[C

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, Luc5;->n:[C

    const/4 v1, 0x5

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    sput-object v1, Luc5;->o:[C

    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    sput-object v1, Luc5;->p:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Luc5;->q:[C

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Luc5;->r:[C

    return-void

    :array_0
    .array-data 2
        0x6es
        0x75s
        0x6cs
        0x6cs
    .end array-data

    :array_1
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_2
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_4
    .array-data 2
        0x5cs
        0x75s
        0x30s
        0x30s
    .end array-data

    :array_5
    .array-data 2
        0x5cs
        0x75s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Luc5;->f:I

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Luc5;->g:Ljava/util/BitSet;

    iput v0, p0, Luc5;->h:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Luc5;->i:Z

    iput v0, p0, Luc5;->l:I

    iput-object p1, p0, Luc5;->a:Ljava/lang/Appendable;

    const/4 p1, 0x0

    iput-object p1, p0, Luc5;->b:Ljava/io/OutputStream;

    iput-object p2, p0, Luc5;->k:Ljava/lang/String;

    iput-boolean v0, p0, Luc5;->c:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x2800

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p2, p0, Luc5;->d:Ljava/lang/StringBuilder;

    iput-object p1, p0, Luc5;->e:[B

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Luc5;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Luc5;->l()Luc5;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Luc5;->s()V

    invoke-virtual {p0, p1}, Luc5;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public B(Ljava/lang/String;I)Luc5;
    .locals 0

    invoke-virtual {p0, p1}, Luc5;->t(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Luc5;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public C(Ljava/lang/String;Ljava/lang/Number;)Luc5;
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Luc5;->m(Ljava/lang/String;)Luc5;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Luc5;->t(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Luc5;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public D(Ljava/lang/String;Ljava/lang/Object;)Luc5;
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Luc5;->m(Ljava/lang/String;)Luc5;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Luc5;->C(Ljava/lang/String;Ljava/lang/Number;)Luc5;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Luc5;->F(Ljava/lang/String;Z)Luc5;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Luc5;->e(Ljava/lang/String;Ljava/util/Collection;)Luc5;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Luc5;->p(Ljava/lang/String;Ljava/util/Map;)Luc5;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1}, Luc5;->d(Ljava/lang/String;)Luc5;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_6

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Luc5;->z(Ljava/lang/Object;)Luc5;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Luc5;->j()Luc5;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to handle type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)Luc5;
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Luc5;->m(Ljava/lang/String;)Luc5;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Luc5;->t(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Luc5;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public F(Ljava/lang/String;Z)Luc5;
    .locals 0

    invoke-virtual {p0, p1}, Luc5;->t(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p1, Luc5;->n:[C

    goto :goto_0

    :cond_0
    sget-object p1, Luc5;->o:[C

    :goto_0
    invoke-virtual {p0, p1}, Luc5;->w([C)V

    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public G(Z)Luc5;
    .locals 0

    invoke-virtual {p0}, Luc5;->s()V

    if-eqz p1, :cond_0

    sget-object p1, Luc5;->n:[C

    goto :goto_0

    :cond_0
    sget-object p1, Luc5;->o:[C

    :goto_0
    invoke-virtual {p0, p1}, Luc5;->w([C)V

    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Luc5;->l:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Luc5;->k:Ljava/lang/String;

    invoke-virtual {p0, v1}, Luc5;->v(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Luc5;->u(C)V

    return-void
.end method

.method public c()Luc5;
    .locals 3

    invoke-virtual {p0}, Luc5;->s()V

    iget-object v0, p0, Luc5;->g:Ljava/util/BitSet;

    iget v1, p0, Luc5;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Luc5;->h:I

    iget-boolean v2, p0, Luc5;->j:Z

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Luc5;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Luc5;->i:Z

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Luc5;->u(C)V

    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/String;)Luc5;
    .locals 2

    invoke-virtual {p0, p1}, Luc5;->t(Ljava/lang/String;)V

    iget-object p1, p0, Luc5;->g:Ljava/util/BitSet;

    iget v0, p0, Luc5;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Luc5;->h:I

    iget-boolean v1, p0, Luc5;->j:Z

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Luc5;->j:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Luc5;->i:Z

    const/16 p1, 0x5b

    invoke-virtual {p0, p1}, Luc5;->u(C)V

    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/util/Collection;)Luc5;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Luc5;->c()Luc5;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Luc5;->d(Ljava/lang/String;)Luc5;

    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Luc5;->z(Ljava/lang/Object;)Luc5;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Luc5;->j()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/util/Collection;)Luc5;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Luc5;->e(Ljava/lang/String;Ljava/util/Collection;)Luc5;

    move-result-object p0

    return-object p0
.end method

.method public final g()Luc5;
    .locals 0

    return-object p0
.end method

.method public h()V
    .locals 1

    iget v0, p0, Luc5;->h:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Luc5;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Luc5;->k()V

    return-void

    :cond_0
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    const-string v0, "Nothing was written to the JSON writer"

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    const-string v0, "Unclosed JSON objects and/or arrays when closing writer"

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 10

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Luc5;->u(C)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_c

    const/16 v4, 0xd

    if-eq v3, v4, :cond_b

    const/16 v4, 0x5c

    if-eq v3, v0, :cond_a

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_9

    if-eq v3, v4, :cond_a

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0, v3}, Luc5;->x(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x100

    if-ge v3, v2, :cond_0

    sget-object v2, Luc5;->q:[C

    invoke-virtual {p0, v2}, Luc5;->w([C)V

    sget-object v2, Luc5;->p:[C

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v2, v4

    invoke-virtual {p0, v4}, Luc5;->u(C)V

    and-int/lit8 v4, v3, 0xf

    aget-char v2, v2, v4

    :goto_1
    invoke-virtual {p0, v2}, Luc5;->u(C)V

    goto/16 :goto_4

    :cond_0
    sget-object v2, Luc5;->r:[C

    invoke-virtual {p0, v2}, Luc5;->w([C)V

    sget-object v2, Luc5;->p:[C

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v2, v4

    invoke-virtual {p0, v4}, Luc5;->u(C)V

    shr-int/lit8 v4, v3, 0x8

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v2, v4

    invoke-virtual {p0, v4}, Luc5;->u(C)V

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v2, v4

    invoke-virtual {p0, v4}, Luc5;->u(C)V

    and-int/lit8 v4, v3, 0xf

    aget-char v2, v2, v4

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Luc5;->c:Z

    if-eqz v2, :cond_8

    iget v2, p0, Luc5;->f:I

    add-int/lit8 v2, v2, 0x4

    const/16 v4, 0x2800

    if-le v2, v4, :cond_2

    invoke-virtual {p0}, Luc5;->k()V

    :cond_2
    const/16 v2, 0x80

    if-ge v3, v2, :cond_3

    iget-object v2, p0, Luc5;->e:[B

    iget v4, p0, Luc5;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Luc5;->f:I

    int-to-byte v5, v3

    aput-byte v5, v2, v4

    goto/16 :goto_4

    :cond_3
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Luc5;->e:[B

    iget v5, p0, Luc5;->f:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Luc5;->f:I

    shr-int/lit8 v7, v3, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Luc5;->f:I

    and-int/lit8 v5, v3, 0x3f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v6

    goto/16 :goto_4

    :cond_4
    const v4, 0xd800

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Luc5;->e:[B

    iget v5, p0, Luc5;->f:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Luc5;->f:I

    shr-int/lit8 v7, v3, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v7, v5, 0x2

    iput v7, p0, Luc5;->f:I

    shr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v2

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Luc5;->f:I

    and-int/lit8 v5, v3, 0x3f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v7

    goto/16 :goto_4

    :cond_5
    const v4, 0xdfff

    if-ge v3, v4, :cond_7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    const v5, 0x1fffff

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Luc5;->e:[B

    iget v6, p0, Luc5;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Luc5;->f:I

    shr-int/lit8 v8, v4, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    add-int/lit8 v8, v6, 0x2

    iput v8, p0, Luc5;->f:I

    shr-int/lit8 v9, v4, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v2

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    add-int/lit8 v7, v6, 0x3

    iput v7, p0, Luc5;->f:I

    shr-int/lit8 v9, v4, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v2

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Luc5;->f:I

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v5, v7

    goto :goto_4

    :cond_6
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to encode character 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v4, p0, Luc5;->e:[B

    iget v5, p0, Luc5;->f:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Luc5;->f:I

    shr-int/lit8 v7, v3, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v7, v5, 0x2

    iput v7, p0, Luc5;->f:I

    shr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v2

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Luc5;->f:I

    and-int/lit8 v5, v3, 0x3f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v7

    goto :goto_4

    :cond_8
    :goto_2
    invoke-virtual {p0, v3}, Luc5;->u(C)V

    goto :goto_4

    :pswitch_0
    const-string v2, "\\n"

    :goto_3
    invoke-virtual {p0, v2}, Luc5;->v(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1
    const-string v2, "\\t"

    goto :goto_3

    :pswitch_2
    const-string v2, "\\b"

    goto :goto_3

    :cond_9
    const/16 v5, 0x3c

    if-ne v2, v5, :cond_8

    :cond_a
    invoke-virtual {p0, v4}, Luc5;->u(C)V

    goto :goto_2

    :cond_b
    const-string v2, "\\r"

    goto :goto_3

    :cond_c
    const-string v2, "\\f"

    goto :goto_3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, v0}, Luc5;->u(C)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()Luc5;
    .locals 2

    iget v0, p0, Luc5;->h:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Luc5;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Luc5;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Luc5;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Luc5;->l:I

    invoke-virtual {p0}, Luc5;->b()V

    invoke-virtual {p0}, Luc5;->a()V

    :cond_0
    const/16 v0, 0x7d

    :goto_0
    invoke-virtual {p0, v0}, Luc5;->u(C)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x5d

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Luc5;->i:Z

    iget-object v0, p0, Luc5;->g:Ljava/util/BitSet;

    iget v1, p0, Luc5;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Luc5;->h:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    iput-boolean v0, p0, Luc5;->j:Z

    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    const-string v0, "Invalid call to end()"

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Luc5;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luc5;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Luc5;->e:[B

    iget v3, p0, Luc5;->f:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    iput v1, p0, Luc5;->f:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Luc5;->a:Ljava/lang/Appendable;

    iget-object v2, p0, Luc5;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object p0, p0, Luc5;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance v0, Lcom/grack/nanojson/JsonWriterException;

    invoke-direct {v0, p0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public l()Luc5;
    .locals 1

    invoke-virtual {p0}, Luc5;->s()V

    sget-object v0, Luc5;->m:[C

    invoke-virtual {p0, v0}, Luc5;->w([C)V

    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public m(Ljava/lang/String;)Luc5;
    .locals 0

    invoke-virtual {p0, p1}, Luc5;->t(Ljava/lang/String;)V

    sget-object p1, Luc5;->m:[C

    invoke-virtual {p0, p1}, Luc5;->w([C)V

    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public n()Luc5;
    .locals 3

    invoke-virtual {p0}, Luc5;->s()V

    iget-object v0, p0, Luc5;->g:Ljava/util/BitSet;

    iget v1, p0, Luc5;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Luc5;->h:I

    iget-boolean v2, p0, Luc5;->j:Z

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Luc5;->j:Z

    iput-boolean v0, p0, Luc5;->i:Z

    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Luc5;->u(C)V

    iget-object v1, p0, Luc5;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Luc5;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Luc5;->l:I

    invoke-virtual {p0}, Luc5;->b()V

    :cond_0
    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public o(Ljava/lang/String;)Luc5;
    .locals 2

    invoke-virtual {p0, p1}, Luc5;->t(Ljava/lang/String;)V

    iget-object p1, p0, Luc5;->g:Ljava/util/BitSet;

    iget v0, p0, Luc5;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Luc5;->h:I

    iget-boolean v1, p0, Luc5;->j:Z

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Luc5;->j:Z

    iput-boolean p1, p0, Luc5;->i:Z

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Luc5;->u(C)V

    iget-object v0, p0, Luc5;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Luc5;->l:I

    add-int/2addr v0, p1

    iput v0, p0, Luc5;->l:I

    invoke-virtual {p0}, Luc5;->b()V

    :cond_0
    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public p(Ljava/lang/String;Ljava/util/Map;)Luc5;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Luc5;->n()Luc5;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Luc5;->o(Ljava/lang/String;)Luc5;

    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid key type for map: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p2, "null"

    goto :goto_2

    :cond_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Luc5;->D(Ljava/lang/String;Ljava/lang/Object;)Luc5;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Luc5;->j()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public q(Ljava/util/Map;)Luc5;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Luc5;->p(Ljava/lang/String;Ljava/util/Map;)Luc5;

    move-result-object p0

    return-object p0
.end method

.method public final r()V
    .locals 1

    iget-boolean v0, p0, Luc5;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Luc5;->i:Z

    goto :goto_0

    :cond_0
    iget v0, p0, Luc5;->h:I

    if-eqz v0, :cond_2

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Luc5;->u(C)V

    iget-object v0, p0, Luc5;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Luc5;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Luc5;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    const-string v0, "Invalid call to emit a value in a finished JSON writer"

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final s()V
    .locals 1

    iget-boolean v0, p0, Luc5;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Luc5;->r()V

    return-void

    :cond_0
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    const-string v0, "Invalid call to emit a keyless value while writing an object"

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Luc5;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Luc5;->r()V

    iget-object v0, p0, Luc5;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luc5;->a()V

    :cond_0
    invoke-virtual {p0, p1}, Luc5;->i(Ljava/lang/String;)V

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Luc5;->u(C)V

    return-void

    :cond_1
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    const-string p1, "Invalid call to emit a key value while not writing an object"

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final u(C)V
    .locals 3

    iget-boolean v0, p0, Luc5;->c:Z

    const/16 v1, 0x2800

    if-eqz v0, :cond_1

    iget v0, p0, Luc5;->f:I

    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Luc5;->k()V

    :cond_0
    iget-object v0, p0, Luc5;->e:[B

    iget v1, p0, Luc5;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Luc5;->f:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Luc5;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Luc5;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-le p1, v1, :cond_2

    invoke-virtual {p0}, Luc5;->k()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Luc5;->c:Z

    const/16 v1, 0x2800

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Luc5;->f:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_0

    invoke-virtual {p0}, Luc5;->k()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Luc5;->e:[B

    iget v3, p0, Luc5;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Luc5;->f:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Luc5;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Luc5;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-le p1, v1, :cond_2

    invoke-virtual {p0}, Luc5;->k()V

    :cond_2
    return-void
.end method

.method public final w([C)V
    .locals 5

    iget-boolean v0, p0, Luc5;->c:Z

    const/16 v1, 0x2800

    if-eqz v0, :cond_1

    array-length v0, p1

    iget v2, p0, Luc5;->f:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_0

    invoke-virtual {p0}, Luc5;->k()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Luc5;->e:[B

    iget v3, p0, Luc5;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Luc5;->f:I

    aget-char v4, p1, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Luc5;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Luc5;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-le p1, v1, :cond_2

    invoke-virtual {p0}, Luc5;->k()V

    :cond_2
    return-void
.end method

.method public final x(C)Z
    .locals 0

    const/16 p0, 0x20

    if-lt p1, p0, :cond_2

    const/16 p0, 0x80

    if-lt p1, p0, :cond_0

    const/16 p0, 0xa0

    if-lt p1, p0, :cond_2

    :cond_0
    const/16 p0, 0x2000

    if-lt p1, p0, :cond_1

    const/16 p0, 0x2100

    if-ge p1, p0, :cond_1

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

.method public y(Ljava/lang/Number;)Luc5;
    .locals 0

    invoke-virtual {p0}, Luc5;->s()V

    if-nez p1, :cond_0

    sget-object p1, Luc5;->m:[C

    invoke-virtual {p0, p1}, Luc5;->w([C)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Luc5;->v(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Luc5;->g()Luc5;

    move-result-object p0

    return-object p0
.end method

.method public z(Ljava/lang/Object;)Luc5;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Luc5;->l()Luc5;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Luc5;->A(Ljava/lang/String;)Luc5;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Luc5;->y(Ljava/lang/Number;)Luc5;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Luc5;->G(Z)Luc5;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Luc5;->f(Ljava/util/Collection;)Luc5;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Luc5;->q(Ljava/util/Map;)Luc5;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Luc5;->c()Luc5;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Luc5;->z(Ljava/lang/Object;)Luc5;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Luc5;->j()Luc5;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to handle type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
