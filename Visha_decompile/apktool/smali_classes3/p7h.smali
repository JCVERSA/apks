.class public final Lp7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lg8i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp7h;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lp7h;->a:Lg8i;

    return-void
.end method

.method public static synthetic a(Lp7h;)Lq7h;
    .locals 0

    iget-object p0, p0, Lp7h;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {p0}, Lq7h;->a(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lq7h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x36

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lo7h;

    invoke-direct {v0, p0}, Lo7h;-><init>(Lp7h;)V

    iget-object p0, p0, Lp7h;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
