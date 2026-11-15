.class public final Lbbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg8i;


# direct methods
.method public constructor <init>(Lg8i;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbh;->b:Lg8i;

    iput-object p2, p0, Lbbh;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lbbh;)Lebh;
    .locals 1

    new-instance v0, Lebh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object p0, p0, Lbbh;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lebh;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x39

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Labh;

    invoke-direct {v0, p0}, Labh;-><init>(Lbbh;)V

    iget-object p0, p0, Lbbh;->b:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
