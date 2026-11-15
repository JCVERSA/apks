.class public final Lqu/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/gslb/GslbSdk$GslbInitListener;


# instance fields
.field public final synthetic a:Lqu/c;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lqu/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqu/b;->a:Lqu/c;

    .line 2
    .line 3
    iput-object p2, p0, Lqu/b;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onInitFail(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GSLB init fail: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "tag"

    .line 16
    .line 17
    const-string v1, "UpgradeSdkManager"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "msg"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    sget-boolean p1, Ltu/g;->a:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-wide v2, Ltu/g;->b:J

    .line 37
    .line 38
    sub-long v2, v0, v2

    .line 39
    .line 40
    const-wide/16 v4, 0x1388

    .line 41
    .line 42
    cmp-long p1, v2, v4

    .line 43
    .line 44
    if-gez p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sput-wide v0, Ltu/g;->b:J

    .line 48
    .line 49
    const-string p1, "upgradeSdkLog"

    .line 50
    .line 51
    const/4 v0, 0x3

    .line 52
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    sput-boolean p1, Ltu/g;->a:Z

    .line 60
    .line 61
    :cond_2
    :goto_0
    sget-object p1, Lqu/f;->o:Lqu/d;

    .line 62
    .line 63
    invoke-virtual {p1}, Lqu/d;->a()Lqu/f;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-boolean p1, p1, Lqu/f;->d:Z

    .line 68
    .line 69
    return-void
.end method

.method public final onInitSuccess(Ljava/util/Map;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GSLB init success: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Ltu/g;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/transsion/gslb/GslbSdk;->getCountry()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lqu/b;->a:Lqu/c;

    .line 29
    .line 30
    iput-object p1, v0, Lqu/c;->b:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v0, Ltu/i;->b:Ltu/h;

    .line 33
    .line 34
    iget-object v1, p0, Lqu/b;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string v2, "KV_UPGRADE_GSLB_COUNTRY"

    .line 44
    .line 45
    invoke-virtual {v1, v2, p1}, Ltu/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "IN"

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const-string v3, ""

    .line 56
    .line 57
    const-string v4, "KV_UPGRADE_LOCAL_CDN_DATA"

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    const-string v6, "application"

    .line 61
    .line 62
    const-string v7, " request: "

    .line 63
    .line 64
    const-string v8, "GSLB init current: "

    .line 65
    .line 66
    if-ne v1, v2, :cond_1

    .line 67
    .line 68
    iget-object v1, p0, Lqu/b;->a:Lqu/c;

    .line 69
    .line 70
    iget-object v9, v1, Lqu/c;->b:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v1, v1, Lqu/c;->c:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lqu/b;->a:Lqu/c;

    .line 92
    .line 93
    iget-object p1, p1, Lqu/c;->c:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Ltu/g;->a(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object p1, Lpu/a;->a:Landroid/app/Application;

    .line 106
    .line 107
    if-eqz p1, :cond_0

    .line 108
    .line 109
    move-object v5, p1

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-virtual {v0, v5}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1, v4, v3}, Ltu/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_1
    const-string v1, "RU"

    .line 123
    .line 124
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-ne v1, v2, :cond_3

    .line 129
    .line 130
    iget-object v1, p0, Lqu/b;->a:Lqu/c;

    .line 131
    .line 132
    iget-object v2, v1, Lqu/c;->b:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v1, v1, Lqu/c;->c:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_3

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lqu/b;->a:Lqu/c;

    .line 154
    .line 155
    iget-object p1, p1, Lqu/c;->c:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p1}, Ltu/g;->a(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sget-object p1, Lpu/a;->a:Landroid/app/Application;

    .line 168
    .line 169
    if-eqz p1, :cond_2

    .line 170
    .line 171
    move-object v5, p1

    .line 172
    goto :goto_1

    .line 173
    :cond_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_1
    invoke-virtual {v0, v5}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1, v4, v3}, Ltu/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_3
    :goto_2
    return-void
.end method
