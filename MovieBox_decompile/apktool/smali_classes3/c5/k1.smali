.class public Lc5/k1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;
.implements Lb5/b2;


# static fields
.field public static a:Lc5/k1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/k1;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/k1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/k1;->a:Lc5/k1;

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

.method public static e(La5/a;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, La5/a;->r()La5/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, La5/b;->t0()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const/16 v3, 0x10

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, La5/b;->o0()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {v0, v3}, La5/b;->f0(I)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-interface {v0}, La5/b;->t0()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x2

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, La5/b;->E0()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {v0, v3}, La5/b;->f0(I)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    invoke-virtual {p0}, La5/a;->x()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    return v0
.end method

.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lc5/k1;->f(Lc5/o0;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-class p3, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne p2, p3, :cond_2

    .line 8
    .line 9
    iget-object p2, p1, La5/a;->f:La5/b;

    .line 10
    .line 11
    invoke-interface {p2}, La5/b;->t0()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-ne p3, v2, :cond_0

    .line 16
    .line 17
    invoke-interface {p2}, La5/b;->o0()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p2, v1}, La5/b;->f0(I)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuffer;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p2

    .line 30
    :cond_0
    invoke-virtual {p1}, La5/a;->x()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object p2

    .line 47
    :cond_2
    const-class p3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    if-ne p2, p3, :cond_5

    .line 50
    .line 51
    iget-object p2, p1, La5/a;->f:La5/b;

    .line 52
    .line 53
    invoke-interface {p2}, La5/b;->t0()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-ne p3, v2, :cond_3

    .line 58
    .line 59
    invoke-interface {p2}, La5/b;->o0()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p2, v1}, La5/b;->f0(I)V

    .line 64
    .line 65
    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object p2

    .line 72
    :cond_3
    invoke-virtual {p1}, La5/a;->x()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object p2

    .line 89
    :cond_5
    invoke-static {p1}, Lc5/k1;->e(La5/a;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1
.end method

.method public f(Lc5/o0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lc5/j1;->l0(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Lc5/j1;->o0(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
