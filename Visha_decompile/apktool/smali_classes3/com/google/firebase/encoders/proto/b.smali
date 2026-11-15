.class public final Lcom/google/firebase/encoders/proto/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzb7;


# static fields
.field public static final f:Ljava/nio/charset/Charset;

.field public static final g:Lvp3;

.field public static final h:Lvp3;

.field public static final i:Lyb7;


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Lyb7;

.field public final e:Lmj8;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/encoders/proto/b;->f:Ljava/nio/charset/Charset;

    const-string v0, "key"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/encoders/proto/b;->g:Lvp3;

    const-string v0, "value"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/encoders/proto/b;->h:Lvp3;

    new-instance v0, Ljj8;

    invoke-direct {v0}, Ljj8;-><init>()V

    sput-object v0, Lcom/google/firebase/encoders/proto/b;->i:Lyb7;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lyb7;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmj8;

    invoke-direct {v0, p0}, Lmj8;-><init>(Lcom/google/firebase/encoders/proto/b;)V

    iput-object v0, p0, Lcom/google/firebase/encoders/proto/b;->e:Lmj8;

    iput-object p1, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/firebase/encoders/proto/b;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/firebase/encoders/proto/b;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/firebase/encoders/proto/b;->d:Lyb7;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;Lzb7;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/encoders/proto/b;->t(Ljava/util/Map$Entry;Lzb7;)V

    return-void
.end method

.method public static m(I)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lvp3;)Lcom/google/firebase/encoders/proto/Protobuf;
    .locals 1

    const-class v0, Lcom/google/firebase/encoders/proto/Protobuf;

    invoke-virtual {p0, v0}, Lvp3;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/encoders/proto/Protobuf;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Lvp3;)I
    .locals 1

    const-class v0, Lcom/google/firebase/encoders/proto/Protobuf;

    invoke-virtual {p0, v0}, Lvp3;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/encoders/proto/Protobuf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic t(Ljava/util/Map$Entry;Lzb7;)V
    .locals 2

    sget-object v0, Lcom/google/firebase/encoders/proto/b;->g:Lvp3;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object v0, Lcom/google/firebase/encoders/proto/b;->h:Lvp3;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    return-void
.end method


# virtual methods
.method public b(Lvp3;DZ)Lzb7;
    .locals 2

    if-eqz p4, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double p4, p2, v0

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/b;->s(Lvp3;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    iget-object p1, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    const/16 p4, 0x8

    invoke-static {p4}, Lcom/google/firebase/encoders/proto/b;->m(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method public bridge synthetic c(Lvp3;I)Lzb7;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/proto/b;->h(Lvp3;I)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lvp3;J)Lzb7;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/proto/b;->j(Lvp3;J)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0
.end method

.method public e(Lvp3;Ljava/lang/Object;)Lzb7;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/encoders/proto/b;->g(Lvp3;Ljava/lang/Object;Z)Lzb7;

    move-result-object p0

    return-object p0
.end method

.method public f(Lvp3;FZ)Lzb7;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/b;->s(Lvp3;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    iget-object p1, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    const/4 p3, 0x4

    invoke-static {p3}, Lcom/google/firebase/encoders/proto/b;->m(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method public g(Lvp3;Ljava/lang/Object;Z)Lzb7;
    .locals 2

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_1

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/b;->s(Lvp3;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/firebase/encoders/proto/b;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    iget-object p2, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    :cond_2
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p3, v1}, Lcom/google/firebase/encoders/proto/b;->g(Lvp3;Ljava/lang/Object;Z)Lzb7;

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    sget-object v0, Lcom/google/firebase/encoders/proto/b;->i:Lyb7;

    invoke-virtual {p0, v0, p1, p3, v1}, Lcom/google/firebase/encoders/proto/b;->o(Lyb7;Lvp3;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/b;

    goto :goto_1

    :cond_5
    return-object p0

    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/firebase/encoders/proto/b;->b(Lvp3;DZ)Lzb7;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/proto/b;->f(Lvp3;FZ)Lzb7;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_9

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/firebase/encoders/proto/b;->k(Lvp3;JZ)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/proto/b;->l(Lvp3;ZZ)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v0, p2, [B

    if-eqz v0, :cond_c

    check-cast p2, [B

    if-eqz p3, :cond_b

    array-length p3, p2

    if-nez p3, :cond_b

    return-object p0

    :cond_b
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/b;->s(Lvp3;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    iget-object p1, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    :cond_c
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/b;->b:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyb7;

    if-eqz v0, :cond_d

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/firebase/encoders/proto/b;->o(Lyb7;Lvp3;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0

    :cond_d
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/b;->c:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llnb;

    if-eqz v0, :cond_e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/firebase/encoders/proto/b;->p(Llnb;Lvp3;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0

    :cond_e
    instance-of v0, p2, Lfj8;

    if-eqz v0, :cond_f

    check-cast p2, Lfj8;

    invoke-interface {p2}, Lfj8;->getNumber()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/proto/b;->h(Lvp3;I)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_10

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/proto/b;->h(Lvp3;I)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0

    :cond_10
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/b;->d:Lyb7;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/firebase/encoders/proto/b;->o(Lyb7;Lvp3;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0
.end method

.method public h(Lvp3;I)Lcom/google/firebase/encoders/proto/b;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/encoders/proto/b;->i(Lvp3;IZ)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0
.end method

.method public i(Lvp3;IZ)Lcom/google/firebase/encoders/proto/b;
    .locals 2

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/b;->r(Lvp3;)Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object p1

    sget-object p3, Lcom/google/firebase/encoders/proto/b$a;->a:[I

    invoke-interface {p1}, Lcom/google/firebase/encoders/proto/Protobuf;->intEncoding()Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    if-eq p3, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    iget-object p1, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    const/4 p3, 0x4

    invoke-static {p3}, Lcom/google/firebase/encoders/proto/b;->m(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    shl-int/lit8 p1, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    invoke-virtual {p0, p2}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    :goto_0
    return-object p0
.end method

.method public j(Lvp3;J)Lcom/google/firebase/encoders/proto/b;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/encoders/proto/b;->k(Lvp3;JZ)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0
.end method

.method public k(Lvp3;JZ)Lcom/google/firebase/encoders/proto/b;
    .locals 3

    if-eqz p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/firebase/encoders/proto/b;->r(Lvp3;)Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object p1

    sget-object p4, Lcom/google/firebase/encoders/proto/b$a;->a:[I

    invoke-interface {p1}, Lcom/google/firebase/encoders/proto/Protobuf;->intEncoding()Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p4, v0, :cond_3

    const/4 v2, 0x2

    if-eq p4, v2, :cond_2

    if-eq p4, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    iget-object p1, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    const/16 p4, 0x8

    invoke-static {p4}, Lcom/google/firebase/encoders/proto/b;->m(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    shl-long v0, p2, v0

    const/16 p1, 0x3f

    shr-long p1, p2, p1

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/proto/b;->v(J)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/google/firebase/encoders/proto/Protobuf;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/encoders/proto/b;->v(J)V

    :goto_0
    return-object p0
.end method

.method public l(Lvp3;ZZ)Lcom/google/firebase/encoders/proto/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/proto/b;->i(Lvp3;IZ)Lcom/google/firebase/encoders/proto/b;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lyb7;Ljava/lang/Object;)J
    .locals 2

    new-instance v0, Lhk5;

    invoke-direct {v0}, Lhk5;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, p2, p0}, Lea3;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v1, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lhk5;->b()J

    move-result-wide p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iput-object v1, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public final o(Lyb7;Lvp3;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/b;
    .locals 4

    invoke-virtual {p0, p1, p3}, Lcom/google/firebase/encoders/proto/b;->n(Lyb7;Ljava/lang/Object;)J

    move-result-wide v0

    if-eqz p4, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/google/firebase/encoders/proto/b;->s(Lvp3;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Lcom/google/firebase/encoders/proto/b;->u(I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/encoders/proto/b;->v(J)V

    invoke-interface {p1, p3, p0}, Lea3;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final p(Llnb;Lvp3;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/proto/b;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/encoders/proto/b;->e:Lmj8;

    invoke-virtual {v0, p2, p4}, Lmj8;->d(Lvp3;Z)V

    iget-object p2, p0, Lcom/google/firebase/encoders/proto/b;->e:Lmj8;

    invoke-interface {p1, p3, p2}, Lea3;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public q(Ljava/lang/Object;)Lcom/google/firebase/encoders/proto/b;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyb7;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p0}, Lea3;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No encoder for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final u(I)V
    .locals 4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final v(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/encoders/proto/b;->a:Ljava/io/OutputStream;

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
