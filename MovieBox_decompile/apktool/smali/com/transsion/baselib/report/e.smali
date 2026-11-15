.class public final Lcom/transsion/baselib/report/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/baselib/report/e;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/text/Regex;

.field private static final d:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/baselib/report/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/report/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/baselib/report/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/baselib/report/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/baselib/report/e;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Lkotlin/text/Regex;

    .line 20
    .line 21
    const-string v1, "VmSize:\\s*(\\d+)\\s*kB"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/transsion/baselib/report/e;->c:Lkotlin/text/Regex;

    .line 27
    .line 28
    new-instance v0, Lkotlin/text/Regex;

    .line 29
    .line 30
    const-string v1, "VmRSS:\\s*(\\d+)\\s*kB"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/transsion/baselib/report/e;->d:Lkotlin/text/Regex;

    .line 36
    .line 37
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

.method public static synthetic a(Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/baselib/report/e;->m(Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Llb/b;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/baselib/report/e;->o(Llb/b;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/baselib/report/e;->j()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final d(J)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 2
    .line 3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 4
    .line 5
    long-to-float p1, p1

    .line 6
    const/high16 p2, 0x44800000    # 1024.0f

    .line 7
    .line 8
    div-float/2addr p1, p2

    .line 9
    div-float/2addr p1, p2

    .line 10
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x1

    .line 15
    new-array v1, p2, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object p1, v1, v2

    .line 19
    .line 20
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "%.1f"

    .line 25
    .line 26
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "format(...)"

    .line 31
    .line 32
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "MB"

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method private final e(Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    new-instance v0, Ljava/io/BufferedReader;

    .line 4
    .line 5
    new-instance v1, Ljava/io/InputStreamReader;

    .line 6
    .line 7
    new-instance v2, Ljava/io/FileInputStream;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p3}, Lkotlin/io/TextStreamsKt;->c(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/transsion/baselib/report/e;Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p2, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/baselib/report/e;->e(Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final h(Landroid/content/Context;)Landroid/os/Debug$MemoryInfo;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "activity"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast p1, Landroid/app/ActivityManager;

    .line 15
    .line 16
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    filled-new-array {v0}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "getProcessMemoryInfo(...)"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    aget-object p1, p1, v0

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    return-object p1
.end method

.method private final i(I)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 2
    .line 3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 4
    .line 5
    int-to-float p1, p1

    .line 6
    const/high16 v1, 0x44800000    # 1024.0f

    .line 7
    .line 8
    div-float/2addr p1, v1

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v2, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object p1, v2, v3

    .line 18
    .line 19
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "%.1f"

    .line 24
    .line 25
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "format(...)"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, "MB"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method private static final j()Lqx/a;
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
    return-object v0
.end method

.method private final k(Lkotlin/text/Regex;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lkotlin/text/MatchResult;->a()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    return p1
.end method

.method private static final m(Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "line"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "VmSize"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 20
    .line 21
    sget-object v1, Lcom/transsion/baselib/report/e;->c:Lkotlin/text/Regex;

    .line 22
    .line 23
    invoke-direct {v0, v1, p1}, Lcom/transsion/baselib/report/e;->k(Lkotlin/text/Regex;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-direct {v0, p1}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "vss"

    .line 32
    .line 33
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "VmRSS"

    .line 38
    .line 39
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    sget-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 48
    .line 49
    sget-object v1, Lcom/transsion/baselib/report/e;->d:Lkotlin/text/Regex;

    .line 50
    .line 51
    invoke-direct {v0, v1, p1}, Lcom/transsion/baselib/report/e;->k(Lkotlin/text/Regex;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-direct {v0, p1}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "rss"

    .line 60
    .line 61
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method private static final o(Llb/b;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "line"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "VmSize"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/baselib/report/e;->c:Lkotlin/text/Regex;

    .line 20
    .line 21
    invoke-direct {v0, v1, p1}, Lcom/transsion/baselib/report/e;->k(Lkotlin/text/Regex;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-direct {v0, p1}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "vss"

    .line 30
    .line 31
    invoke-virtual {p0, v0, p1}, Llb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "VmRSS"

    .line 36
    .line 37
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 44
    .line 45
    sget-object v1, Lcom/transsion/baselib/report/e;->d:Lkotlin/text/Regex;

    .line 46
    .line 47
    invoke-direct {v0, v1, p1}, Lcom/transsion/baselib/report/e;->k(Lkotlin/text/Regex;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-direct {v0, p1}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "rss"

    .line 56
    .line 57
    invoke-virtual {p0, v0, p1}, Llb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method


# virtual methods
.method public final g()Lqx/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/e;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final l(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    .line 7
    .line 8
    invoke-static {v0}, Llb/a;->a(Lcom/google/firebase/c;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, p3}, Lcom/transsion/baselib/report/e;->h(Landroid/content/Context;)Landroid/os/Debug$MemoryInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    if-eqz p3, :cond_5

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-direct {v1, v2, v3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "max_heap"

    .line 35
    .line 36
    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    if-eqz p2, :cond_1

    .line 40
    .line 41
    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-direct {v1, v2, v3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "total_heap"

    .line 56
    .line 57
    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    if-eqz p2, :cond_2

    .line 61
    .line 62
    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 63
    .line 64
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    invoke-direct {v1, v2, v3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "free_heap"

    .line 77
    .line 78
    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    if-eqz p2, :cond_3

    .line 82
    .line 83
    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 84
    .line 85
    iget v2, p3, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 86
    .line 87
    invoke-direct {v1, v2}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "native_pss"

    .line 92
    .line 93
    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    if-eqz p2, :cond_4

    .line 97
    .line 98
    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 99
    .line 100
    iget p3, p3, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 101
    .line 102
    invoke-direct {v1, p3}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    const-string v1, "other_pss"

    .line 107
    .line 108
    invoke-virtual {p2, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    sget-object v2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 112
    .line 113
    new-instance v3, Ljava/io/File;

    .line 114
    .line 115
    const-string p3, "/proc/self/status"

    .line 116
    .line 117
    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v5, Lcom/transsion/baselib/report/c;

    .line 121
    .line 122
    invoke-direct {v5, p2}, Lcom/transsion/baselib/report/c;-><init>(Landroid/os/Bundle;)V

    .line 123
    .line 124
    .line 125
    const/4 v6, 0x1

    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v4, 0x0

    .line 128
    invoke-static/range {v2 .. v7}, Lcom/transsion/baselib/report/e;->f(Lcom/transsion/baselib/report/e;Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V
    .locals 9

    .line 1
    const-string v0, "screenName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    .line 7
    .line 8
    invoke-static {v0}, Llb/a;->a(Lcom/google/firebase/c;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Llb/b;

    .line 13
    .line 14
    invoke-direct {v1}, Llb/b;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "screen_name"

    .line 18
    .line 19
    invoke-virtual {v1, v2, p1}, Llb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "screen_class"

    .line 23
    .line 24
    invoke-virtual {v1, v2, p1}, Llb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    const-string v2, "engagement_time_msec"

    .line 34
    .line 35
    invoke-virtual {v1, v2, p1, p2}, Llb/b;->b(Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    sget-object v3, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 39
    .line 40
    invoke-direct {v3, p3}, Lcom/transsion/baselib/report/e;->h(Landroid/content/Context;)Landroid/os/Debug$MemoryInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Ljava/lang/Runtime;->maxMemory()J

    .line 51
    .line 52
    .line 53
    move-result-wide p2

    .line 54
    invoke-direct {v3, p2, p3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-string p3, "max_heap"

    .line 59
    .line 60
    invoke-virtual {v1, p3, p2}, Llb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Ljava/lang/Runtime;->totalMemory()J

    .line 68
    .line 69
    .line 70
    move-result-wide p2

    .line 71
    invoke-direct {v3, p2, p3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const-string p3, "total_heap"

    .line 76
    .line 77
    invoke-virtual {v1, p3, p2}, Llb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    .line 85
    .line 86
    .line 87
    move-result-wide p2

    .line 88
    invoke-direct {v3, p2, p3}, Lcom/transsion/baselib/report/e;->d(J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const-string p3, "free_heap"

    .line 93
    .line 94
    invoke-virtual {v1, p3, p2}, Llb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget p2, p1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 98
    .line 99
    invoke-direct {v3, p2}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const-string p3, "native_pss"

    .line 104
    .line 105
    invoke-virtual {v1, p3, p2}, Llb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget p1, p1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 109
    .line 110
    invoke-direct {v3, p1}, Lcom/transsion/baselib/report/e;->i(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string p2, "other_pss"

    .line 115
    .line 116
    invoke-virtual {v1, p2, p1}, Llb/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Ljava/io/File;

    .line 120
    .line 121
    const-string p1, "/proc/self/status"

    .line 122
    .line 123
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v6, Lcom/transsion/baselib/report/d;

    .line 127
    .line 128
    invoke-direct {v6, v1}, Lcom/transsion/baselib/report/d;-><init>(Llb/b;)V

    .line 129
    .line 130
    .line 131
    const/4 v7, 0x1

    .line 132
    const/4 v8, 0x0

    .line 133
    const/4 v5, 0x0

    .line 134
    invoke-static/range {v3 .. v8}, Lcom/transsion/baselib/report/e;->f(Lcom/transsion/baselib/report/e;Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_0
    invoke-virtual {v1}, Llb/b;->a()Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string p2, "screen_view"

    .line 142
    .line 143
    invoke-virtual {v0, p2, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final p(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getInstance(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    .line 18
    .line 19
    invoke-static {v0}, Lpb/i;->a(Lcom/google/firebase/c;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baselib/report/e;->g()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, ""

    .line 26
    .line 27
    const-string v4, "firebase_id"

    .line 28
    .line 29
    invoke-virtual {v2, v4, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    sget-object v0, Ltg/b;->a:Ltg/b;

    .line 53
    .line 54
    invoke-virtual {v0}, Ltg/b;->h()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v0, v2

    .line 60
    :goto_1
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, v4, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    .line 67
    move-object v2, v0

    .line 68
    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "getInstance(...)"

    .line 77
    .line 78
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    .line 85
    .line 86
    invoke-static {v0}, Lpb/i;->a(Lcom/google/firebase/c;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setUserId(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void
.end method
