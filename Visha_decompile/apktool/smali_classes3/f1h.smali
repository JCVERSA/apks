.class public final Lf1h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lbjg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lbjg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1h;->a:Landroid/content/Context;

    iput-object p2, p0, Lf1h;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lf1h;->c:Lbjg;

    return-void
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;Lnxg;)V
    .locals 2

    :try_start_0
    iget-object p1, p1, Lvmh;->a:Lsmh;

    iget-object p1, p1, Lsmh;->a:Lenh;

    iget-object v0, p1, Lenh;->o:Lrmh;

    iget v0, v0, Lrmh;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v0, Leoh;

    iget-object p0, p0, Lf1h;->a:Landroid/content/Context;

    iget-object p1, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p2, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p3, Lnxg;->c:Lx0g;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-virtual {v0, p0, p1, p2, v1}, Leoh;->w(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpe;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v0, Leoh;

    iget-object p0, p0, Lf1h;->a:Landroid/content/Context;

    iget-object p1, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p2, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p3, Lnxg;->c:Lx0g;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-virtual {v0, p0, p1, p2, v1}, Leoh;->v(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    iget-object p1, p3, Lnxg;->a:Ljava/lang/String;

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fail to load ad from adapter "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Lvmh;Lhmh;Lnxg;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lpuf;

    iget-object v1, p3, Lnxg;->a:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p1, Lyig;

    new-instance v1, Le1h;

    invoke-direct {v1, p0, p3, p2}, Le1h;-><init>(Lf1h;Lnxg;Lhmh;)V

    invoke-direct {p1, v1}, Lyig;-><init>(Lebg;)V

    iget-object p2, p0, Lf1h;->c:Lbjg;

    invoke-virtual {p2, v0, p1}, Lbjg;->b(Lpuf;Lyig;)Lxig;

    move-result-object p1

    invoke-virtual {p1}, Lcuf;->c()Lm0g;

    move-result-object p2

    new-instance v0, Lqpf;

    iget-object v1, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v1, Leoh;

    invoke-direct {v0, v1}, Lqpf;-><init>(Leoh;)V

    iget-object p0, p0, Lf1h;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p0}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p0, p3, Lnxg;->c:Lx0g;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p1}, Lxig;->n()Lcom/google/android/gms/internal/ads/zzegn;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    invoke-virtual {p1}, Lxig;->k()Lwig;

    move-result-object p0

    return-object p0
.end method
