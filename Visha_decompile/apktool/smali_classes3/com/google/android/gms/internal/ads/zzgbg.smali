.class final enum Lcom/google/android/gms/internal/ads/zzgbg;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic b:[Lcom/google/android/gms/internal/ads/zzgbg;

.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzgbg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbg;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgbg;->zza:Lcom/google/android/gms/internal/ads/zzgbg;

    filled-new-array {v0}, [Lcom/google/android/gms/internal/ads/zzgbg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgbg;->b:[Lcom/google/android/gms/internal/ads/zzgbg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzgbg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgbg;->b:[Lcom/google/android/gms/internal/ads/zzgbg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzgbg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzgbg;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "MoreExecutors.directExecutor()"

    return-object p0
.end method
