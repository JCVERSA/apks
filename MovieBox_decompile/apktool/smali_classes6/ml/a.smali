.class public Lml/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/json/o;


# direct methods
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
.method public a(Lcom/transsion/json/m;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    check-cast p2, Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/json/m;->d()Lcom/transsion/json/q;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "values"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/transsion/json/q;->a(Ljava/lang/String;)Lcom/transsion/json/q;

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p2

    .line 26
    goto :goto_3

    .line 27
    :catch_0
    move-exception p2

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/json/m;->d()Lcom/transsion/json/q;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    invoke-virtual {p1, p4}, Lcom/transsion/json/m;->e(Lcom/transsion/json/q;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    :goto_0
    if-eqz p4, :cond_2

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {p4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    move v2, v0

    .line 48
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-ge v2, v3, :cond_1

    .line 53
    .line 54
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p1, v3, p4}, Lcom/transsion/json/m;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    add-int/2addr v2, p3

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/json/m;->d()Lcom/transsion/json/q;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/transsion/json/q;->d()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_2
    :try_start_1
    new-instance p2, Lcom/transsion/json/k;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    const-string p4, "Missing concrete class for array.  You might require a use() method."

    .line 78
    .line 79
    :try_start_2
    invoke-direct {p2, p4}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :goto_2
    :try_start_3
    new-instance p4, Lcom/transsion/json/k;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    .line 85
    const-string v1, "%s: Could not find class %s"

    .line 86
    .line 87
    :try_start_4
    invoke-virtual {p1}, Lcom/transsion/json/m;->d()Lcom/transsion/json/q;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/4 v4, 0x2

    .line 96
    new-array v4, v4, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v2, v4, v0

    .line 99
    .line 100
    aput-object v3, v4, p3

    .line 101
    .line 102
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-direct {p4, p3, p2}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/json/m;->d()Lcom/transsion/json/q;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/transsion/json/q;->d()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    throw p2
.end method
