.class public final Lt5h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Lenh;

.field public final c:I


# direct methods
.method public constructor <init>(Lg8i;Lenh;Lvnh;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5h;->a:Lg8i;

    iput-object p2, p0, Lt5h;->b:Lenh;

    iput p4, p0, Lt5h;->c:I

    return-void
.end method

.method public static synthetic a(Lt5h;)Lu5h;
    .locals 4

    new-instance v0, Lu5h;

    sget-object v1, Lcye;->Y6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lt5h;->b:Lenh;

    iget p0, p0, Lt5h;->c:I

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-static {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcye;->Z6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcye;->a7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const-string v1, "requester_type_2"

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {}, Lvnh;->a()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-direct {v0, v2}, Lu5h;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lq5h;

    invoke-direct {v0, p0}, Lq5h;-><init>(Lt5h;)V

    iget-object p0, p0, Lt5h;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
