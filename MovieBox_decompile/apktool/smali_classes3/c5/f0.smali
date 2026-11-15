.class public Lc5/f0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;


# static fields
.field public static a:Lc5/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/f0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/f0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/f0;->a:Lc5/f0;

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
.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 9

    .line 1
    iget-object p5, p1, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 6
    .line 7
    invoke-virtual {p5, p1}, Lc5/j1;->l0(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 12
    .line 13
    invoke-virtual {p5, v0}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    instance-of v0, p4, Ljava/lang/reflect/ParameterizedType;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    .line 25
    .line 26
    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    aget-object p4, p4, v1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p4, 0x0

    .line 34
    :goto_0
    move-object v0, p2

    .line 35
    check-cast v0, Ljava/util/Enumeration;

    .line 36
    .line 37
    iget-object v8, p1, Lc5/o0;->r:Lc5/e1;

    .line 38
    .line 39
    invoke-virtual {p1, v8, p2, p3, v1}, Lc5/o0;->w(Lc5/e1;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    const/16 p2, 0x5b

    .line 43
    .line 44
    :try_start_0
    invoke-virtual {p5, p2}, Lc5/j1;->b(C)Lc5/j1;

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    add-int/lit8 p2, v1, 0x1

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    const/16 p3, 0x2c

    .line 62
    .line 63
    invoke-virtual {p5, p3}, Lc5/j1;->b(C)Lc5/j1;

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catchall_0
    move-exception p2

    .line 68
    goto :goto_4

    .line 69
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {p5}, Lc5/j1;->h0()V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p1, p3}, Lc5/o0;->q(Ljava/lang/Class;)Lc5/z0;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const/4 v7, 0x0

    .line 88
    move-object v3, p1

    .line 89
    move-object v6, p4

    .line 90
    invoke-interface/range {v2 .. v7}, Lc5/z0;->c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 91
    .line 92
    .line 93
    :goto_3
    move v1, p2

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const/16 p2, 0x5d

    .line 96
    .line 97
    invoke-virtual {p5, p2}, Lc5/j1;->b(C)Lc5/j1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    iput-object v8, p1, Lc5/o0;->r:Lc5/e1;

    .line 101
    .line 102
    return-void

    .line 103
    :goto_4
    iput-object v8, p1, Lc5/o0;->r:Lc5/e1;

    .line 104
    .line 105
    throw p2
.end method
