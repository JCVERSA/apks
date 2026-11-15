.class public final Lcom/transsion/ad/strategy/u;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/strategy/u;

.field private static b:Z

.field private static c:J

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/strategy/u;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/strategy/u;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/strategy/u;->a:Lcom/transsion/ad/strategy/u;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/transsion/ad/strategy/u;->b:Z

    .line 10
    .line 11
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
.method public final a()I
    .locals 3

    .line 1
    sget-boolean v0, Lcom/transsion/ad/strategy/u;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/transsion/ad/strategy/e;->a:Lcom/transsion/ad/strategy/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "newUserAdShieldHour"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput v0, Lcom/transsion/ad/strategy/u;->d:I

    .line 19
    .line 20
    :cond_0
    sget v0, Lcom/transsion/ad/strategy/u;->d:I

    .line 21
    .line 22
    return v0
.end method

.method public final b()J
    .locals 4

    .line 1
    sget-boolean v0, Lcom/transsion/ad/strategy/u;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/transsion/ad/strategy/e;->a:Lcom/transsion/ad/strategy/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "userCreateTime"

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lcom/transsion/ad/strategy/u;->c:J

    .line 20
    .line 21
    :cond_0
    sget-wide v0, Lcom/transsion/ad/strategy/u;->c:J

    .line 22
    .line 23
    return-wide v0
.end method

.method public final c()Z
    .locals 8

    .line 1
    sget-boolean v0, Lcom/transsion/ad/strategy/u;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/transsion/ad/strategy/e;->a:Lcom/transsion/ad/strategy/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "userCreateTime"

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    sput-wide v2, Lcom/transsion/ad/strategy/u;->c:J

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "newUserAdShieldHour"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput v0, Lcom/transsion/ad/strategy/u;->d:I

    .line 33
    .line 34
    :cond_0
    sput-boolean v1, Lcom/transsion/ad/strategy/u;->b:Z

    .line 35
    .line 36
    sget v0, Lcom/transsion/ad/strategy/u;->d:I

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    sget-wide v4, Lcom/transsion/ad/strategy/u;->c:J

    .line 46
    .line 47
    sub-long/2addr v2, v4

    .line 48
    sget v0, Lcom/transsion/ad/strategy/u;->d:I

    .line 49
    .line 50
    int-to-long v4, v0

    .line 51
    const/16 v0, 0xe10

    .line 52
    .line 53
    int-to-long v6, v0

    .line 54
    mul-long/2addr v4, v6

    .line 55
    const/16 v0, 0x3e8

    .line 56
    .line 57
    int-to-long v6, v0

    .line 58
    mul-long/2addr v4, v6

    .line 59
    cmp-long v0, v2, v4

    .line 60
    .line 61
    if-gez v0, :cond_2

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    :cond_2
    return v1
.end method

.method public final d(Lcom/transsion/ad/monopoly/model/MbAdPlansBean;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/e;->a:Lcom/transsion/ad/strategy/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getUserCreateTime()Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    :goto_0
    const-string v4, "userCreateTime"

    .line 23
    .line 24
    invoke-virtual {v1, v4, v2, v3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getNewUserAdShieldHour()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_1
    const-string v2, "newUserAdShieldHour"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    sput-boolean v0, Lcom/transsion/ad/strategy/u;->b:Z

    .line 52
    .line 53
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getUserCreateTime()Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move-object v2, v0

    .line 64
    :goto_2
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getNewUserAdShieldHour()Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v3, "NewUserShieldStrategy --> saveNewUserShieldData() --> \u4fdd\u5b58\u65b0\u7528\u6237\u5c4f\u853d\u6570\u636e --> userCreateTime = "

    .line 76
    .line 77
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, ", newUserAdShieldHour = "

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const/4 v5, 0x2

    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x0

    .line 99
    invoke-static/range {v1 .. v6}, Lxh/a;->c(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
