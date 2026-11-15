.class public abstract Lcom/google/firebase/analytics/connector/internal/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lcom/google/common/collect/ImmutableSet;

.field private static final b:Lcom/google/common/collect/ImmutableList;

.field private static final c:Lcom/google/common/collect/ImmutableList;

.field private static final d:Lcom/google/common/collect/ImmutableList;

.field private static final e:Lcom/google/common/collect/ImmutableList;

.field private static final f:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-string v7, "_exp_timeout"

    .line 2
    .line 3
    const-string v8, "_exp_expire"

    .line 4
    .line 5
    const-string v0, "_ac"

    .line 6
    .line 7
    const-string v1, "campaign_details"

    .line 8
    .line 9
    const-string v2, "_ug"

    .line 10
    .line 11
    const-string v3, "_iapx"

    .line 12
    .line 13
    const-string v4, "_exp_set"

    .line 14
    .line 15
    const-string v5, "_exp_clear"

    .line 16
    .line 17
    const-string v6, "_exp_activate"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v15

    .line 23
    const-string v9, "_in"

    .line 24
    .line 25
    const-string v10, "_xa"

    .line 26
    .line 27
    const-string v11, "_xu"

    .line 28
    .line 29
    const-string v12, "_aq"

    .line 30
    .line 31
    const-string v13, "_aa"

    .line 32
    .line 33
    const-string v14, "_ai"

    .line 34
    .line 35
    invoke-static/range {v9 .. v15}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->a:Lcom/google/common/collect/ImmutableSet;

    .line 40
    .line 41
    const-string v6, "_ui"

    .line 42
    .line 43
    const-string v7, "_cd"

    .line 44
    .line 45
    const-string v1, "_e"

    .line 46
    .line 47
    const-string v2, "_f"

    .line 48
    .line 49
    const-string v3, "_iap"

    .line 50
    .line 51
    const-string v4, "_s"

    .line 52
    .line 53
    const-string v5, "_au"

    .line 54
    .line 55
    invoke-static/range {v1 .. v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->b:Lcom/google/common/collect/ImmutableList;

    .line 60
    .line 61
    const-string v0, "app"

    .line 62
    .line 63
    const-string v1, "am"

    .line 64
    .line 65
    const-string v2, "auto"

    .line 66
    .line 67
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->c:Lcom/google/common/collect/ImmutableList;

    .line 72
    .line 73
    const-string v0, "_r"

    .line 74
    .line 75
    const-string v1, "_dbg"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->d:Lcom/google/common/collect/ImmutableList;

    .line 82
    .line 83
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    .line 84
    .line 85
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 86
    .line 87
    .line 88
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjj;->zza:[Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$a;->k([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjj;->zzb:[Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$a;->k([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->e:Lcom/google/common/collect/ImmutableList;

    .line 105
    .line 106
    const-string v0, "^_ltv_[A-Z]{3}$"

    .line 107
    .line 108
    const-string v1, "^_cc[1-5]{1}$"

    .line 109
    .line 110
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->f:Lcom/google/common/collect/ImmutableList;

    .line 115
    .line 116
    return-void
.end method

.method public static a(Lmb/a$c;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lmb/a$c;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "origin"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lmb/a$c;->b:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v2, "name"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lmb/a$c;->c:Ljava/lang/Object;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v1, p0, Lmb/a$c;->d:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const-string v2, "trigger_event_name"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    const-string v1, "trigger_timeout"

    .line 41
    .line 42
    iget-wide v2, p0, Lmb/a$c;->e:J

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lmb/a$c;->f:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    const-string v2, "timed_out_event_name"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    iget-object v1, p0, Lmb/a$c;->g:Landroid/os/Bundle;

    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    const-string v2, "timed_out_event_params"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    iget-object v1, p0, Lmb/a$c;->h:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v1, :cond_6

    .line 68
    .line 69
    const-string v2, "triggered_event_name"

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_6
    iget-object v1, p0, Lmb/a$c;->i:Landroid/os/Bundle;

    .line 75
    .line 76
    if-eqz v1, :cond_7

    .line 77
    .line 78
    const-string v2, "triggered_event_params"

    .line 79
    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    :cond_7
    const-string v1, "time_to_live"

    .line 84
    .line 85
    iget-wide v2, p0, Lmb/a$c;->j:J

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lmb/a$c;->k:Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v1, :cond_8

    .line 93
    .line 94
    const-string v2, "expired_event_name"

    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_8
    iget-object v1, p0, Lmb/a$c;->l:Landroid/os/Bundle;

    .line 100
    .line 101
    if-eqz v1, :cond_9

    .line 102
    .line 103
    const-string v2, "expired_event_params"

    .line 104
    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    :cond_9
    const-string v1, "creation_timestamp"

    .line 109
    .line 110
    iget-wide v2, p0, Lmb/a$c;->m:J

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    const-string v1, "active"

    .line 116
    .line 117
    iget-boolean v2, p0, Lmb/a$c;->n:Z

    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    const-string v1, "triggered_timestamp"

    .line 123
    .line 124
    iget-wide v2, p0, Lmb/a$c;->o:J

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 127
    .line 128
    .line 129
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzji;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    return-object p0
.end method

.method public static c(Landroid/os/Bundle;)Lmb/a$c;
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lmb/a$c;

    .line 5
    .line 6
    invoke-direct {v0}, Lmb/a$c;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "origin"

    .line 10
    .line 11
    const-class v2, Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, v0, Lmb/a$c;->a:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "name"

    .line 29
    .line 30
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    iput-object v1, v0, Lmb/a$c;->b:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "value"

    .line 45
    .line 46
    const-class v4, Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, v0, Lmb/a$c;->c:Ljava/lang/Object;

    .line 53
    .line 54
    const-string v1, "trigger_event_name"

    .line 55
    .line 56
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/String;

    .line 61
    .line 62
    iput-object v1, v0, Lmb/a$c;->d:Ljava/lang/String;

    .line 63
    .line 64
    const-wide/16 v4, 0x0

    .line 65
    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v4, "trigger_timeout"

    .line 71
    .line 72
    const-class v5, Ljava/lang/Long;

    .line 73
    .line 74
    invoke-static {p0, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v6

    .line 84
    iput-wide v6, v0, Lmb/a$c;->e:J

    .line 85
    .line 86
    const-string v4, "timed_out_event_name"

    .line 87
    .line 88
    invoke-static {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/String;

    .line 93
    .line 94
    iput-object v4, v0, Lmb/a$c;->f:Ljava/lang/String;

    .line 95
    .line 96
    const-string v4, "timed_out_event_params"

    .line 97
    .line 98
    const-class v6, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-static {p0, v4, v6, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Landroid/os/Bundle;

    .line 105
    .line 106
    iput-object v4, v0, Lmb/a$c;->g:Landroid/os/Bundle;

    .line 107
    .line 108
    const-string v4, "triggered_event_name"

    .line 109
    .line 110
    invoke-static {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Ljava/lang/String;

    .line 115
    .line 116
    iput-object v4, v0, Lmb/a$c;->h:Ljava/lang/String;

    .line 117
    .line 118
    const-string v4, "triggered_event_params"

    .line 119
    .line 120
    invoke-static {p0, v4, v6, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Landroid/os/Bundle;

    .line 125
    .line 126
    iput-object v4, v0, Lmb/a$c;->i:Landroid/os/Bundle;

    .line 127
    .line 128
    const-string v4, "time_to_live"

    .line 129
    .line 130
    invoke-static {p0, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Ljava/lang/Long;

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 137
    .line 138
    .line 139
    move-result-wide v7

    .line 140
    iput-wide v7, v0, Lmb/a$c;->j:J

    .line 141
    .line 142
    const-string v4, "expired_event_name"

    .line 143
    .line 144
    invoke-static {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Ljava/lang/String;

    .line 149
    .line 150
    iput-object v2, v0, Lmb/a$c;->k:Ljava/lang/String;

    .line 151
    .line 152
    const-string v2, "expired_event_params"

    .line 153
    .line 154
    invoke-static {p0, v2, v6, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Landroid/os/Bundle;

    .line 159
    .line 160
    iput-object v2, v0, Lmb/a$c;->l:Landroid/os/Bundle;

    .line 161
    .line 162
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 163
    .line 164
    const-string v3, "active"

    .line 165
    .line 166
    const-class v4, Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-static {p0, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    iput-boolean v2, v0, Lmb/a$c;->n:Z

    .line 179
    .line 180
    const-string v2, "creation_timestamp"

    .line 181
    .line 182
    invoke-static {p0, v2, v5, v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Ljava/lang/Long;

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 189
    .line 190
    .line 191
    move-result-wide v2

    .line 192
    iput-wide v2, v0, Lmb/a$c;->m:J

    .line 193
    .line 194
    const-string v2, "triggered_timestamp"

    .line 195
    .line 196
    invoke-static {p0, v2, v5, v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    check-cast p0, Ljava/lang/Long;

    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 203
    .line 204
    .line 205
    move-result-wide v1

    .line 206
    iput-wide v1, v0, Lmb/a$c;->o:J

    .line 207
    .line 208
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "clx"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string p0, "_ae"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string p0, "_r"

    .line 18
    .line 19
    const-wide/16 v0, 0x1

    .line 20
    .line 21
    invoke-virtual {p2, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/a;->b:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    if-eqz p1, :cond_2

    .line 12
    .line 13
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/a;->d:Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    move v2, v0

    .line 20
    :cond_1
    if-ge v2, v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "_ce1"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "fcm"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v0, :cond_7

    .line 12
    .line 13
    const-string v0, "_ce2"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const-string v0, "_ln"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    const-string p1, "fiam"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return v3

    .line 46
    :cond_2
    :goto_0
    return v2

    .line 47
    :cond_3
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/a;->e:Lcom/google/common/collect/ImmutableList;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    return v3

    .line 56
    :cond_4
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/a;->f:Lcom/google/common/collect/ImmutableList;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    move v1, v3

    .line 63
    :cond_5
    if-ge v1, v0, :cond_6

    .line 64
    .line 65
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    check-cast v4, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_5

    .line 78
    .line 79
    return v3

    .line 80
    :cond_6
    return v2

    .line 81
    :cond_7
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_9

    .line 86
    .line 87
    const-string p1, "frc"

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_8

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_8
    return v3

    .line 97
    :cond_9
    :goto_2
    return v2
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "_cmp"

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/a;->j(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    if-nez p2, :cond_2

    .line 20
    .line 21
    return v0

    .line 22
    :cond_2
    sget-object p1, Lcom/google/firebase/analytics/connector/internal/a;->d:Lcom/google/common/collect/ImmutableList;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    move v3, v0

    .line 29
    :cond_3
    if-ge v3, v2, :cond_4

    .line 30
    .line 31
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    add-int/2addr v3, v1

    .line 36
    check-cast v4, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    return v0

    .line 45
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 46
    .line 47
    .line 48
    const-string p1, "_cis"

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sparse-switch v3, :sswitch_data_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :sswitch_0
    const-string v3, "fiam"

    .line 60
    .line 61
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    const/4 v2, 0x2

    .line 69
    goto :goto_0

    .line 70
    :sswitch_1
    const-string v3, "fdl"

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_6

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_6
    move v2, v1

    .line 80
    goto :goto_0

    .line 81
    :sswitch_2
    const-string v3, "fcm"

    .line 82
    .line 83
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_7

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_7
    move v2, v0

    .line 91
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 92
    .line 93
    .line 94
    return v0

    .line 95
    :pswitch_0
    const-string p0, "fiam_integration"

    .line 96
    .line 97
    invoke-virtual {p2, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return v1

    .line 101
    :pswitch_1
    const-string p0, "fdl_integration"

    .line 102
    .line 103
    invoke-virtual {p2, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return v1

    .line 107
    :pswitch_2
    const-string p0, "fcm_integration"

    .line 108
    .line 109
    invoke-virtual {p2, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return v1

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x18b50 -> :sswitch_2
        0x18b6e -> :sswitch_1
        0x2ff42f -> :sswitch_0
    .end sparse-switch

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Lmb/a$c;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lmb/a$c;->a:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_b

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v2, p0, Lmb/a$c;->c:Ljava/lang/Object;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    return v0

    .line 27
    :cond_2
    invoke-static {v1}, Lcom/google/firebase/analytics/connector/internal/a;->j(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    return v0

    .line 34
    :cond_3
    iget-object v2, p0, Lmb/a$c;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/google/firebase/analytics/connector/internal/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_4

    .line 41
    .line 42
    return v0

    .line 43
    :cond_4
    iget-object v2, p0, Lmb/a$c;->k:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v2, :cond_6

    .line 46
    .line 47
    iget-object v3, p0, Lmb/a$c;->l:Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/a;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    return v0

    .line 56
    :cond_5
    iget-object v2, p0, Lmb/a$c;->k:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p0, Lmb/a$c;->l:Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-static {v1, v2, v3}, Lcom/google/firebase/analytics/connector/internal/a;->g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_6

    .line 65
    .line 66
    return v0

    .line 67
    :cond_6
    iget-object v2, p0, Lmb/a$c;->h:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v2, :cond_8

    .line 70
    .line 71
    iget-object v3, p0, Lmb/a$c;->i:Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/a;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_7

    .line 78
    .line 79
    return v0

    .line 80
    :cond_7
    iget-object v2, p0, Lmb/a$c;->h:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v3, p0, Lmb/a$c;->i:Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-static {v1, v2, v3}, Lcom/google/firebase/analytics/connector/internal/a;->g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_8

    .line 89
    .line 90
    return v0

    .line 91
    :cond_8
    iget-object v2, p0, Lmb/a$c;->f:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v2, :cond_a

    .line 94
    .line 95
    iget-object v3, p0, Lmb/a$c;->g:Landroid/os/Bundle;

    .line 96
    .line 97
    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/a;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_9

    .line 102
    .line 103
    return v0

    .line 104
    :cond_9
    iget-object v2, p0, Lmb/a$c;->f:Ljava/lang/String;

    .line 105
    .line 106
    iget-object p0, p0, Lmb/a$c;->g:Landroid/os/Bundle;

    .line 107
    .line 108
    invoke-static {v1, v2, p0}, Lcom/google/firebase/analytics/connector/internal/a;->g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_a

    .line 113
    .line 114
    return v0

    .line 115
    :cond_a
    const/4 p0, 0x1

    .line 116
    return p0

    .line 117
    :cond_b
    :goto_0
    return v0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/a;->a:Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/a;->c:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method
