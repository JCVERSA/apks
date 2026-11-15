.class public final Lcom/transsion/startup/StartupManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lqx/b;
.implements Lyg/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/startup/StartupManager$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/startup/StartupManager$a;

.field private static final h:Lkotlin/Lazy;


# instance fields
.field private a:Z

.field private final b:Ljava/util/List;

.field private c:Landroid/app/Application;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/startup/StartupManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/startup/StartupManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/startup/StartupManager;->g:Lcom/transsion/startup/StartupManager$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/transsion/startup/b;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/transsion/startup/b;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/transsion/startup/StartupManager;->h:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/startup/StartupManager;->b:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/startup/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/startup/c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/transsion/startup/StartupManager;->d:Lkotlin/Lazy;

    .line 21
    .line 22
    new-instance v0, Lcom/transsion/startup/d;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/transsion/startup/d;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/transsion/startup/StartupManager;->e:Lkotlin/Lazy;

    .line 32
    .line 33
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/transsion/startup/StartupManager;->f:Lkotlinx/coroutines/n0;

    .line 52
    .line 53
    return-void
.end method

.method private final B()V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "current_env"

    .line 8
    .line 9
    const-string v3, "release"

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    xor-int/lit8 v4, v4, 0x1

    .line 20
    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v6, "env="

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v6, "  "

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    const-string v1, "app"

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    :cond_0
    invoke-direct {p0, v1}, Lcom/transsion/startup/StartupManager;->C(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private final C(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/f;->a()Z

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/f;->b()Z

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/blankj/utilcode/util/f;->c()Z

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/f;->d()Z

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/n;->c(Ljava/io/File;)Z

    .line 22
    .line 23
    .line 24
    const-string p1, "StartupManager"

    .line 25
    .line 26
    const-string v0, "clear"

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method private final D()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->Y()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->R()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->b0()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->S()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->N()V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->a:Lcom/transsion/baselib/report/AppPeriodReport;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/baselib/report/AppPeriodReport;->b()V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lkj/k;->a:Lkj/k;

    .line 22
    .line 23
    invoke-virtual {v1}, Lkj/k;->a()V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/transsion/baselib/locale/d;->f:Lcom/transsion/baselib/locale/d$b;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/transsion/baselib/locale/d$b;->e()Lcom/transsion/baselib/locale/d;

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/transsion/baselib/locale/LocaleChangedHelper;->a:Lcom/transsion/baselib/locale/LocaleChangedHelper;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 34
    .line 35
    const-string v3, "app"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object v2, v4

    .line 44
    :cond_0
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/locale/LocaleChangedHelper;->b(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v1, v4

    .line 55
    :cond_1
    invoke-static {v1}, Lyj/a;->b(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v1, v4

    .line 66
    :cond_2
    invoke-static {v1}, Lcom/google/firebase/f;->q(Landroid/content/Context;)Lcom/google/firebase/f;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    new-instance v8, Lcom/transsion/startup/StartupManager$coldBootStage$1;

    .line 78
    .line 79
    invoke-direct {v8, p0, v4}, Lcom/transsion/startup/StartupManager$coldBootStage$1;-><init>(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)V

    .line 80
    .line 81
    .line 82
    const/4 v9, 0x3

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v7, 0x0

    .line 86
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    new-instance v8, Lcom/transsion/startup/StartupManager$coldBootStage$2;

    .line 98
    .line 99
    invoke-direct {v8, p0, v4}, Lcom/transsion/startup/StartupManager$coldBootStage$2;-><init>(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)V

    .line 100
    .line 101
    .line 102
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->B()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/transsion/baselib/report/AppPeriodReport;->b()V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->J()V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Lyg/l;->l(Lyg/m;)V

    .line 117
    .line 118
    .line 119
    sget-object v5, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 122
    .line 123
    if-nez v0, :cond_3

    .line 124
    .line 125
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    move-object v6, v4

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    move-object v6, v0

    .line 131
    :goto_0
    new-instance v10, Lcom/transsion/baselib/report/i;

    .line 132
    .line 133
    invoke-direct {v10}, Lcom/transsion/baselib/report/i;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v11, "wefeed-mobile-bff"

    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v8, 0x0

    .line 140
    const/4 v9, 0x0

    .line 141
    invoke-virtual/range {v5 .. v11}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->j(Landroid/app/Application;ZZZLqi/i;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method private static final E()Lcom/transsion/startup/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/transsion/startup/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/startup/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private final F(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    move-object v1, p1

    .line 19
    check-cast v1, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    add-int/lit8 v4, v2, 0x1

    .line 37
    .line 38
    if-gez v2, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 41
    .line 42
    .line 43
    :cond_1
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/lit8 v3, v3, -0x1

    .line 53
    .line 54
    if-ne v2, v3, :cond_2

    .line 55
    .line 56
    const-string v2, ""

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const-string v2, ","

    .line 60
    .line 61
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move v2, v4

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 72
    return-object p1
.end method

.method private final G()Lcom/transsion/startup/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/StartupManager;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/startup/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final H()Lbt/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/StartupManager;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lbt/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final I()V
    .locals 8

    .line 1
    sget-object v0, Lmg/a;->a:Lmg/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmg/a$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v2, "sp_code"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, v0

    .line 21
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    sget-object v0, Ltg/b;->a:Ltg/b;

    .line 28
    .line 29
    invoke-virtual {v0}, Ltg/b;->o()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_2
    move-object v6, v1

    .line 34
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    const-string v0, "app"

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    :cond_3
    move-object v3, v0

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    new-instance v5, Lcom/transsion/baselib/report/i;

    .line 51
    .line 52
    invoke-direct {v5}, Lcom/transsion/baselib/report/i;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    move-object v2, p0

    .line 58
    invoke-direct/range {v2 .. v7}, Lcom/transsion/startup/StartupManager;->Z(Landroid/app/Application;ZLqi/i;Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :goto_3
    return-void
.end method

.method private final J()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/startup/StartupManager$c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/startup/StartupManager$c;-><init>(Lcom/transsion/startup/StartupManager;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/report/k;->g(Lcom/transsion/baselib/report/k$a;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final K()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/e;->q()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/report/e;->p(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->L()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final L()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/baselib/config/f;->c:Lcom/transsion/baselib/config/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/config/f$a;->a()Lcom/transsion/baselib/config/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/transsion/startup/e;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/transsion/startup/e;-><init>(Lcom/transsion/startup/StartupManager;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/config/f;->e(Lkotlin/jvm/functions/Function2;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/transsion/baselib/config/CrashHandler;->c:Lcom/transsion/baselib/config/CrashHandler$a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/baselib/config/CrashHandler$a;->a()Lcom/transsion/baselib/config/CrashHandler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string v1, "app"

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/config/CrashHandler;->g(Landroid/app/Application;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final M(Lcom/transsion/startup/StartupManager;ZLcom/google/firebase/remoteconfig/a;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "remoteConfig"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v3, Lcom/transsion/startup/StartupManager$initFirebaseConfig$1$1;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-direct {v3, p0, p2, p1}, Lcom/transsion/startup/StartupManager$initFirebaseConfig$1$1;-><init>(Lcom/transsion/startup/StartupManager;Lcom/google/firebase/remoteconfig/a;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 27
    .line 28
    .line 29
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private final N()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsnet/flow/event/b;->a:Lcom/transsnet/flow/event/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "app"

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/b;->c(Landroid/app/Application;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final O()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "app"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    const-string v1, "4U01pxRu278GqCZKY9"

    .line 12
    .line 13
    sget-object v2, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/transsion/api/gateway/GateWaySdk;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "app"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final Q(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->H()Lbt/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "app"

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :cond_0
    invoke-virtual {v0, v1, p1}, Lbt/a;->a(Landroid/app/Application;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final R()V
    .locals 9

    .line 1
    sget-object v0, Lxf/c;->a:Lxf/c$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "app"

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    sget-object v2, Lcom/tn/lib/logger/xlog/LogType;->TYPE_XLOG:Lcom/tn/lib/logger/xlog/LogType;

    .line 14
    .line 15
    const/16 v7, 0x18

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    invoke-static/range {v0 .. v8}, Lxf/c$a;->g(Lxf/c$a;Landroid/app/Application;Lcom/tn/lib/logger/xlog/LogType;ZLjava/lang/String;JILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final S()V
    .locals 2

    .line 1
    sget-object v0, Ldj/a;->a:Ldj/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "app"

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    invoke-virtual {v0, v1}, Ldj/a;->a(Landroid/app/Application;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final T()V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const-string v1, "ShortTv"

    .line 4
    .line 5
    const-string v2, "initShortTv"

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-class v0, Lio/b;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lio/b;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "app"

    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v0, v1}, Lio/b;->j(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "initShortTv fail-- "

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const/4 v5, 0x4

    .line 63
    const/4 v6, 0x0

    .line 64
    const-string v2, "ShortTv"

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_2
    return-void
.end method

.method private final U()V
    .locals 9

    invoke-static {}, Lcom/community/oneroom/nu/mm/a;->installPlaybackClientBuild()V

    .line 1
    new-instance v0, Lag/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lag/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 7
    .line 8
    const-string v2, "app"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v1, v3

    .line 17
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v4, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object v4, v3

    .line 29
    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v4, "getPackageInfo(...)"

    .line 39
    .line 40
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 44
    .line 45
    invoke-virtual {v0, v6, v7}, Lag/b;->g(J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5}, Lag/b;->e(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v5}, Lag/b;->f(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    const-string v1, ""

    .line 59
    .line 60
    :cond_2
    invoke-virtual {v0, v1}, Lag/b;->h(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v1, Lag/a;->a:Lag/a$a;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move-object v4, v3

    .line 73
    :cond_3
    invoke-virtual {v1, v4, v0}, Lag/a$a;->f(Landroid/app/Application;Lag/b;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v5}, Lag/a$a;->h(Z)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->O()V

    .line 80
    .line 81
    .line 82
    sget-object v0, Lij/t;->a:Lij/t;

    .line 83
    .line 84
    invoke-virtual {v0}, Lij/t;->b()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    sget-object v0, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    .line 91
    .line 92
    :goto_0
    invoke-virtual {v0}, Lcom/transsion/baselib/utils/PlayMode;->getValue()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    sget-object v0, Lcom/transsion/baselib/utils/PlayMode;->DOWNLOAD:Lcom/transsion/baselib/utils/PlayMode;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :goto_1
    sget-object v1, Ljg/b;->a:Ljg/b$a;

    .line 101
    .line 102
    const-string v2, "X-Play-Mode"

    .line 103
    .line 104
    invoke-virtual {v1, v2, v0}, Ljg/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const-string v4, "k_is_family_mode"

    .line 114
    .line 115
    invoke-virtual {v2, v4, v5}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    const-string v4, "0"

    .line 120
    .line 121
    const-string v6, "1"

    .line 122
    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    move-object v2, v6

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    move-object v2, v4

    .line 128
    :goto_2
    const-string v7, "X-Family-Mode"

    .line 129
    .line 130
    invoke-virtual {v1, v7, v2}, Ljg/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sget-object v2, Lij/o;->a:Lij/o;

    .line 134
    .line 135
    invoke-virtual {v2}, Lij/o;->n()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const-string v7, "k_setting_privacy_idle"

    .line 143
    .line 144
    const/4 v8, 0x1

    .line 145
    invoke-virtual {v2, v7, v8}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_6

    .line 150
    .line 151
    move-object v4, v6

    .line 152
    :cond_6
    const-string v2, "X-Idle-Data"

    .line 153
    .line 154
    invoke-virtual {v1, v2, v4}, Ljg/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget-object v1, Lkg/c;->e:Lkg/c$a;

    .line 158
    .line 159
    invoke-virtual {v1}, Lkg/c$a;->a()Lkg/c;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lkg/c;->g()Lokhttp3/OkHttpClient;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {p0, v1}, Lcom/transsion/startup/StartupManager;->n0(Lokhttp3/OkHttpClient;)V

    .line 168
    .line 169
    .line 170
    sget-object v1, Lbm/e;->a:Lbm/e;

    .line 171
    .line 172
    new-instance v2, Lcom/transsion/startup/StartupManager$d;

    .line 173
    .line 174
    invoke-direct {v2, p0}, Lcom/transsion/startup/StartupManager$d;-><init>(Lcom/transsion/startup/StartupManager;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Lbm/e;->r(Lbm/b;)V

    .line 178
    .line 179
    .line 180
    const/4 v2, 0x3

    .line 181
    invoke-static {v1, v3, v3, v2, v3}, Lbm/e;->p(Lbm/e;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const-string v1, "app_config_fetch_time"

    .line 189
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 191
    .line 192
    .line 193
    move-result-wide v2

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 195
    .line 196
    .line 197
    const-class v0, Lqx/a;

    .line 198
    .line 199
    new-array v1, v5, [Ljava/lang/Object;

    .line 200
    .line 201
    invoke-static {v0, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lqx/a;

    .line 206
    .line 207
    if-eqz v0, :cond_7

    .line 208
    .line 209
    invoke-interface {v0, p0}, Lqx/a;->e(Lqx/b;)V

    .line 210
    .line 211
    .line 212
    :cond_7
    return-void
.end method

.method private final W()V
    .locals 2

    .line 1
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/startup/StartupManager$e;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/transsion/startup/StartupManager$e;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lsn/e;->g(Lsn/f;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final X()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/push/tpush/PushRegisterManager;->a:Lcom/transsion/push/tpush/PushRegisterManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "app"

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsion/push/tpush/PushRegisterManager;->C(Landroid/app/Application;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final Y()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/therouter/TheRouter;->p(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "app"

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, v1}, Lcom/therouter/TheRouter;->j(Landroid/content/Context;Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/transsion/startup/StartupManager$f;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/transsion/startup/StartupManager$f;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/therouter/router/NavigatorKt;->l(Lmf/f;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/transsion/startup/StartupManager$g;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/transsion/startup/StartupManager$g;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/therouter/router/NavigatorKt;->h(Lmf/e;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private final Z(Landroid/app/Application;ZLqi/i;Ljava/lang/String;Z)V
    .locals 9

    .line 1
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 2
    .line 3
    const/16 v5, 0xa0a

    .line 4
    .line 5
    const/4 v6, 0x1

    .line 6
    const-string v4, "Oneroom"

    .line 7
    .line 8
    move-object v1, p1

    .line 9
    move v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v7, p4

    .line 12
    move v8, p5

    .line 13
    invoke-virtual/range {v0 .. v8}, Lqi/h;->j(Landroid/app/Application;ZLqi/i;Ljava/lang/String;IZLjava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a()Lcom/transsion/startup/StartupManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/startup/StartupManager;->e()Lcom/transsion/startup/StartupManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final a0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "5603aeef91bb9cca8a85955d1c7170e6"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/version/update/UpdateManager;->e(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic b()Lbt/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/startup/StartupManager;->e0()Lbt/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final b0()V
    .locals 4

    .line 1
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "app"

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v2

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Lfh/b$a;->c(Landroid/app/Application;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lsg/c;->a:Lsg/c$a;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v2, v1

    .line 28
    :goto_0
    invoke-virtual {v0, v2}, Lsg/c$a;->a(Landroid/app/Application;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static synthetic c()Lcom/transsion/startup/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/startup/StartupManager;->E()Lcom/transsion/startup/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Lcom/transsion/startup/StartupManager;ZLcom/google/firebase/remoteconfig/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/startup/StartupManager;->M(Lcom/transsion/startup/StartupManager;ZLcom/google/firebase/remoteconfig/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final e()Lcom/transsion/startup/StartupManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/startup/StartupManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/startup/StartupManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final e0()Lbt/a;
    .locals 1

    .line 1
    new-instance v0, Lbt/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lbt/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 2
    .line 3
    return-object p0
.end method

.method private final f0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "current_env"

    .line 8
    .line 9
    const-string v2, "release"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    sget-object v0, Ltg/b;->a:Ltg/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Ltg/b;->m()Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v1, "apkgaid"

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public static final synthetic g()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/startup/StartupManager;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private final g0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/baseui/widget/BaseLoadMoreView;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baseui/widget/BaseLoadMoreView;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lt6/j;->b(Ls6/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic h(Lcom/transsion/startup/StartupManager;)Lbt/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->H()Lbt/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final h0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, "app"

    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :cond_0
    invoke-interface {v0, v1}, Lqx/a;->l(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/StartupManager;->b:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->b:Ljava/util/List;

    .line 5
    .line 6
    check-cast v1, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/transsion/startup/StartupManager;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    check-cast v1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 35
    .line 36
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    monitor-exit v0

    .line 43
    throw v1
.end method

.method public static final synthetic j(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcom/transsion/startup/StartupManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/startup/StartupManager;->Q(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l0(Lcom/google/firebase/remoteconfig/a;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/transsion/startup/pref/anr/c;->a:Lcom/transsion/startup/pref/anr/c;

    .line 2
    .line 3
    const-string v1, "firebase --> the remote configuration is obtained"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/startup/pref/anr/c;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcm/f;->c:Lcm/f$a;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcm/f$a;->a()Lcm/f;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Lcm/f;->i(Lcom/google/firebase/remoteconfig/a;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/transsion/startup/pref/anr/a;->a:Lcom/transsion/startup/pref/anr/a;

    .line 18
    .line 19
    const-string v2, "watch_dog_timeout"

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lcom/google/firebase/remoteconfig/a;->n(Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/transsion/startup/pref/anr/a;->a(J)V

    .line 26
    .line 27
    .line 28
    const-string v1, "endpoints"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/google/firebase/remoteconfig/a;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "getString(...)"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v3, Lcom/tn/lib/net/dns/or/CacheIpPool;->a:Lcom/tn/lib/net/dns/or/CacheIpPool;

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Lcom/tn/lib/net/dns/or/CacheIpPool;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "firebase --> endpoints "

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/transsion/startup/pref/anr/c;->a(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "k_dy_so_control_config"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/google/firebase/remoteconfig/a;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "key_total_show_times"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lcom/google/firebase/remoteconfig/a;->n(Ljava/lang/String;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v5, "remoteConfig "

    .line 85
    .line 86
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, " k_dy_so_control_config="

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v3, "StartupManager"

    .line 105
    .line 106
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 110
    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v4, "isOpenDownloadForegroundService = "

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v4, ".getBoolean(RoomAppMMKV.DOWNLOAD_FOREGROUND_SERVICE)"

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    const/4 v8, 0x4

    .line 134
    const/4 v9, 0x0

    .line 135
    const-string v5, "download_notify"

    .line 136
    .line 137
    const/4 v7, 0x0

    .line 138
    move-object v4, v1

    .line 139
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    sget-object v3, Lcom/wecloud/load/lib/DySoLoadManager;->a:Lcom/wecloud/load/lib/DySoLoadManager;

    .line 143
    .line 144
    iget-object v4, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 145
    .line 146
    if-nez v4, :cond_0

    .line 147
    .line 148
    const-string v4, "app"

    .line 149
    .line 150
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 v4, 0x0

    .line 154
    :cond_0
    invoke-virtual {v3, v4, v0}, Lcom/wecloud/load/lib/DySoLoadManager;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v0, "prefetch_dns_hosts"

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Lcom/google/firebase/remoteconfig/a;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    const-string v2, "prefetch error = "

    .line 171
    .line 172
    if-lez v0, :cond_1

    .line 173
    .line 174
    :try_start_0
    const-class v0, Lcom/tn/lib/net/cons/PrefetchDnsUrls;

    .line 175
    .line 176
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/tn/lib/net/cons/PrefetchDnsUrls;

    .line 181
    .line 182
    const-string v5, "prefetchDns"

    .line 183
    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v4, "prefetch dns config = "

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p1, ", data = "

    .line 198
    .line 199
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    const/4 v8, 0x4

    .line 210
    const/4 v9, 0x0

    .line 211
    const/4 v7, 0x0

    .line 212
    move-object v4, v1

    .line 213
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/tn/lib/net/cons/PrefetchDnsUrls;->getHosts()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Ljava/lang/Iterable;

    .line 221
    .line 222
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_2

    .line 231
    .line 232
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    .line 238
    :try_start_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 239
    .line 240
    const-string v4, "prefetchDns"

    .line 241
    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v5, "prefetch dns hots = "

    .line 248
    .line 249
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    const/4 v7, 0x4

    .line 260
    const/4 v8, 0x0

    .line 261
    const/4 v6, 0x0

    .line 262
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    sget-object v1, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 266
    .line 267
    invoke-interface {v1, v0}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    .line 272
    :try_start_2
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 273
    .line 274
    const-string v4, "prefetchDns"

    .line 275
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v5, "1 prefetch error = "

    .line 282
    .line 283
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    const/4 v7, 0x4

    .line 294
    const/4 v8, 0x0

    .line 295
    const/4 v6, 0x0

    .line 296
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    .line 298
    .line 299
    goto :goto_0

    .line 300
    :catchall_1
    move-exception p1

    .line 301
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 302
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    const/4 v7, 0x4

    .line 319
    const/4 v8, 0x0

    .line 320
    const-string v4, "prefetchDns"

    .line 321
    .line 322
    const/4 v6, 0x0

    .line 323
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    goto :goto_1

    .line 327
    :cond_1
    :try_start_3
    const-string v5, "prefetchDns"

    .line 328
    .line 329
    const-string v6, "has no config~ prefetch def dns"

    .line 330
    .line 331
    const/4 v8, 0x4

    .line 332
    const/4 v9, 0x0

    .line 333
    const/4 v7, 0x0

    .line 334
    move-object v4, v1

    .line 335
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    sget-object p1, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 339
    .line 340
    const-string v0, "vgorigin.hakunaymatata.com"

    .line 341
    .line 342
    invoke-interface {p1, v0}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    .line 343
    .line 344
    .line 345
    const-string v0, "vacdn.hakunaymatata.com"

    .line 346
    .line 347
    invoke-interface {p1, v0}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 348
    .line 349
    .line 350
    goto :goto_1

    .line 351
    :catchall_2
    move-exception p1

    .line 352
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 353
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    const/4 v7, 0x4

    .line 370
    const/4 v8, 0x0

    .line 371
    const-string v4, "prefetchDns"

    .line 372
    .line 373
    const/4 v6, 0x0

    .line 374
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 378
    .line 379
    :cond_2
    :goto_1
    return-void
.end method

.method public static final synthetic m(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/StartupManager;->f:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v3, Lcom/transsion/startup/StartupManager$scheduleDelayTask$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/transsion/startup/StartupManager$scheduleDelayTask$1;-><init>(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic n(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n0(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/GateWaySdk;->setOkHttpClient(Lokhttp3/OkHttpClient;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final o0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lcom/transsion/startup/StartupManager$startupNetworkProbe$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/startup/StartupManager$startupNetworkProbe$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/startup/StartupManager$startupNetworkProbe$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/startup/StartupManager$startupNetworkProbe$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/startup/StartupManager$startupNetworkProbe$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/transsion/startup/StartupManager$startupNetworkProbe$1;-><init>(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v4, Lcom/transsion/startup/StartupManager$startupNetworkProbe$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lcom/transsion/startup/StartupManager$startupNetworkProbe$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_3

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 58
    .line 59
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 66
    .line 67
    const/4 v9, 0x4

    .line 68
    const/4 v10, 0x0

    .line 69
    const-string v6, "StartupManager"

    .line 70
    .line 71
    const-string v7, "network not connected, skip startupNetworkProbe!"

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    invoke-static/range {v5 .. v10}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_3
    sget-object v1, Lcom/wecloud/load/lib/StProbeIntegration;->a:Lcom/wecloud/load/lib/StProbeIntegration;

    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    invoke-virtual {v1, p1}, Lcom/wecloud/load/lib/StProbeIntegration;->l(Z)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lcom/wecloud/load/lib/j;->a:Lcom/wecloud/load/lib/j;

    .line 87
    .line 88
    new-instance v3, Lcom/transsion/startup/StartupManager$h;

    .line 89
    .line 90
    invoke-direct {v3}, Lcom/transsion/startup/StartupManager$h;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v3}, Lcom/wecloud/load/lib/j;->b(Lcom/wecloud/load/lib/j$a;)V

    .line 94
    .line 95
    .line 96
    :try_start_1
    iput v2, v4, Lcom/transsion/startup/StartupManager$startupNetworkProbe$1;->label:I

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    const/4 v3, 0x0

    .line 100
    const/4 v5, 0x3

    .line 101
    const/4 v6, 0x0

    .line 102
    invoke-static/range {v1 .. v6}, Lcom/wecloud/load/lib/StProbeIntegration;->k(Lcom/wecloud/load/lib/StProbeIntegration;ZILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-ne p1, v0, :cond_4

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_4
    :goto_2
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 110
    .line 111
    const-string v2, "StartupManager"

    .line 112
    .line 113
    const-string v3, "probeAllFromStProbeAndReport completed"

    .line 114
    .line 115
    const/4 v5, 0x4

    .line 116
    const/4 v6, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :goto_3
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "probeAllFromStProbeAndReport error: "

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const/4 v4, 0x4

    .line 142
    const/4 v5, 0x0

    .line 143
    const-string v1, "StartupManager"

    .line 144
    .line 145
    const/4 v3, 0x0

    .line 146
    invoke-static/range {v0 .. v5}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p1
.end method

.method public static final synthetic p(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->X()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->a0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic s(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic t(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->h0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->i0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lcom/transsion/startup/StartupManager;Lcom/google/firebase/remoteconfig/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/startup/StartupManager;->l0(Lcom/google/firebase/remoteconfig/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lcom/transsion/startup/StartupManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/startup/StartupManager;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic y(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/startup/StartupManager;->o0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final A(Landroid/content/Context;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->a:Lcom/transsion/startup/pref/consume/AppStartReport;

    .line 2
    .line 3
    new-instance v7, Lcom/transsion/startup/pref/consume/AppStartDotState;

    .line 4
    .line 5
    const/4 v5, 0x2

    .line 6
    const/4 v6, 0x0

    .line 7
    const-string v2, "app_start"

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    move-object v1, v7

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/transsion/startup/pref/consume/AppStartDotState;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v7}, Lcom/transsion/startup/pref/consume/AppStartReport;->e(Lcom/transsion/startup/pref/consume/AppStartDotState;)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v0, v1

    .line 33
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, "/mmkv"

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v2, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 51
    .line 52
    new-instance v3, Lcom/transsion/startup/StartupManager$b;

    .line 53
    .line 54
    invoke-direct {v3}, Lcom/transsion/startup/StartupManager$b;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->E(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;Lcom/tencent/mmkv/MMKVLogLevel;Lcom/tencent/mmkv/a;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {p1}, Lcom/transsion/startup/f;->c(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final V(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/startup/StartupManager;->Q(Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->S()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c0(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->D()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/startup/StartupManager;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j0(IZ)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "onTrimMemory "

    .line 9
    .line 10
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "StartupManager"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x5

    .line 29
    if-eq p1, p2, :cond_0

    .line 30
    .line 31
    const/16 p2, 0x28

    .line 32
    .line 33
    if-eq p1, p2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->H()Lbt/a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lbt/a;->c()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final k0(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/startup/StartupManager;->b:Ljava/util/List;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0

    .line 18
    throw p1
.end method

.method public onConnected()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyg/m$a;->a(Lyg/m;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    new-array p2, p1, [Ljava/lang/Object;

    const-class v0, Lkk/a;

    invoke-static {v0, p2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkk/a;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1}, Lkk/a;->c(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, p1}, Lkk/a;->i(Z)V

    .line 5
    :cond_1
    sget-object p1, Lbm/e;->a:Lbm/e;

    invoke-virtual {p1}, Lbm/e;->m()V

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .line 1
    sget-object v0, Lbm/e;->a:Lbm/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lbm/e;->n()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 2

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lqx/b$a;->a(Lqx/b;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lbm/e;->a:Lbm/e;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-static {p1, v0, v0, v1, v0}, Lbm/e;->p(Lbm/e;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onLogout()V
    .locals 0

    .line 1
    invoke-static {p0}, Lqx/b$a;->b(Lqx/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqx/b$a;->c(Lqx/b;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p0(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    .line 1
    const-string v0, "ids"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/startup/StartupManager;->F(Ljava/util/List;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lcom/transsion/baselib/helper/l;->b:Lcom/transsion/baselib/helper/l$a;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/transsion/baselib/helper/l$a;->a()Lcom/transsion/baselib/helper/l;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/helper/l;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "userPrefer = "

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v6, 0x4

    .line 46
    const/4 v7, 0x0

    .line 47
    const-string v3, "UserPrefer-tag"

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "{\"ids\":"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lorg/json/JSONArray;

    .line 61
    .line 62
    check-cast p1, Ljava/util/Collection;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, "}"

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    sget-object p1, Lmg/b;->a:Lmg/b$a;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->G()Lcom/transsion/startup/a;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 91
    .line 92
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v0, v1, p1}, Lcom/transsion/startup/a;->a(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget-object v0, Ldg/d;->a:Ldg/d;

    .line 101
    .line 102
    invoke-virtual {v0}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v0, Lcom/transsion/startup/StartupManager$i;

    .line 111
    .line 112
    invoke-direct {v0, p2}, Lcom/transsion/startup/StartupManager$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    return-void
.end method

.method public final z(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/transsion/startup/StartupManager;->a:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/startup/StartupManager;->b:Ljava/util/List;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/transsion/startup/StartupManager;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0

    .line 26
    throw p1
.end method
