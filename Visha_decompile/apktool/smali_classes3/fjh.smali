.class public final Lfjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwjh;


# instance fields
.field public final a:Lvoh;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lv7i;


# direct methods
.method public constructor <init>(Lvoh;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldjh;

    invoke-direct {v0, p0}, Ldjh;-><init>(Lfjh;)V

    iput-object v0, p0, Lfjh;->c:Lv7i;

    iput-object p1, p0, Lfjh;->a:Lvoh;

    iput-object p2, p0, Lfjh;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic b(Lfjh;Loyf;Lqjh;)Lim5;
    .locals 3

    iget-object v0, p0, Lfjh;->a:Lvoh;

    iget-object v1, p2, Lqjh;->b:Lcph;

    iget-object p2, p2, Lqjh;->a:Lcom/google/android/gms/internal/ads/zzbuy;

    invoke-interface {v0, v1}, Lvoh;->c(Lcph;)Lbph;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Loyf;->zzb()Lgvf;

    move-result-object p1

    invoke-virtual {p1, p2}, Lgvf;->g(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;

    move-result-object p1

    iget-object v2, p0, Lfjh;->c:Lv7i;

    iget-object p0, p0, Lfjh;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, v2, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    :cond_0
    new-instance p0, Lejh;

    invoke-direct {p0, v1, p2, v0}, Lejh;-><init>(Lcph;Lcom/google/android/gms/internal/ads/zzbuy;Lbph;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Lxjh;Lvjh;Ljava/lang/Object;)Lim5;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lfjh;->c(Lxjh;Lvjh;Loyf;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lxjh;Lvjh;Loyf;)Lim5;
    .locals 1

    new-instance p1, Lsjh;

    iget-object p2, p0, Lfjh;->a:Lvoh;

    iget-object v0, p0, Lfjh;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p1, p2, p3, v0}, Lsjh;-><init>(Lvoh;Loyf;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lsjh;->c()Lim5;

    move-result-object p1

    invoke-static {p1}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object p1

    new-instance p2, Lbjh;

    invoke-direct {p2, p0, p3}, Lbjh;-><init>(Lfjh;Loyf;)V

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    check-cast p1, Lq7i;

    new-instance p2, Lcjh;

    invoke-direct {p2, p0}, Lcjh;-><init>(Lfjh;)V

    const-class p0, Ljava/lang/Exception;

    invoke-static {p1, p0, p2, v0}, Lcom/google/android/gms/internal/ads/j8;->e(Lim5;Ljava/lang/Class;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lq7i;

    return-object p0
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
