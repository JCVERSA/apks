.class public final Lcom/google/android/gms/internal/ads/bb;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/bb;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/ads/zzgwn;

.field private zze:Lcom/google/android/gms/internal/ads/zzgwn;

.field private zzf:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/bb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bb;->zza:Lcom/google/android/gms/internal/ads/bb;

    const-class v1, Lcom/google/android/gms/internal/ads/bb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/bb;->zzf:B

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bb;->zzd:Lcom/google/android/gms/internal/ads/zzgwn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bb;->zze:Lcom/google/android/gms/internal/ads/zzgwn;

    return-void
.end method

.method public static b0()Lzvi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/bb;->zza:Lcom/google/android/gms/internal/ads/bb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lzvi;

    return-object v0
.end method

.method public static bridge synthetic c0()Lcom/google/android/gms/internal/ads/bb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/bb;->zza:Lcom/google/android/gms/internal/ads/bb;

    return-object v0
.end method

.method public static synthetic d0(Lcom/google/android/gms/internal/ads/bb;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/bb;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/bb;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bb;->zzd:Lcom/google/android/gms/internal/ads/zzgwn;

    return-void
.end method

.method public static synthetic e0(Lcom/google/android/gms/internal/ads/bb;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/bb;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/bb;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bb;->zze:Lcom/google/android/gms/internal/ads/zzgwn;

    return-void
.end method


# virtual methods
.method public final W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    throw p3

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/bb;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/bb;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/bb;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/bb;->zza:Lcom/google/android/gms/internal/ads/bb;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/bb;->zzb:Lvti;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/bb;->zza:Lcom/google/android/gms/internal/ads/bb;

    return-object p0

    :pswitch_2
    new-instance p0, Lzvi;

    invoke-direct {p0, p3}, Lzvi;-><init>(Llxi;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/ads/bb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bb;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "zzc"

    const-string p1, "zzd"

    const-string p2, "zze"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/bb;->zza:Lcom/google/android/gms/internal/ads/bb;

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u150a\u0000\u0002\u100a\u0001"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    const/4 p1, 0x1

    :goto_3
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/bb;->zzf:B

    return-object p3

    :pswitch_6
    iget-byte p0, p0, Lcom/google/android/gms/internal/ads/bb;->zzf:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
