.class public final Lai/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lai/b;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/b;->a:Lai/b;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lai/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
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
.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "map"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lai/a;->a:Lai/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lai/a;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 20
    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x0

    .line 23
    const-string v2, "Report_ad"

    .line 24
    .line 25
    const-string v3, "AdReportManager --> onReport() --> \u4e1a\u52a1\u7ebf\u5173\u95ed\u57cb\u70b9\u4e0a\u62a5\uff0c\u4e0d\u4e0a\u62a5"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v1 .. v7}, Lxh/a;->e(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/ad/scene/b;->h()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    const/4 v7, 0x0

    .line 45
    const-string v2, "Report_ad"

    .line 46
    .line 47
    const-string v3, "AdReportManager --> onReport() --> \u5e7f\u544a\u6570\u636e\u4e0a\u62a5\u94fe\u8def\u5df2\u5173\u95ed\uff0c\u4e0d\u4e0a\u62a5"

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-static/range {v1 .. v7}, Lxh/a;->e(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    sget-object v0, Lai/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v2, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/transsion/ad/MBAd;->b()Lcom/transsion/ad/MBAd$a;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const/4 v3, 0x0

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/transsion/ad/MBAd$a;->k()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move v2, v3

    .line 82
    :goto_0
    const-string v4, "mb_ad"

    .line 83
    .line 84
    const/16 v5, 0x197d

    .line 85
    .line 86
    invoke-static {v1, v4, v5, v2, v3}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    .line 92
    .line 93
    sget-object v2, Lxh/a;->a:Lxh/a;

    .line 94
    .line 95
    const/4 v6, 0x6

    .line 96
    const/4 v7, 0x0

    .line 97
    const-string v3, "AdReportManager --> onReport() --> \u5e7f\u544a\u57cb\u70b9Athena\u521d\u59cb\u5316\u5b8c\u6210"

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-static/range {v2 .. v7}, Lxh/a;->c(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    const-string v0, "ad_vn"

    .line 105
    .line 106
    const-string v1, "4.0.3"

    .line 107
    .line 108
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string v0, "biz_pkg"

    .line 112
    .line 113
    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "biz_vc"

    .line 129
    .line 130
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const-string v0, "biz_vn"

    .line 134
    .line 135
    invoke-static {}, Lcom/blankj/utilcode/util/c;->h()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    sget-object v2, Lqi/h;->a:Lqi/h;

    .line 143
    .line 144
    if-nez p3, :cond_4

    .line 145
    .line 146
    const-string p3, ""

    .line 147
    .line 148
    :cond_4
    move-object v5, p3

    .line 149
    sget-object p3, Lcom/transsion/ad/strategy/AppManager;->a:Lcom/transsion/ad/strategy/AppManager;

    .line 150
    .line 151
    invoke-virtual {p3}, Lcom/transsion/ad/strategy/AppManager;->a()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    const/16 v6, 0x197d

    .line 156
    .line 157
    move-object v3, p1

    .line 158
    move-object v4, p2

    .line 159
    invoke-virtual/range {v2 .. v7}, Lqi/h;->t(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method
