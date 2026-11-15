.class Lcom/mbridge/msdk/reward/adapter/c$b;
.super Lcom/mbridge/msdk/reward/request/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/c;->b(Ljava/lang/String;ZLcom/mbridge/msdk/foundation/same/report/metrics/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

.field final synthetic f:Lcom/mbridge/msdk/reward/adapter/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/c;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->e:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/request/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/mbridge/msdk/reward/adapter/c;->b(Lcom/mbridge/msdk/reward/adapter/c;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)Lcom/mbridge/msdk/reward/adapter/d;

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getRequestId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v0, Lcom/mbridge/msdk/reward/adapter/c;->G:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :catch_0
    move-exception p1

    .line 24
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-lez p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 103
    .line 104
    iput-boolean v0, p1, Lcom/mbridge/msdk/reward/adapter/c;->O:Z

    .line 105
    .line 106
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 107
    .line 108
    iput-boolean v0, p1, Lcom/mbridge/msdk/reward/adapter/c;->P:Z

    .line 109
    .line 110
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c;->o:Ljava/lang/Object;

    .line 113
    .line 114
    monitor-enter p1

    .line 115
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 116
    .line 117
    iget-boolean v1, v1, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    .line 118
    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 122
    .line 123
    iput-boolean v0, v1, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 130
    .line 131
    iput-boolean v0, p1, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    .line 132
    .line 133
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 134
    .line 135
    iput-boolean v0, p1, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    .line 136
    .line 137
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 138
    .line 139
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->e:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 140
    .line 141
    const-string v1, "exception after load success"

    .line 142
    .line 143
    invoke-static {p1, v1, v0}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 147
    .line 148
    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->f(Lcom/mbridge/msdk/reward/adapter/c;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_1
    return-void

    .line 152
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    throw v0
.end method

.method public b(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;J)J

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 85
    .line 86
    iput-boolean v1, v0, Lcom/mbridge/msdk/reward/adapter/c;->O:Z

    .line 87
    .line 88
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 89
    .line 90
    iput-boolean v1, v0, Lcom/mbridge/msdk/reward/adapter/c;->P:Z

    .line 91
    .line 92
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/mbridge/msdk/reward/adapter/c;->o:Ljava/lang/Object;

    .line 95
    .line 96
    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 98
    .line 99
    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    .line 100
    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 104
    .line 105
    iput-boolean v1, v2, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 112
    .line 113
    invoke-static {v0, p3, p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Lcom/mbridge/msdk/foundation/same/report/metrics/c;I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 117
    .line 118
    iput-boolean v1, v0, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    .line 119
    .line 120
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 121
    .line 122
    iput-boolean v1, v0, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    .line 123
    .line 124
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->h(Lcom/mbridge/msdk/reward/adapter/c;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_4

    .line 131
    .line 132
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 133
    .line 134
    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    .line 138
    .line 139
    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->f(Lcom/mbridge/msdk/reward/adapter/c;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    throw p1
.end method
