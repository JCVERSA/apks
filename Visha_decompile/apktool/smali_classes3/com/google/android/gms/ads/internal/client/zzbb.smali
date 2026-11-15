.class public final Lcom/google/android/gms/ads/internal/client/zzbb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/google/android/gms/ads/internal/client/zzbb;

.field public static final synthetic zza:I


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/util/client/zzf;

.field public final b:Lcom/google/android/gms/ads/internal/client/zzaz;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final e:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->f:Lcom/google/android/gms/ads/internal/client/zzbb;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/zzf;-><init>()V

    new-instance v10, Lcom/google/android/gms/ads/internal/client/zzaz;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzk;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/zzk;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzi;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/client/zzi;-><init>()V

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzfa;

    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/client/zzfa;-><init>()V

    new-instance v5, Ln1f;

    invoke-direct {v5}, Ln1f;-><init>()V

    new-instance v6, Lncf;

    invoke-direct {v6}, Lncf;-><init>()V

    new-instance v7, Liaf;

    invoke-direct {v7}, Liaf;-><init>()V

    new-instance v8, Lo1f;

    invoke-direct {v8}, Lo1f;-><init>()V

    new-instance v9, Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-direct {v9}, Lcom/google/android/gms/ads/internal/client/zzl;-><init>()V

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/client/zzaz;-><init>(Lcom/google/android/gms/ads/internal/client/zzk;Lcom/google/android/gms/ads/internal/client/zzi;Lcom/google/android/gms/ads/internal/client/zzfa;Ln1f;Lncf;Liaf;Lo1f;Lcom/google/android/gms/ads/internal/client/zzl;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzf()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const v3, 0xefc3650

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->a:Lcom/google/android/gms/ads/internal/util/client/zzf;

    iput-object v10, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->b:Lcom/google/android/gms/ads/internal/client/zzaz;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->e:Ljava/util/Random;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/ads/internal/client/zzaz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->f:Lcom/google/android/gms/ads/internal/client/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbb;->b:Lcom/google/android/gms/ads/internal/client/zzaz;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->f:Lcom/google/android/gms/ads/internal/client/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbb;->a:Lcom/google/android/gms/ads/internal/util/client/zzf;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->f:Lcom/google/android/gms/ads/internal/client/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbb;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method public static zzd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->f:Lcom/google/android/gms/ads/internal/client/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static zze()Ljava/util/Random;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->f:Lcom/google/android/gms/ads/internal/client/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbb;->e:Ljava/util/Random;

    return-object v0
.end method
