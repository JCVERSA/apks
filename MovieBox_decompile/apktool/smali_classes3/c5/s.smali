.class public Lc5/s;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;
.implements Lb5/b2;


# static fields
.field private static final a:Ljava/math/BigInteger;

.field private static final b:Ljava/math/BigInteger;

.field public static final c:Lc5/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, -0x1fffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lc5/s;->a:Ljava/math/BigInteger;

    .line 11
    .line 12
    const-wide v0, 0x1fffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lc5/s;->b:Ljava/math/BigInteger;

    .line 22
    .line 23
    new-instance v0, Lc5/s;

    .line 24
    .line 25
    invoke-direct {v0}, Lc5/s;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lc5/s;->c:Lc5/s;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e(La5/a;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne v1, v2, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, La5/b;->E0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    invoke-interface {v0, v1}, La5/b;->f0(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const v1, 0xffff

    .line 24
    .line 25
    .line 26
    if-gt v0, v1, :cond_0

    .line 27
    .line 28
    new-instance v0, Ljava/math/BigInteger;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 35
    .line 36
    const-string v0, "decimal overflow"

    .line 37
    .line 38
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    invoke-virtual {p0}, La5/a;->x()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->j(Ljava/lang/Object;)Ljava/math/BigInteger;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :goto_0
    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 1

    .line 1
    iget-object p1, p1, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lc5/j1;->l0(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    check-cast p2, Ljava/math/BigInteger;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    const/16 v0, 0x10

    .line 22
    .line 23
    if-lt p4, v0, :cond_2

    .line 24
    .line 25
    iget p4, p1, Lc5/j1;->c:I

    .line 26
    .line 27
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 28
    .line 29
    invoke-static {p5, p4, v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    if-eqz p4, :cond_2

    .line 34
    .line 35
    sget-object p4, Lc5/s;->a:Ljava/math/BigInteger;

    .line 36
    .line 37
    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    if-ltz p4, :cond_1

    .line 42
    .line 43
    sget-object p4, Lc5/s;->b:Ljava/math/BigInteger;

    .line 44
    .line 45
    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-lez p2, :cond_2

    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1, p3}, Lc5/j1;->o0(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-virtual {p1, p3}, Lc5/j1;->write(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lc5/s;->e(La5/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
