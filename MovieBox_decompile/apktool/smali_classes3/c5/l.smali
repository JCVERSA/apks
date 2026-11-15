.class public Lc5/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Lc5/z0;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lc5/z0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc5/l;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lc5/l;->b:Lc5/z0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 9

    .line 1
    iget-object p4, p1, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 6
    .line 7
    invoke-virtual {p4, p1}, Lc5/j1;->l0(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    move-object p5, p2

    .line 12
    check-cast p5, [Ljava/lang/Object;

    .line 13
    .line 14
    array-length v0, p5

    .line 15
    iget-object v1, p1, Lc5/o0;->r:Lc5/e1;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1, v1, p2, p3, v2}, Lc5/o0;->w(Lc5/e1;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    const/16 p3, 0x5b

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p4, p3}, Lc5/j1;->b(C)Lc5/j1;

    .line 24
    .line 25
    .line 26
    :goto_0
    if-ge v2, v0, :cond_5

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/16 p3, 0x2c

    .line 31
    .line 32
    invoke-virtual {p4, p3}, Lc5/j1;->b(C)Lc5/j1;

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p2

    .line 37
    goto :goto_3

    .line 38
    :cond_1
    :goto_1
    aget-object v5, p5, v2

    .line 39
    .line 40
    if-nez v5, :cond_3

    .line 41
    .line 42
    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 43
    .line 44
    invoke-virtual {p4, p3}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    instance-of p3, p2, [Ljava/lang/String;

    .line 51
    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    const-string p3, ""

    .line 55
    .line 56
    invoke-virtual {p4, p3}, Lc5/j1;->o0(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const-string p3, "null"

    .line 61
    .line 62
    invoke-virtual {p4, p3}, Lc5/j1;->d(Ljava/lang/CharSequence;)Lc5/j1;

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    iget-object v3, p0, Lc5/l;->a:Ljava/lang/Class;

    .line 71
    .line 72
    if-ne p3, v3, :cond_4

    .line 73
    .line 74
    iget-object v3, p0, Lc5/l;->b:Lc5/z0;

    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const/4 v7, 0x0

    .line 81
    const/4 v8, 0x0

    .line 82
    move-object v4, p1

    .line 83
    invoke-interface/range {v3 .. v8}, Lc5/z0;->c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p1, p3}, Lc5/o0;->q(Ljava/lang/Class;)Lc5/z0;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    move-object v4, p1

    .line 102
    invoke-interface/range {v3 .. v8}, Lc5/z0;->c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 103
    .line 104
    .line 105
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    const/16 p2, 0x5d

    .line 109
    .line 110
    invoke-virtual {p4, p2}, Lc5/j1;->b(C)Lc5/j1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    iput-object v1, p1, Lc5/o0;->r:Lc5/e1;

    .line 114
    .line 115
    return-void

    .line 116
    :goto_3
    iput-object v1, p1, Lc5/o0;->r:Lc5/e1;

    .line 117
    .line 118
    throw p2
.end method
