.class public final La2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmxg;


# instance fields
.field public final a:Lf3h;

.field public final b:Ljkg;


# direct methods
.method public constructor <init>(Lf3h;Ljkg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2h;->a:Lf3h;

    iput-object p2, p0, La2h;->b:Ljkg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lnxg;
    .locals 1

    sget-object p2, Lcye;->Q1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, La2h;->b:Ljkg;

    invoke-virtual {p0, p1}, Ljkg;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbqx;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Coundn\'t create RTB adapter: "

    invoke-static {p2, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, La2h;->a:Lf3h;

    invoke-virtual {p0, p1}, Lf3h;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbqx;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzedw;-><init>()V

    new-instance v0, Lnxg;

    invoke-direct {v0, p0, p2, p1}, Lnxg;-><init>(Ljava/lang/Object;Lx0g;Ljava/lang/String;)V

    return-object v0
.end method
