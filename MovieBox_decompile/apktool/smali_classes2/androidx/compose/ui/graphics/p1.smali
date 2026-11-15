.class public final Landroidx/compose/ui/graphics/p1;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Landroidx/compose/ui/graphics/p1;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/p1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/graphics/p1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/graphics/p1;->a:Landroidx/compose/ui/graphics/p1;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Z)V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v4, 0x1d

    .line 7
    .line 8
    if-lt v3, v4, :cond_0

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/graphics/s1;->a:Landroidx/compose/ui/graphics/s1;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/s1;->a(Landroid/graphics/Canvas;Z)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    sget-boolean v4, Landroidx/compose/ui/graphics/p1;->d:Z

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    if-nez v4, :cond_4

    .line 21
    .line 22
    const/16 v4, 0x1c

    .line 23
    .line 24
    const-string v6, "insertInorderBarrier"

    .line 25
    .line 26
    const-string v7, "insertReorderBarrier"

    .line 27
    .line 28
    const-class v8, Landroid/graphics/Canvas;

    .line 29
    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    :try_start_0
    const-class v3, Ljava/lang/Class;

    .line 33
    .line 34
    const-string v4, "getDeclaredMethod"

    .line 35
    .line 36
    new-array v9, v1, [Ljava/lang/Class;

    .line 37
    .line 38
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    new-array v10, v0, [Ljava/lang/Class;

    .line 43
    .line 44
    const-class v11, Ljava/lang/String;

    .line 45
    .line 46
    aput-object v11, v10, v1

    .line 47
    .line 48
    aput-object v9, v10, v2

    .line 49
    .line 50
    invoke-virtual {v3, v4, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-array v4, v1, [Ljava/lang/Class;

    .line 55
    .line 56
    new-array v9, v0, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v7, v9, v1

    .line 59
    .line 60
    aput-object v4, v9, v2

    .line 61
    .line 62
    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/reflect/Method;

    .line 67
    .line 68
    sput-object v4, Landroidx/compose/ui/graphics/p1;->b:Ljava/lang/reflect/Method;

    .line 69
    .line 70
    new-array v4, v1, [Ljava/lang/Class;

    .line 71
    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v6, v0, v1

    .line 75
    .line 76
    aput-object v4, v0, v2

    .line 77
    .line 78
    invoke-virtual {v3, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/reflect/Method;

    .line 83
    .line 84
    sput-object v0, Landroidx/compose/ui/graphics/p1;->c:Ljava/lang/reflect/Method;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v8, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Landroidx/compose/ui/graphics/p1;->b:Ljava/lang/reflect/Method;

    .line 92
    .line 93
    invoke-virtual {v8, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Landroidx/compose/ui/graphics/p1;->c:Ljava/lang/reflect/Method;

    .line 98
    .line 99
    :goto_0
    sget-object v0, Landroidx/compose/ui/graphics/p1;->b:Ljava/lang/reflect/Method;

    .line 100
    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 105
    .line 106
    .line 107
    :goto_1
    sget-object v0, Landroidx/compose/ui/graphics/p1;->c:Ljava/lang/reflect/Method;

    .line 108
    .line 109
    if-nez v0, :cond_3

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    :catch_0
    :goto_2
    sput-boolean v2, Landroidx/compose/ui/graphics/p1;->d:Z

    .line 116
    .line 117
    :cond_4
    if-eqz p2, :cond_5

    .line 118
    .line 119
    :try_start_1
    sget-object v0, Landroidx/compose/ui/graphics/p1;->b:Ljava/lang/reflect/Method;

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_5
    if-nez p2, :cond_6

    .line 130
    .line 131
    sget-object p2, Landroidx/compose/ui/graphics/p1;->c:Ljava/lang/reflect/Method;

    .line 132
    .line 133
    if-eqz p2, :cond_6

    .line 134
    .line 135
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .line 140
    .line 141
    :catch_1
    :cond_6
    :goto_3
    return-void
.end method
