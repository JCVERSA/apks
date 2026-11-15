.class public final Lxth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxth;->a:Lqyi;

    iput-object p3, p0, Lxth;->b:Lqyi;

    iput-object p4, p0, Lxth;->c:Lqyi;

    iput-object p5, p0, Lxth;->d:Lqyi;

    iput-object p6, p0, Lxth;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lxth;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v3

    iget-object v0, p0, Lxth;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lh8i;

    iget-object v0, p0, Lxth;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/ads/internal/util/client/zzu;

    iget-object v0, p0, Lxth;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Loth;

    iget-object p0, p0, Lxth;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfgq;

    new-instance p0, Lwth;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lwth;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lh8i;Lcom/google/android/gms/ads/internal/util/client/zzu;Loth;Lcom/google/android/gms/internal/ads/zzfgq;)V

    return-object p0
.end method
