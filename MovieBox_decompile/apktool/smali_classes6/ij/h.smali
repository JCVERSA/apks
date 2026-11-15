.class public final Lij/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lij/h;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lij/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lij/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lij/h;->a:Lij/h;

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
.method public final a()Z
    .locals 8

    .line 1
    sget-object v0, Lij/h;->b:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :cond_0
    return v1

    .line 13
    :cond_1
    :try_start_0
    sget-object v0, Ltg/b;->a:Ltg/b;

    .line 14
    .line 15
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "getApp(...)"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ltg/b;->k(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 29
    .line 30
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v4, "lowMemoryValue"

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-virtual {v0, v4, v5}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    :cond_2
    const-string v0, "1.0"

    .line 52
    .line 53
    :cond_3
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    long-to-double v2, v2

    .line 58
    const/high16 v0, 0x40000000    # 2.0f

    .line 59
    .line 60
    int-to-double v6, v0

    .line 61
    mul-double/2addr v6, v4

    .line 62
    cmpg-double v0, v2, v6

    .line 63
    .line 64
    if-gtz v0, :cond_4

    .line 65
    .line 66
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    sput-object v0, Lij/h;->b:Ljava/lang/Boolean;

    .line 69
    .line 70
    :cond_4
    sget-object v0, Lij/h;->b:Ljava/lang/Boolean;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    :cond_5
    return v1
.end method
