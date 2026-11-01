.class public abstract La/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Ljava/lang/Class;


# direct methods
.method private static a(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, La/b;->a:Ljava/lang/Class;

    .line 3
    .line 4
    if-nez v1, :cond_1

    .line 5
    .line 6
    invoke-static {}, La/a;->a()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    invoke-static {}, La/a;->a()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "com.snaptube.util.ProductionEnv"

    .line 22
    .line 23
    invoke-static {v2, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, La/b;->a:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    new-array v2, v1, [Ljava/lang/Class;

    .line 39
    .line 40
    new-array v3, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    :goto_1
    if-ge v4, v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, La/b$a;

    .line 50
    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    invoke-static {v5}, La/b$a;->a(La/b$a;)Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    aput-object v6, v2, v4

    .line 58
    .line 59
    invoke-static {v5}, La/b$a;->b(La/b$a;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    aput-object v5, v3, v4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    :goto_2
    add-int/2addr v4, v0

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    sget-object p1, La/b;->a:Ljava/lang/Class;

    .line 71
    .line 72
    invoke-virtual {p1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :goto_4
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, La/b$a;

    .line 7
    .line 8
    const-class v2, Ljava/lang/Throwable;

    .line 9
    .line 10
    invoke-direct {v1, v2, p0}, La/b$a;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const-string p0, "throwExceptForDebugging"

    .line 18
    .line 19
    invoke-static {p0, v0}, La/b;->a(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
