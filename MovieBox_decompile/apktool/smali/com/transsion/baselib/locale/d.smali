.class public final Lcom/transsion/baselib/locale/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/locale/d$b;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/baselib/locale/d$b;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:Lkotlin/Lazy;


# instance fields
.field private a:Ljava/util/Locale;

.field private b:Ljava/util/Locale;

.field private c:Ljava/lang/String;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/transsion/baselib/locale/f;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/transsion/baselib/locale/d$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/baselib/locale/d$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/baselib/locale/d;->f:Lcom/transsion/baselib/locale/d$b;

    .line 8
    .line 9
    const-string v13, "Bahasa Melayu"

    .line 10
    .line 11
    const-string v14, "Espa\u00f1ol"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "English"

    .line 15
    .line 16
    const-string v4, "Bahasa Indonesia"

    .line 17
    .line 18
    const-string v5, "Fran\u00e7ais"

    .line 19
    .line 20
    const-string v6, "Portugu\u00eas"

    .line 21
    .line 22
    const-string v7, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    .line 23
    .line 24
    const-string v8, "\u09ac\u09be\u0982\u09b2\u09be"

    .line 25
    .line 26
    const-string v9, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    .line 27
    .line 28
    const-string v10, "\u0a2a\u0a70\u0a1c\u0a3e\u0a2c\u0a40"

    .line 29
    .line 30
    const-string v11, "\u0627\u0631\u062f\u0648"

    .line 31
    .line 32
    const-string v12, "Filipino"

    .line 33
    .line 34
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/transsion/baselib/locale/d;->g:[Ljava/lang/String;

    .line 39
    .line 40
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v12, "ms"

    .line 47
    .line 48
    const-string v13, "es"

    .line 49
    .line 50
    const-string v3, "in"

    .line 51
    .line 52
    const-string v4, "fr"

    .line 53
    .line 54
    const-string v5, "pt"

    .line 55
    .line 56
    const-string v6, "ar"

    .line 57
    .line 58
    const-string v7, "bn"

    .line 59
    .line 60
    const-string v8, "ru"

    .line 61
    .line 62
    const-string v9, "pa"

    .line 63
    .line 64
    const-string v10, "ur"

    .line 65
    .line 66
    const-string v11, "fil"

    .line 67
    .line 68
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/transsion/baselib/locale/d;->h:[Ljava/lang/String;

    .line 73
    .line 74
    new-instance v0, Lcom/transsion/baselib/locale/a;

    .line 75
    .line 76
    invoke-direct {v0}, Lcom/transsion/baselib/locale/a;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/transsion/baselib/locale/d;->i:Lkotlin/Lazy;

    .line 84
    .line 85
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/baselib/locale/f;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/baselib/locale/f;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/baselib/locale/d;->e:Lcom/transsion/baselib/locale/f;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "null cannot be cast to non-null type android.app.Application"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Landroid/app/Application;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/transsion/baselib/locale/d;->d:Landroid/content/Context;

    .line 30
    .line 31
    sget-object v2, Lcom/transsion/baselib/locale/d;->f:Lcom/transsion/baselib/locale/d$b;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/locale/d$b;->d(Landroid/content/Context;)Ljava/util/Locale;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iput-object v3, p0, Lcom/transsion/baselib/locale/d;->b:Ljava/util/Locale;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 44
    .line 45
    iget-object v5, p0, Lcom/transsion/baselib/locale/d;->b:Ljava/util/Locale;

    .line 46
    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v7, "LocaleManager()->  system locale ="

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v5, ", countryCode = "

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    const/4 v8, 0x4

    .line 73
    const/4 v9, 0x0

    .line 74
    const-string v5, "LocaleManager"

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/transsion/baselib/locale/d$a;

    .line 84
    .line 85
    invoke-direct {v0, p0, v1}, Lcom/transsion/baselib/locale/d$a;-><init>(Lcom/transsion/baselib/locale/d;Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Lcom/transsion/baselib/locale/d$b;->b(Lcom/transsion/baselib/locale/d$b;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, p1, v3, v0}, Lcom/transsion/baselib/locale/d;->o(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public static synthetic a()Lcom/transsion/baselib/locale/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/baselib/locale/d;->m()Lcom/transsion/baselib/locale/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lcom/transsion/baselib/locale/d;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/baselib/locale/d;->p(Lcom/transsion/baselib/locale/d;Ljava/util/Locale;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/locale/d;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/locale/d;->h:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/locale/d;->g:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/baselib/locale/d;)Ljava/util/Locale;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/baselib/locale/d;->b:Ljava/util/Locale;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/baselib/locale/d;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/baselib/locale/d;->o(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lcom/transsion/baselib/locale/d;Ljava/util/Locale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/locale/d;->b:Ljava/util/Locale;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/baselib/locale/d;Landroid/content/Context;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/locale/d;->r(Landroid/content/Context;Ljava/util/Locale;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final m()Lcom/transsion/baselib/locale/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/baselib/locale/d;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/transsion/baselib/locale/d;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private final o(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Ljg/b;->a:Ljg/b$a;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljg/b$a;->l(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/transsion/baselib/locale/d;->d:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz p1, :cond_6

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sub-int/2addr v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    move v5, v4

    .line 19
    :goto_0
    if-gt v4, v2, :cond_5

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    move v6, v4

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move v6, v2

    .line 26
    :goto_1
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/16 v7, 0x20

    .line 31
    .line 32
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-gtz v6, :cond_1

    .line 37
    .line 38
    move v6, v0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    move v6, v3

    .line 41
    :goto_2
    if-nez v5, :cond_3

    .line 42
    .line 43
    if-nez v6, :cond_2

    .line 44
    .line 45
    move v5, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    add-int/2addr v4, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    if-nez v6, :cond_4

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    :goto_3
    add-int/2addr v2, v0

    .line 56
    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_6

    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    :cond_6
    if-nez p3, :cond_7

    .line 72
    .line 73
    iget-object p3, p0, Lcom/transsion/baselib/locale/d;->c:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    if-eqz p3, :cond_7

    .line 80
    .line 81
    return-void

    .line 82
    :cond_7
    sget-object p3, Lcom/transsion/baselib/locale/d;->f:Lcom/transsion/baselib/locale/d$b;

    .line 83
    .line 84
    invoke-static {p3, p1, p2}, Lcom/transsion/baselib/locale/d$b;->a(Lcom/transsion/baselib/locale/d$b;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-nez p2, :cond_8

    .line 89
    .line 90
    iget-object p2, p0, Lcom/transsion/baselib/locale/d;->b:Ljava/util/Locale;

    .line 91
    .line 92
    :cond_8
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 93
    .line 94
    const-string v3, "LocaleManager"

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v4, "setLocale()-> locale = "

    .line 102
    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v4, " , language = "

    .line 110
    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    const/4 v6, 0x4

    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v5, 0x0

    .line 124
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iput-object p1, p0, Lcom/transsion/baselib/locale/d;->c:Ljava/lang/String;

    .line 129
    .line 130
    iput-object p2, p0, Lcom/transsion/baselib/locale/d;->a:Ljava/util/Locale;

    .line 131
    .line 132
    invoke-static {p2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 133
    .line 134
    .line 135
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    monitor-exit p0

    .line 138
    invoke-direct {p0, v1, p2}, Lcom/transsion/baselib/locale/d;->r(Landroid/content/Context;Ljava/util/Locale;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p3, p1}, Lcom/transsion/baselib/locale/d$b;->c(Lcom/transsion/baselib/locale/d$b;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance p1, Lcom/transsion/baselib/locale/b;

    .line 145
    .line 146
    invoke-direct {p1, p0, p2}, Lcom/transsion/baselib/locale/b;-><init>(Lcom/transsion/baselib/locale/d;Ljava/util/Locale;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :catchall_0
    move-exception p1

    .line 154
    monitor-exit p0

    .line 155
    throw p1
.end method

.method private static final p(Lcom/transsion/baselib/locale/d;Ljava/util/Locale;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "LocaleManager"

    .line 6
    .line 7
    const-string v2, "notify changed()-> "

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/transsion/baselib/locale/d;->e:Lcom/transsion/baselib/locale/f;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/baselib/locale/f;->e(Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final r(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x18

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/appcompat/app/h;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v1, v2}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "updateConfig()-> old app locale = "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " , new app locale = "

    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/4 v6, 0x4

    .line 61
    const/4 v7, 0x0

    .line 62
    const-string v3, "LocaleManager"

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Landroid/content/res/Configuration;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1, v1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final declared-synchronized j()Ljava/util/Locale;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/locale/d;->a:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final k()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/locale/d;->a:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/locale/d;->b:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-string v0, "ur"

    .line 9
    .line 10
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "PK"

    .line 17
    .line 18
    invoke-direct {p0, p1, v0, v2}, Lcom/transsion/baselib/locale/d;->o(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/baselib/locale/d;->b:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "getCountry(...)"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1, v0, v2}, Lcom/transsion/baselib/locale/d;->o(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final q(Ljava/util/Locale;)Z
    .locals 1

    .line 1
    const-string v0, "locale"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/baselib/locale/d;->b:Ljava/util/Locale;

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method
