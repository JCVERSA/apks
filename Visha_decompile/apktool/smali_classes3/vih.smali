.class public final Lvih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwjh;


# instance fields
.field public a:Loyf;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/m8;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lvih;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lxjh;Lvjh;Ljava/lang/Object;)Lim5;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lvih;->c(Lxjh;Lvjh;Loyf;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final b()Loyf;
    .locals 0

    iget-object p0, p0, Lvih;->a:Loyf;

    return-object p0
.end method

.method public final c(Lxjh;Lvjh;Loyf;)Lim5;
    .locals 1

    iget-object p1, p1, Lxjh;->b:Lujh;

    invoke-interface {p2, p1}, Lvjh;->a(Lujh;)Lnyf;

    move-result-object p1

    new-instance p2, Lakh;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lakh;-><init>(Z)V

    invoke-interface {p1, p2}, Lnyf;->m(Lakh;)Lnyf;

    invoke-interface {p1}, Lnyf;->zzh()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loyf;

    iput-object p1, p0, Lvih;->a:Loyf;

    invoke-interface {p1}, Loyf;->zzb()Lgvf;

    move-result-object p1

    new-instance p2, Lbph;

    invoke-direct {p2}, Lbph;-><init>()V

    invoke-virtual {p1}, Lgvf;->i()Lim5;

    move-result-object p3

    invoke-static {p3}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object p3

    new-instance v0, Ltih;

    invoke-direct {v0, p0, p2, p1}, Ltih;-><init>(Lvih;Lbph;Lgvf;)V

    iget-object p0, p0, Lvih;->b:Ljava/util/concurrent/Executor;

    invoke-static {p3, v0, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    check-cast p1, Lq7i;

    new-instance p3, Luih;

    invoke-direct {p3, p2}, Luih;-><init>(Lbph;)V

    invoke-static {p1, p3, p0}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lq7i;

    return-object p0
.end method

.method public final synthetic zzd()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lvih;->a:Loyf;

    return-object p0
.end method
