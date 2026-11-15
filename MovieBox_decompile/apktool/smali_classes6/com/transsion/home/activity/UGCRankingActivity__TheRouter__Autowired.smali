.class public Lcom/transsion/home/activity/UGCRankingActivity__TheRouter__Autowired;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static autowiredInject(Ljava/lang/Object;)V
    .locals 14

    .line 1
    const-string v0, "java.lang.String"

    .line 2
    .line 3
    instance-of v1, p0, Lcom/transsion/home/activity/UGCRankingActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    check-cast p0, Lcom/transsion/home/activity/UGCRankingActivity;

    .line 8
    .line 9
    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lmf/a;

    .line 28
    .line 29
    :try_start_0
    new-instance v12, Lcom/therouter/router/b;

    .line 30
    .line 31
    const-string v4, "java.lang.String"

    .line 32
    .line 33
    const-string v5, "category"

    .line 34
    .line 35
    const-string v7, ""

    .line 36
    .line 37
    const-string v8, "com.transsion.home.activity.UGCRankingActivity"

    .line 38
    .line 39
    const-string v9, "requestCategory"

    .line 40
    .line 41
    const-string v11, "No desc."

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    move-object v3, v12

    .line 46
    invoke-direct/range {v3 .. v11}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v0, p0, v12}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    iput-object v3, p0, Lcom/transsion/home/activity/UGCRankingActivity;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception v3

    .line 61
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_1
    :try_start_1
    new-instance v3, Lcom/therouter/router/b;

    .line 71
    .line 72
    const-string v6, "java.lang.String"

    .line 73
    .line 74
    const-string v7, "fromOptId"

    .line 75
    .line 76
    const-string v9, ""

    .line 77
    .line 78
    const-string v10, "com.transsion.home.activity.UGCRankingActivity"

    .line 79
    .line 80
    const-string v11, "fromOptId"

    .line 81
    .line 82
    const-string v13, "No desc."

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v12, 0x0

    .line 86
    move-object v5, v3

    .line 87
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    iput-object v3, p0, Lcom/transsion/home/activity/UGCRankingActivity;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catch_1
    move-exception v3

    .line 102
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_2
    :try_start_2
    new-instance v3, Lcom/therouter/router/b;

    .line 112
    .line 113
    const-string v6, "java.lang.String"

    .line 114
    .line 115
    const-string v7, "tabId"

    .line 116
    .line 117
    const-string v9, ""

    .line 118
    .line 119
    const-string v10, "com.transsion.home.activity.UGCRankingActivity"

    .line 120
    .line 121
    const-string v11, "tabId"

    .line 122
    .line 123
    const-string v13, "No desc."

    .line 124
    .line 125
    const/4 v8, 0x0

    .line 126
    const/4 v12, 0x0

    .line 127
    move-object v5, v3

    .line 128
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v3, :cond_3

    .line 138
    .line 139
    iput-object v3, p0, Lcom/transsion/home/activity/UGCRankingActivity;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :catch_2
    move-exception v3

    .line 143
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_3

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :cond_3
    :goto_3
    :try_start_3
    new-instance v3, Lcom/therouter/router/b;

    .line 153
    .line 154
    const-string v6, "java.lang.String"

    .line 155
    .line 156
    const-string v7, "videoType"

    .line 157
    .line 158
    const-string v9, ""

    .line 159
    .line 160
    const-string v10, "com.transsion.home.activity.UGCRankingActivity"

    .line 161
    .line 162
    const-string v11, "videoType"

    .line 163
    .line 164
    const-string v13, "No desc."

    .line 165
    .line 166
    const/4 v8, 0x0

    .line 167
    const/4 v12, 0x0

    .line 168
    move-object v5, v3

    .line 169
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v2, :cond_0

    .line 179
    .line 180
    iput-object v2, p0, Lcom/transsion/home/activity/UGCRankingActivity;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :catch_3
    move-exception v2

    .line 185
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_0

    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_4
    return-void
.end method
