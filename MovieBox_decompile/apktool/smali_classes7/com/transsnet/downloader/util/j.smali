.class public final Lcom/transsnet/downloader/util/j;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsnet/downloader/util/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/util/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/util/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsnet/downloader/util/j;->a:Lcom/transsnet/downloader/util/j;

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
    .locals 13

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
    const-string v2, "key_download_st_show_last_time"

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v5, "key_download_st_showed_times"

    .line 20
    .line 21
    invoke-virtual {v0, v5, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v7, 0x2

    .line 32
    const/4 v8, 0x0

    .line 33
    const-string v9, "key_storage_per_total_show_times"

    .line 34
    .line 35
    const/4 v10, 0x0

    .line 36
    invoke-static {v0, v9, v10, v7, v8}, Lcm/f;->d(Lcm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-wide/16 v7, 0x3

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v11

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-wide v11, v7

    .line 62
    :goto_0
    cmp-long v0, v11, v3

    .line 63
    .line 64
    if-gtz v0, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move-wide v7, v11

    .line 68
    :goto_1
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/c0;->f(J)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    cmp-long v0, v7, v5

    .line 75
    .line 76
    if-lez v0, :cond_2

    .line 77
    .line 78
    const/4 v10, 0x1

    .line 79
    :cond_2
    return v10
.end method
