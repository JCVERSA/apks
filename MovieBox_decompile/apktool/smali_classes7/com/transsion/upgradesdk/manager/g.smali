.class public final Lcom/transsion/upgradesdk/manager/g;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lqu/f;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lqu/f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/upgradesdk/manager/g;->a:Lqu/f;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/upgradesdk/manager/g;->b:I

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "requestCdnConfig \u8bf7\u6c42CDN\u914d\u7f6e\u5b8c\u6210:  "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "UpgradeSdkManager"

    .line 18
    .line 19
    invoke-static {v1, v0}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/g;->a:Lqu/f;

    .line 25
    .line 26
    iget-object v0, p1, Lqu/f;->m:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string p1, "requestCdnConfig \u52a0\u8f7d\u8fc7\u671f\u7f13\u5b58"

    .line 31
    .line 32
    invoke-static {v1, p1}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/g;->a:Lqu/f;

    .line 36
    .line 37
    iget-object v0, p1, Lqu/f;->m:Ljava/util/List;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lqu/f;->c(Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_0
    iget-object p1, p1, Lqu/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    .line 45
    .line 46
    if-eqz p1, :cond_6

    .line 47
    .line 48
    const-string v0, "CDN_ERROR"

    .line 49
    .line 50
    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    const/4 v7, 0x0

    .line 55
    const/16 v8, 0x74

    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    const/4 v2, 0x2

    .line 59
    const/4 v3, 0x0

    .line 60
    const-string v4, "1"

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-static/range {v1 .. v8}, Ltu/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Ltu/i;->b:Ltu/h;

    .line 68
    .line 69
    sget-object v1, Lpu/a;->a:Landroid/app/Application;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    const-string v3, "application"

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    move-object v1, v2

    .line 81
    :goto_0
    invoke-virtual {v0, v1}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    const-string v6, "key"

    .line 90
    .line 91
    const-string v7, "KV_UPGRADE_CDN_DATA_LAST_REQUEST_TIME"

    .line 92
    .line 93
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v1, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    invoke-virtual {v1, v7, v4, v5}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;J)Z

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object v1, p0, Lcom/transsion/upgradesdk/manager/g;->a:Lqu/f;

    .line 104
    .line 105
    const/4 v4, 0x1

    .line 106
    iput-boolean v4, v1, Lqu/f;->l:Z

    .line 107
    .line 108
    iget v5, p0, Lcom/transsion/upgradesdk/manager/g;->b:I

    .line 109
    .line 110
    if-ne v5, v4, :cond_4

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Lqu/f;->c(Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    sget-object v1, Lpu/a;->a:Landroid/app/Application;

    .line 117
    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    move-object v2, v1

    .line 121
    goto :goto_1

    .line 122
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_1
    invoke-virtual {v0, v2}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sget-object v1, Ltu/f;->a:Lcom/google/gson/Gson;

    .line 130
    .line 131
    const-string v1, "obj"

    .line 132
    .line 133
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget-object v1, Ltu/f;->a:Lcom/google/gson/Gson;

    .line 137
    .line 138
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v1, "toJson(...)"

    .line 143
    .line 144
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v1, "KV_UPGRADE_LOCAL_CDN_DATA"

    .line 148
    .line 149
    invoke-virtual {v0, v1, p1}, Ltu/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    return-object p1
.end method
