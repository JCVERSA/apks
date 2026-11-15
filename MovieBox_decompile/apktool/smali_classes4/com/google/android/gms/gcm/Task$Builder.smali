.class public abstract Lcom/google/android/gms/gcm/Task$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field protected extras:Landroid/os/Bundle;

.field protected gcmTaskService:Ljava/lang/String;

.field protected isPersisted:Z

.field protected requiredNetworkState:I

.field protected requiresCharging:Z

.field protected tag:Ljava/lang/String;

.field protected updateCurrent:Z

.field protected zzaw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected zzay:Lcom/google/android/gms/gcm/zzl;
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->zzaw:Ljava/util/Set;

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/gcm/zzl;->zzaq:Lcom/google/android/gms/gcm/zzl;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->zzay:Lcom/google/android/gms/gcm/zzl;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/android/gms/gcm/Task;
.end method

.method protected checkConditions()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->gcmTaskService:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v2, "Must provide an endpoint for this task by calling setService(ComponentName)."

    .line 10
    .line 11
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->tag:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzd(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->zzay:Lcom/google/android/gms/gcm/zzl;

    .line 20
    .line 21
    if-eqz v0, :cond_8

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/zzl;->zzi()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eq v2, v1, :cond_2

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const/16 v3, 0x2d

    .line 37
    .line 38
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    .line 40
    .line 41
    const-string v3, "Must provide a valid RetryPolicy: "

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/zzl;->zzj()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/zzl;->zzk()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v2, :cond_4

    .line 66
    .line 67
    if-ltz v3, :cond_3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const/16 v2, 0x34

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const-string v2, "InitialBackoffSeconds can\'t be negative: "

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_4
    :goto_2
    if-ne v2, v1, :cond_6

    .line 96
    .line 97
    const/16 v1, 0xa

    .line 98
    .line 99
    if-lt v3, v1, :cond_5

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    const-string v1, "RETRY_POLICY_LINEAR must have an initial backoff at least 10 seconds."

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :cond_6
    :goto_3
    if-lt v4, v3, :cond_7

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/zzl;->zzk()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const/16 v3, 0x4d

    .line 122
    .line 123
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .line 125
    .line 126
    const-string v3, "MaximumBackoffSeconds must be greater than InitialBackoffSeconds: "

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v1

    .line 142
    :cond_8
    :goto_4
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->isPersisted:Z

    .line 143
    .line 144
    if-eqz v0, :cond_9

    .line 145
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->extras:Landroid/os/Bundle;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/google/android/gms/gcm/Task;->zzg(Landroid/os/Bundle;)V

    .line 149
    .line 150
    .line 151
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->zzaw:Ljava/util/Set;

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_b

    .line 158
    .line 159
    iget v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->requiredNetworkState:I

    .line 160
    .line 161
    const/4 v1, 0x2

    .line 162
    if-eq v0, v1, :cond_a

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    const-string v1, "Required URIs may not be used with NETWORK_STATE_ANY"

    .line 168
    .line 169
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->zzaw:Ljava/util/Set;

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_c

    .line 184
    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Landroid/net/Uri;

    .line 190
    .line 191
    invoke-static {v1}, Lcom/google/android/gms/gcm/Task;->zze(Landroid/net/Uri;)V

    .line 192
    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_c
    return-void
.end method

.method public abstract setExtras(Landroid/os/Bundle;)Lcom/google/android/gms/gcm/Task$Builder;
.end method

.method public abstract setPersisted(Z)Lcom/google/android/gms/gcm/Task$Builder;
.end method

.method public abstract setRequiredNetwork(I)Lcom/google/android/gms/gcm/Task$Builder;
.end method

.method public abstract setRequiresCharging(Z)Lcom/google/android/gms/gcm/Task$Builder;
.end method

.method public abstract setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/Task$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/gcm/GcmTaskService;",
            ">;)",
            "Lcom/google/android/gms/gcm/Task$Builder;"
        }
    .end annotation
.end method

.method public abstract setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/Task$Builder;
.end method

.method public abstract setUpdateCurrent(Z)Lcom/google/android/gms/gcm/Task$Builder;
.end method
