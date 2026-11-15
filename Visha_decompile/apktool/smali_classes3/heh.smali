.class public final Lheh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lheh;->a:Lqyi;

    iput-object p3, p0, Lheh;->b:Lqyi;

    iput-object p4, p0, Lheh;->c:Lqyi;

    iput-object p5, p0, Lheh;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lgeh;
    .locals 7

    iget-object v0, p0, Lheh;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v3

    iget-object v0, p0, Lheh;->b:Lqyi;

    check-cast v0, Ltyi;

    invoke-virtual {v0}, Ltyi;->b()Ljava/util/Set;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Set;

    iget-object v0, p0, Lheh;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p0, p0, Lheh;->d:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lsmg;

    new-instance p0, Lgeh;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lgeh;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzfgn;Lsmg;)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lheh;->a()Lgeh;

    move-result-object p0

    return-object p0
.end method
