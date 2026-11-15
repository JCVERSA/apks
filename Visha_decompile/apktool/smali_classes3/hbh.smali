.class public final Lhbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Lenh;


# direct methods
.method public constructor <init>(Lg8i;Lenh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbh;->a:Lg8i;

    iput-object p2, p0, Lhbh;->b:Lenh;

    return-void
.end method

.method public static synthetic a(Lhbh;)Libh;
    .locals 2

    new-instance v0, Libh;

    iget-object p0, p0, Lhbh;->b:Lenh;

    iget-object p0, p0, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    const-string v1, "requester_type_2"

    invoke-static {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-direct {v0, p0}, Libh;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x15

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lgbh;

    invoke-direct {v0, p0}, Lgbh;-><init>(Lhbh;)V

    iget-object p0, p0, Lhbh;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
