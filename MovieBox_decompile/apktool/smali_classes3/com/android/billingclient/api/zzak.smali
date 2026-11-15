.class final Lcom/android/billingclient/api/zzak;
.super Landroid/os/ResultReceiver;
.source "source.java"


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/i;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/n;->c()Lcom/android/billingclient/api/n$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/n$a;->c(I)Lcom/android/billingclient/api/n$a;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    const/16 p1, 0x10

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    const-string v2, "BillingClient"

    .line 16
    .line 17
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzg(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/n$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/n$a;

    .line 22
    .line 23
    .line 24
    const-string v2, "INTERNAL_LOG_ERROR_REASON"

    .line 25
    .line 26
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/android/billingclient/api/zzak;->a:Lcom/android/billingclient/api/i;

    .line 31
    .line 32
    invoke-static {v3}, Lcom/android/billingclient/api/i;->R(Lcom/android/billingclient/api/i;)Lcom/android/billingclient/api/n0;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzih;->zza(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v2, 0x17

    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/n$a;->a()Lcom/android/billingclient/api/n;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    .line 50
    .line 51
    invoke-virtual {p2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzii;->zzv()Lcom/google/android/gms/internal/play_billing/zzie;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v4}, Lcom/android/billingclient/api/n;->b()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzie;->zzk(I)Lcom/google/android/gms/internal/play_billing/zzie;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/play_billing/zzie;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzie;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/play_billing/zzie;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzie;

    .line 74
    .line 75
    .line 76
    if-eqz p2, :cond_1

    .line 77
    .line 78
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/play_billing/zzie;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzie;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception p1

    .line 83
    goto :goto_2

    .line 84
    :cond_1
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzv()Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, v5}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzi(Lcom/google/android/gms/internal/play_billing/zzie;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzk(I)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :goto_2
    const-string p2, "BillingLogger"

    .line 102
    .line 103
    const-string v2, "Unable to create logging payload"

    .line 104
    .line 105
    invoke-static {p2, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    move-object p1, v1

    .line 109
    :goto_3
    invoke-interface {v3, p1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_2
    iget-object p2, p0, Lcom/android/billingclient/api/zzak;->a:Lcom/android/billingclient/api/i;

    .line 114
    .line 115
    invoke-static {p2}, Lcom/android/billingclient/api/i;->R(Lcom/android/billingclient/api/i;)Lcom/android/billingclient/api/n0;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    const/16 v0, 0x49

    .line 120
    .line 121
    sget-object v2, Lcom/android/billingclient/api/p0;->j:Lcom/android/billingclient/api/n;

    .line 122
    .line 123
    invoke-static {v0, p1, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/n;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 128
    .line 129
    .line 130
    throw v1

    .line 131
    :cond_3
    :goto_4
    invoke-virtual {v0}, Lcom/android/billingclient/api/n$a;->a()Lcom/android/billingclient/api/n;

    .line 132
    .line 133
    .line 134
    throw v1
.end method
