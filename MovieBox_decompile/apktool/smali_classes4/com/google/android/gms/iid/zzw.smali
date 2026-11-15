.class final synthetic Lcom/google/android/gms/iid/zzw;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcm:Lcom/google/android/gms/iid/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/zzt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/iid/zzw;->zzcm:Lcom/google/android/gms/iid/zzt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/iid/zzw;->zzcm:Lcom/google/android/gms/iid/zzt;

    .line 2
    .line 3
    :goto_0
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, v0, Lcom/google/android/gms/iid/zzt;->state:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/iid/zzt;->zzcj:Ljava/util/Queue;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/iid/zzt;->zzu()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/iid/zzt;->zzcj:Ljava/util/Queue;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/google/android/gms/iid/zzz;

    .line 34
    .line 35
    iget-object v3, v0, Lcom/google/android/gms/iid/zzt;->zzck:Landroid/util/SparseArray;

    .line 36
    .line 37
    iget v4, v1, Lcom/google/android/gms/iid/zzz;->zzcp:I

    .line 38
    .line 39
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v0, Lcom/google/android/gms/iid/zzt;->zzcl:Lcom/google/android/gms/iid/zzr;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/google/android/gms/iid/zzr;->zze(Lcom/google/android/gms/iid/zzr;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v4, Lcom/google/android/gms/iid/zzx;

    .line 49
    .line 50
    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/iid/zzx;-><init>(Lcom/google/android/gms/iid/zzt;Lcom/google/android/gms/iid/zzz;)V

    .line 51
    .line 52
    .line 53
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    const-wide/16 v6, 0x1e

    .line 56
    .line 57
    invoke-interface {v3, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 58
    .line 59
    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const-string v3, "MessengerIpcClient"

    .line 62
    .line 63
    const/4 v4, 0x3

    .line 64
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    add-int/lit8 v4, v4, 0x8

    .line 79
    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 83
    .line 84
    .line 85
    const-string v4, "Sending "

    .line 86
    .line 87
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object v3, v0, Lcom/google/android/gms/iid/zzt;->zzcl:Lcom/google/android/gms/iid/zzr;

    .line 94
    .line 95
    invoke-static {v3}, Lcom/google/android/gms/iid/zzr;->zzd(Lcom/google/android/gms/iid/zzr;)Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-object v4, v0, Lcom/google/android/gms/iid/zzt;->zzch:Landroid/os/Messenger;

    .line 100
    .line 101
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    iget v6, v1, Lcom/google/android/gms/iid/zzz;->what:I

    .line 106
    .line 107
    iput v6, v5, Landroid/os/Message;->what:I

    .line 108
    .line 109
    iget v6, v1, Lcom/google/android/gms/iid/zzz;->zzcp:I

    .line 110
    .line 111
    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 112
    .line 113
    iput-object v4, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 114
    .line 115
    new-instance v4, Landroid/os/Bundle;

    .line 116
    .line 117
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v6, "oneWay"

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/iid/zzz;->zzw()Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    .line 128
    .line 129
    const-string v6, "pkg"

    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v4, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v3, "data"

    .line 139
    .line 140
    iget-object v1, v1, Lcom/google/android/gms/iid/zzz;->zzcr:Landroid/os/Bundle;

    .line 141
    .line 142
    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 146
    .line 147
    .line 148
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/iid/zzt;->zzci:Lcom/google/android/gms/iid/zzy;

    .line 149
    .line 150
    iget-object v3, v1, Lcom/google/android/gms/iid/zzy;->zzad:Landroid/os/Messenger;

    .line 151
    .line 152
    if-eqz v3, :cond_3

    .line 153
    .line 154
    invoke-virtual {v3, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :catch_0
    move-exception v1

    .line 160
    goto :goto_1

    .line 161
    :cond_3
    iget-object v1, v1, Lcom/google/android/gms/iid/zzy;->zzco:Lcom/google/android/gms/iid/MessengerCompat;

    .line 162
    .line 163
    if-eqz v1, :cond_4

    .line 164
    .line 165
    invoke-virtual {v1, v5}, Lcom/google/android/gms/iid/MessengerCompat;->send(Landroid/os/Message;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    const-string v3, "Both messengers are null"

    .line 173
    .line 174
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/iid/zzt;->zzd(ILjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    throw v1
.end method
