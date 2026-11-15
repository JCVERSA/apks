.class public final Lmrg;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmrg;->a:Lqyi;

    iput-object p2, p0, Lmrg;->b:Lqyi;

    iput-object p3, p0, Lmrg;->c:Lqyi;

    iput-object p5, p0, Lmrg;->d:Lqyi;

    iput-object p6, p0, Lmrg;->e:Lqyi;

    iput-object p7, p0, Lmrg;->f:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lmrg;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lmrg;->b:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v3

    iget-object v0, p0, Lmrg;->c:Lqyi;

    check-cast v0, Lkqg;

    invoke-virtual {v0}, Lkqg;->a()Ljqg;

    move-result-object v4

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v5

    iget-object v0, p0, Lmrg;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lmrg;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lpug;

    iget-object p0, p0, Lmrg;->f:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfgn;

    new-instance p0, Llrg;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Llrg;-><init>(Landroid/content/Context;Lenh;Ljqg;Lg8i;Ljava/util/concurrent/ScheduledExecutorService;Lpug;Lcom/google/android/gms/internal/ads/zzfgn;)V

    return-object p0
.end method
