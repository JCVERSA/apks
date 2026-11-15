.class public final Ld6j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoi;


# static fields
.field public static final a:Lcoi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld6j;

    invoke-direct {v0}, Ld6j;-><init>()V

    sput-object v0, Ld6j;->a:Lcoi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, p0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzf:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zze:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzd:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzc:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzb:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    :goto_0
    if-eqz p1, :cond_6

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
