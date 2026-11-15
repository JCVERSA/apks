.class public final Lcom/google/android/gms/internal/ads/z4;
.super Lvug;
.source "SourceFile"


# static fields
.field public static final h:Landroid/util/SparseArray;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Llyf;

.field public final e:Landroid/telephony/TelephonyManager;

.field public final f:Lpug;

.field public g:Lcom/google/android/gms/internal/ads/zzbbn$zzq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/z4;->h:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zze:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzf:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llyf;Lpug;Llug;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    invoke-direct {p0, p4, p5}, Lvug;-><init>(Llug;Lcom/google/android/gms/ads/internal/util/zzg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z4;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z4;->d:Llyf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/z4;->f:Lpug;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z4;->e:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/internal/ads/z4;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/v0;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/v0;->d0()Lcom/google/android/gms/internal/ads/s0;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "cnt"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "gnt"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z4;->g:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/z4;->g:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    if-eq v1, p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/s0;->w(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;)Lcom/google/android/gms/internal/ads/s0;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/s0;->w(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;)Lcom/google/android/gms/internal/ads/s0;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/s0;->w(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;)Lcom/google/android/gms/internal/ads/s0;

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;

    goto :goto_1

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;

    goto :goto_1

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;

    goto :goto_1

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;

    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/s0;->v(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;)Lcom/google/android/gms/internal/ads/s0;

    :goto_2
    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/v0;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/z4;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;
    .locals 1

    const-string p0, "device"

    invoke-static {p1, p0}, Lunh;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "network"

    invoke-static {p0, p1}, Lunh;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "active_network_state"

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object p1, Lcom/google/android/gms/internal/ads/z4;->h:Landroid/util/SparseArray;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/internal/ads/z4;)Lpug;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z4;->f:Lpug;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/android/gms/internal/ads/z4;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/v0;Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;)[B
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/y0;->E0()Lcom/google/android/gms/internal/ads/z0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/z0;->I(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/z0;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/z4;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/z4;->g(Z)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/z0;->v(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)Lcom/google/android/gms/internal/ads/z0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z4;->e:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v4

    invoke-virtual {v4, p2, v1}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzg(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/z0;->w(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)Lcom/google/android/gms/internal/ads/z0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z4;->f:Lpug;

    invoke-virtual {v1}, Lpug;->e()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/z0;->C(J)Lcom/google/android/gms/internal/ads/z0;

    invoke-virtual {v1}, Lpug;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/z0;->B(J)Lcom/google/android/gms/internal/ads/z0;

    invoke-virtual {v1}, Lpug;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/z0;->x(I)Lcom/google/android/gms/internal/ads/z0;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/z0;->y(Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;)Lcom/google/android/gms/internal/ads/z0;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/z0;->z(Lcom/google/android/gms/internal/ads/v0;)Lcom/google/android/gms/internal/ads/z0;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z4;->g:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/z0;->A(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)Lcom/google/android/gms/internal/ads/z0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/z4;->g(Z)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/z0;->E(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)Lcom/google/android/gms/internal/ads/z0;

    invoke-virtual {v1}, Lpug;->d()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/z0;->G(J)Lcom/google/android/gms/internal/ads/z0;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p0

    invoke-interface {p0}, Lfy0;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/z0;->F(J)Lcom/google/android/gms/internal/ads/z0;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "wifi_on"

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/z4;->g(Z)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/z0;->H(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)Lcom/google/android/gms/internal/ads/z0;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/y0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aa;->l()[B

    move-result-object p0

    return-object p0
.end method

.method public static final g(Z)Lcom/google/android/gms/internal/ads/zzbbn$zzq;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final e(Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z4;->d:Llyf;

    invoke-virtual {v1, v0}, Llyf;->b(Landroid/os/Bundle;)Lim5;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/y4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/y4;-><init>(Lcom/google/android/gms/internal/ads/z4;Z)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method
