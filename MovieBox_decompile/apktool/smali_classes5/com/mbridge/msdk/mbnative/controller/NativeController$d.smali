.class Lcom/mbridge/msdk/mbnative/controller/NativeController$d;
.super Ljava/util/TimerTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;Lcom/mbridge/msdk/mbnative/controller/NativeController$o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/mbridge/msdk/mbnative/controller/NativeController;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;JLcom/mbridge/msdk/mbnative/controller/NativeController$o;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->a:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->c:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->a:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/32 v2, 0xea60

    .line 9
    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/setting/l;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->q()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/16 v2, 0x9

    .line 48
    .line 49
    if-eq v0, v2, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    if-ne v1, v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    .line 55
    .line 56
    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_1
    const/4 v0, 0x3

    .line 67
    if-ne v1, v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    .line 70
    .line 71
    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->c:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v1, 0x0

    .line 87
    :cond_3
    move v2, v1

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lcom/mbridge/msdk/out/Campaign;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    instance-of v4, v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 105
    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    :cond_4
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 141
    .line 142
    invoke-static {v4}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v2, v4, v3}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-eqz v2, :cond_3

    .line 151
    .line 152
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 153
    .line 154
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/setting/l;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v3}, Lcom/mbridge/msdk/setting/c;->C()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-static {v2, v3}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_3

    .line 167
    .line 168
    const/4 v2, 0x1

    .line 169
    goto :goto_0

    .line 170
    :cond_5
    if-eqz v2, :cond_6

    .line 171
    .line 172
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    .line 173
    .line 174
    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    .line 178
    .line 179
    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    :goto_1
    return-void
.end method
