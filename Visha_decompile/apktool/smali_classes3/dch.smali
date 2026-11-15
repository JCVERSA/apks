.class public final Ldch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Lenh;

.field public final c:Landroid/content/pm/PackageInfo;

.field public final d:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Lg8i;Lenh;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldch;->a:Lg8i;

    iput-object p2, p0, Ldch;->b:Lenh;

    iput-object p3, p0, Ldch;->c:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Ldch;->d:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method

.method public static synthetic a(Ldch;)Lgch;
    .locals 3

    new-instance v0, Lgch;

    iget-object v1, p0, Ldch;->b:Lenh;

    iget-object v2, p0, Ldch;->c:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Ldch;->d:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-direct {v0, v1, v2, p0}, Lgch;-><init>(Lenh;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzg;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x1a

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lcch;

    invoke-direct {v0, p0}, Lcch;-><init>(Ldch;)V

    iget-object p0, p0, Ldch;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
