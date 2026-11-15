.class public final Lxxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lirf;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lirf;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxxg;->a:Landroid/content/Context;

    iput-object p2, p0, Lxxg;->b:Lirf;

    iput-object p3, p0, Lxxg;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;Lnxg;)V
    .locals 1

    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v0, Leoh;

    iget-object p1, p1, Lvmh;->a:Lsmh;

    iget-object p1, p1, Lsmh;->a:Lenh;

    iget-object p2, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lxxg;->a:Landroid/content/Context;

    iget-object p3, p3, Lnxg;->c:Lx0g;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzbpe;

    iget-object p1, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual {v0, p0, p1, p2, p3}, Leoh;->q(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpe;)V

    return-void
.end method

.method public final bridge synthetic b(Lvmh;Lhmh;Lnxg;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lpuf;

    iget-object v1, p3, Lnxg;->a:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p1, Lw9g;

    new-instance v1, Lwxg;

    invoke-direct {v1, p0, p3, p2}, Lwxg;-><init>(Lxxg;Lnxg;Lhmh;)V

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lw9g;-><init>(Lebg;Lejf;)V

    new-instance v1, Lgrf;

    iget p2, p2, Lhmh;->a0:I

    invoke-direct {v1, p2}, Lgrf;-><init>(I)V

    iget-object p2, p0, Lxxg;->b:Lirf;

    invoke-virtual {p2, v0, p1, v1}, Lirf;->a(Lpuf;Lw9g;Lgrf;)Lfrf;

    move-result-object p1

    invoke-virtual {p1}, Lcuf;->c()Lm0g;

    move-result-object p2

    new-instance v0, Lqpf;

    iget-object v1, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v1, Leoh;

    invoke-direct {v0, v1}, Lqpf;-><init>(Leoh;)V

    iget-object p0, p0, Lxxg;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p0}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p0, p3, Lnxg;->c:Lx0g;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p1}, Lcuf;->g()Lcom/google/android/gms/internal/ads/zzeho;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    invoke-virtual {p1}, Lfrf;->h()Lnrf;

    move-result-object p0

    return-object p0
.end method
