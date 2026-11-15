.class public final Luxg;
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

.field public final i:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luxg;->a:Lqyi;

    iput-object p2, p0, Luxg;->b:Lqyi;

    iput-object p3, p0, Luxg;->c:Lqyi;

    iput-object p4, p0, Luxg;->d:Lqyi;

    iput-object p5, p0, Luxg;->e:Lqyi;

    iput-object p6, p0, Luxg;->f:Lqyi;

    iput-object p8, p0, Luxg;->g:Lqyi;

    iput-object p9, p0, Luxg;->h:Lqyi;

    iput-object p10, p0, Luxg;->i:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Luxg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lirf;

    iget-object v0, p0, Luxg;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v0, p0, Luxg;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Luxg;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lujg;

    iget-object v0, p0, Luxg;->e:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v6

    iget-object v0, p0, Luxg;->f:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v7

    new-instance v8, Lq3f;

    invoke-direct {v8}, Lq3f;-><init>()V

    iget-object v0, p0, Luxg;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v0, p0, Luxg;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Llmg;

    iget-object p0, p0, Luxg;->i:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lsmg;

    new-instance p0, Ltxg;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Ltxg;-><init>(Lirf;Landroid/content/Context;Ljava/util/concurrent/Executor;Lujg;Lenh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lq3f;Lcom/google/android/gms/internal/ads/zzebe;Llmg;Lsmg;)V

    return-object p0
.end method
