.class public Lc5/j0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;
.implements Lb5/b2;


# static fields
.field public static a:Lc5/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/j0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/j0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/j0;->a:Lc5/j0;

    .line 7
    .line 8
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


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 1
    iget-object p1, p1, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    move-object p3, p2

    .line 4
    check-cast p3, Ljava/lang/Number;

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lc5/j1;->l0(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    instance-of p2, p2, Ljava/lang/Long;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide p4

    .line 22
    invoke-virtual {p1, p4, p5}, Lc5/j1;->g0(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p1, p2}, Lc5/j1;->e0(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-class p3, Ljava/lang/Byte;

    .line 46
    .line 47
    if-ne p2, p3, :cond_2

    .line 48
    .line 49
    const/16 p2, 0x42

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lc5/j1;->write(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-class p3, Ljava/lang/Short;

    .line 56
    .line 57
    if-ne p2, p3, :cond_3

    .line 58
    .line 59
    const/16 p2, 0x53

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lc5/j1;->write(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_1
    return-void
.end method

.method public d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p1, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const/16 v3, 0x10

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, v3}, La5/b;->f0(I)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 v2, 0x2

    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-interface {v0}, La5/b;->p()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-interface {v0, v3}, La5/b;->f0(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v2, 0x3

    .line 36
    if-ne v1, v2, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, La5/b;->g0()Ljava/math/BigDecimal;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->l0(Ljava/math/BigDecimal;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {v0, v3}, La5/b;->f0(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/16 v0, 0xc

    .line 55
    .line 56
    if-ne v1, v0, :cond_3

    .line 57
    .line 58
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, La5/a;->p0(Ljava/util/Map;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->t(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p1}, La5/a;->x()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->t(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    const-class p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    .line 82
    if-ne p2, p3, :cond_4

    .line 83
    .line 84
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 91
    .line 92
    .line 93
    return-object p2

    .line 94
    :cond_4
    return-object p1

    .line 95
    :goto_1
    const-string p2, "parseInt error"

    .line 96
    .line 97
    if-eqz p3, :cond_5

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p2, ", field : "

    .line 108
    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    :cond_5
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    .line 120
    .line 121
    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    throw p3
.end method
