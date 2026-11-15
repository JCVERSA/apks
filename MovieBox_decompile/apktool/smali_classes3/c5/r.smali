.class public Lc5/r;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;
.implements Lb5/b2;


# static fields
.field static final a:Ljava/math/BigDecimal;

.field static final b:Ljava/math/BigDecimal;

.field public static final c:Lc5/r;


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
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lc5/r;->a:Ljava/math/BigDecimal;

    .line 11
    .line 12
    const-wide v0, 0x1fffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lc5/r;->b:Ljava/math/BigDecimal;

    .line 22
    .line 23
    new-instance v0, Lc5/r;

    .line 24
    .line 25
    invoke-direct {v0}, Lc5/r;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lc5/r;->c:Lc5/r;

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
    .locals 4

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
    const/16 v3, 0x10

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, La5/b;->g0()Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {v0, v3}, La5/b;->f0(I)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-interface {v0}, La5/b;->t0()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x3

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, La5/b;->g0()Ljava/math/BigDecimal;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {v0, v3}, La5/b;->f0(I)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    invoke-virtual {p0}, La5/a;->x()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->i(Ljava/lang/Object;)Ljava/math/BigDecimal;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
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
    .locals 2

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
    goto :goto_1

    .line 11
    :cond_0
    check-cast p2, Ljava/math/BigDecimal;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    iget v0, p1, Lc5/j1;->c:I

    .line 18
    .line 19
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 20
    .line 21
    invoke-static {p5, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/16 v0, -0x64

    .line 28
    .line 29
    if-lt p3, v0, :cond_1

    .line 30
    .line 31
    const/16 v0, 0x64

    .line 32
    .line 33
    if-ge p3, v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    if-nez p3, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    const/16 v1, 0x10

    .line 51
    .line 52
    if-lt p3, v1, :cond_3

    .line 53
    .line 54
    iget p3, p1, Lc5/j1;->c:I

    .line 55
    .line 56
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 57
    .line 58
    invoke-static {p5, p3, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-eqz p3, :cond_3

    .line 63
    .line 64
    sget-object p3, Lc5/r;->a:Ljava/math/BigDecimal;

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-ltz p3, :cond_2

    .line 71
    .line 72
    sget-object p3, Lc5/r;->b:Ljava/math/BigDecimal;

    .line 73
    .line 74
    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-lez p3, :cond_3

    .line 79
    .line 80
    :cond_2
    invoke-virtual {p1, v0}, Lc5/j1;->o0(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    invoke-virtual {p1, v0}, Lc5/j1;->write(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 88
    .line 89
    invoke-virtual {p1, p3}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-eqz p3, :cond_4

    .line 94
    .line 95
    const-class p3, Ljava/math/BigDecimal;

    .line 96
    .line 97
    if-eq p4, p3, :cond_4

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-nez p2, :cond_4

    .line 104
    .line 105
    const/16 p2, 0x2e

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lc5/j1;->write(I)V

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_1
    return-void
.end method

.method public d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lc5/r;->e(La5/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "parseDecimal error, field : "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p2
.end method
