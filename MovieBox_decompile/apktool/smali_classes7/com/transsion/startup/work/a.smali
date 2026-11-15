.class public final Lcom/transsion/startup/work/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/startup/work/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/startup/work/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/startup/work/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/startup/work/a;->a:Lcom/transsion/startup/work/a;

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
.method public final a(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "NetworkDataSourceWorker"

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

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
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    const-string v4, "key_report_request_off"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static {v1, v4, v5, v2, v3}, Lcm/f;->d(Lcm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    :cond_0
    if-eqz v5, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 45
    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v2, 0x18

    .line 49
    .line 50
    if-lt v1, v2, :cond_2

    .line 51
    .line 52
    invoke-static {p1}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    new-instance v1, Landroidx/work/b$a;

    .line 60
    .line 61
    invoke-direct {v1}, Landroidx/work/b$a;-><init>()V

    .line 62
    .line 63
    .line 64
    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroidx/work/b$a;->b(Landroidx/work/NetworkType;)Landroidx/work/b$a;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroidx/work/b$a;->a()Landroidx/work/b;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 75
    .line 76
    new-instance v3, Landroidx/work/m$a;

    .line 77
    .line 78
    const-class v4, Lcom/transsion/startup/work/NetworkDataSourceWorker;

    .line 79
    .line 80
    const-wide/16 v5, 0x1

    .line 81
    .line 82
    invoke-direct {v3, v4, v5, v6, v2}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v1}, Landroidx/work/r$a;->i(Landroidx/work/b;)Landroidx/work/r$a;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroidx/work/m$a;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Landroidx/work/r$a;->a(Ljava/lang/String;)Landroidx/work/r$a;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroidx/work/m$a;

    .line 96
    .line 97
    invoke-virtual {v1, v5, v6, v2}, Landroidx/work/r$a;->k(JLjava/util/concurrent/TimeUnit;)Landroidx/work/r$a;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroidx/work/m$a;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroidx/work/r$a;->b()Landroidx/work/r;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Landroidx/work/m;

    .line 108
    .line 109
    invoke-static {p1}, Landroidx/work/WorkManager;->f(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sget-object v2, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 114
    .line 115
    invoke-virtual {p1, v0, v2, v1}, Landroidx/work/WorkManager;->e(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/m;)Landroidx/work/l;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 124
    .line 125
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :goto_2
    return-void
.end method
