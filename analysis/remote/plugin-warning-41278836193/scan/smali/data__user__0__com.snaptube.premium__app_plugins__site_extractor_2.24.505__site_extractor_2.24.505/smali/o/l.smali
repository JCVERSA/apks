.class public abstract Lo/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/z;->a()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string v4, "com.snaptube.premium.extractor.TraceContext"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "begin"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 19
    .line 20
    :try_start_1
    new-array v5, v1, [Ljava/lang/Class;

    .line 21
    .line 22
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    aput-object v6, v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 25
    .line 26
    :try_start_2
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 30
    :try_start_3
    const-string v5, "log"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 31
    .line 32
    :try_start_4
    new-array v6, v1, [Ljava/lang/Class;

    .line 33
    .line 34
    const-class v7, [Ljava/lang/String;

    .line 35
    .line 36
    aput-object v7, v6, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 37
    .line 38
    :try_start_5
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 42
    :try_start_6
    const-string v6, "http"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 43
    .line 44
    const/4 v7, 0x4

    .line 45
    :try_start_7
    new-array v7, v7, [Ljava/lang/Class;

    .line 46
    .line 47
    const-class v8, Ljava/lang/String;

    .line 48
    .line 49
    aput-object v8, v7, v0

    .line 50
    .line 51
    aput-object v8, v7, v1

    .line 52
    .line 53
    const/4 v9, 0x2

    .line 54
    aput-object v8, v7, v9

    .line 55
    .line 56
    const/4 v9, 0x3

    .line 57
    aput-object v8, v7, v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 58
    .line 59
    :try_start_8
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 63
    :try_start_9
    const-string v7, "error"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 64
    .line 65
    :try_start_a
    new-array v1, v1, [Ljava/lang/Class;

    .line 66
    .line 67
    const-class v8, Ljava/lang/Throwable;

    .line 68
    .line 69
    aput-object v8, v1, v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 70
    .line 71
    :try_start_b
    invoke-virtual {v3, v7, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 75
    :try_start_c
    const-string v1, "save"

    .line 76
    .line 77
    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    .line 79
    .line 80
    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 81
    :try_start_d
    const-string v7, "restore"

    .line 82
    .line 83
    invoke-virtual {v3, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 84
    .line 85
    .line 86
    move-result-object v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 87
    :try_start_e
    const-string v8, "getItems"

    .line 88
    .line 89
    invoke-virtual {v3, v8, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    .line 91
    .line 92
    move-result-object v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 93
    goto :goto_c

    .line 94
    :catch_0
    move-exception v3

    .line 95
    goto :goto_b

    .line 96
    :catch_1
    move-exception v3

    .line 97
    move-object v7, v2

    .line 98
    goto :goto_b

    .line 99
    :catch_2
    move-exception v3

    .line 100
    move-object v1, v2

    .line 101
    :goto_0
    move-object v7, v1

    .line 102
    goto :goto_b

    .line 103
    :catch_3
    move-exception v3

    .line 104
    :goto_1
    move-object v0, v2

    .line 105
    move-object v1, v0

    .line 106
    goto :goto_0

    .line 107
    :goto_2
    move-object v3, v0

    .line 108
    goto :goto_1

    .line 109
    :catch_4
    move-exception v0

    .line 110
    goto :goto_2

    .line 111
    :catch_5
    move-exception v3

    .line 112
    :goto_3
    move-object v0, v2

    .line 113
    move-object v1, v0

    .line 114
    move-object v6, v1

    .line 115
    :goto_4
    move-object v7, v6

    .line 116
    goto :goto_b

    .line 117
    :goto_5
    move-object v3, v0

    .line 118
    goto :goto_3

    .line 119
    :catch_6
    move-exception v0

    .line 120
    goto :goto_5

    .line 121
    :catch_7
    move-exception v3

    .line 122
    :goto_6
    move-object v0, v2

    .line 123
    move-object v1, v0

    .line 124
    move-object v5, v1

    .line 125
    :goto_7
    move-object v6, v5

    .line 126
    goto :goto_4

    .line 127
    :goto_8
    move-object v3, v0

    .line 128
    goto :goto_6

    .line 129
    :catch_8
    move-exception v0

    .line 130
    goto :goto_8

    .line 131
    :catch_9
    move-exception v3

    .line 132
    :goto_9
    move-object v0, v2

    .line 133
    move-object v1, v0

    .line 134
    move-object v4, v1

    .line 135
    move-object v5, v4

    .line 136
    goto :goto_7

    .line 137
    :goto_a
    move-object v3, v0

    .line 138
    goto :goto_9

    .line 139
    :catch_a
    move-exception v0

    .line 140
    goto :goto_a

    .line 141
    :goto_b
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :goto_c
    sput-object v4, Lo/l;->a:Ljava/lang/reflect/Method;

    .line 145
    .line 146
    sput-object v5, Lo/l;->b:Ljava/lang/reflect/Method;

    .line 147
    .line 148
    sput-object v6, Lo/l;->c:Ljava/lang/reflect/Method;

    .line 149
    .line 150
    sput-object v0, Lo/l;->d:Ljava/lang/reflect/Method;

    .line 151
    .line 152
    sput-object v1, Lo/l;->e:Ljava/lang/reflect/Method;

    .line 153
    .line 154
    sput-object v7, Lo/l;->f:Ljava/lang/reflect/Method;

    .line 155
    .line 156
    sput-object v2, Lo/l;->g:Ljava/lang/reflect/Method;

    .line 157
    .line 158
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lo/l;->c:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aput-object p0, v2, v3

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    aput-object p1, v2, p0

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    aput-object p2, v2, p0

    .line 15
    .line 16
    const/4 p0, 0x3

    .line 17
    aput-object p3, v2, p0

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lo/l;->b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static varargs b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public static varargs c([Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lo/l;->b:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aput-object p0, v2, v3

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lo/l;->b(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
