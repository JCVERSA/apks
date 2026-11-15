.class public Lcom/mbridge/msdk/reward/adapter/c$i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

.field final synthetic c:Lcom/mbridge/msdk/reward/adapter/c;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->b:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "RewardMVVideoAdapter"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->c(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v2, v3}, Lcom/mbridge/msdk/b;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->c(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 39
    .line 40
    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v1, v2}, Lcom/mbridge/msdk/reward/adapter/c;->b(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->p(Lcom/mbridge/msdk/reward/adapter/c;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->q(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/c$h;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->q(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/c$h;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    invoke-static {v1, v2}, Lcom/mbridge/msdk/reward/adapter/c;->b(Lcom/mbridge/msdk/reward/adapter/c;Z)Z

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 98
    .line 99
    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->a:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    .line 119
    iput v2, v1, Landroid/os/Message;->what:I

    .line 120
    .line 121
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->b:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 122
    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    new-instance v2, Landroid/os/Bundle;

    .line 126
    .line 127
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v3, "metrics_data_lrid"

    .line 131
    .line 132
    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->b:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 145
    .line 146
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    .line 152
    .line 153
    :cond_4
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 154
    .line 155
    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->n(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_5

    .line 164
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v2, "excludeId : "

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$i;->c:Lcom/mbridge/msdk/reward/adapter/c;

    .line 176
    .line 177
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->n(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_5
    :goto_2
    return-void
.end method
