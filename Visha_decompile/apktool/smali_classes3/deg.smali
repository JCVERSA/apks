.class public final Ldeg;
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

.field public final f:Lqyi;

.field public final g:Lqyi;

.field public final h:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldeg;->a:Lqyi;

    iput-object p2, p0, Ldeg;->b:Lqyi;

    iput-object p3, p0, Ldeg;->c:Lqyi;

    iput-object p4, p0, Ldeg;->d:Lqyi;

    iput-object p5, p0, Ldeg;->e:Lqyi;

    iput-object p6, p0, Ldeg;->f:Lqyi;

    iput-object p7, p0, Ldeg;->g:Lqyi;

    iput-object p9, p0, Ldeg;->h:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lceg;
    .locals 11

    iget-object v0, p0, Ldeg;->a:Lqyi;

    check-cast v0, Lpkf;

    invoke-virtual {v0}, Lpkf;->a()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v2

    iget-object v0, p0, Ldeg;->b:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v3

    iget-object v0, p0, Ldeg;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lidg;

    iget-object v0, p0, Ldeg;->d:Lqyi;

    check-cast v0, Laeg;

    invoke-virtual {v0}, Laeg;->a()Lddg;

    move-result-object v5

    iget-object v0, p0, Ldeg;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lteg;

    iget-object v0, p0, Ldeg;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lbfg;

    iget-object v0, p0, Ldeg;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Executor;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v9

    iget-object p0, p0, Ldeg;->h:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lbdg;

    new-instance p0, Lceg;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lceg;-><init>(Lcom/google/android/gms/ads/internal/util/zzg;Lenh;Lidg;Lddg;Lteg;Lbfg;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lbdg;)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ldeg;->a()Lceg;

    move-result-object p0

    return-object p0
.end method
