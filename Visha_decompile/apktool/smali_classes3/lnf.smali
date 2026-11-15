.class public final Llnf;
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

.field public final j:Lqyi;

.field public final k:Lqyi;

.field public final l:Lqyi;

.field public final m:Lqyi;

.field public final n:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llnf;->a:Lqyi;

    iput-object p2, p0, Llnf;->b:Lqyi;

    iput-object p3, p0, Llnf;->c:Lqyi;

    iput-object p4, p0, Llnf;->d:Lqyi;

    iput-object p5, p0, Llnf;->e:Lqyi;

    iput-object p6, p0, Llnf;->f:Lqyi;

    iput-object p7, p0, Llnf;->g:Lqyi;

    iput-object p8, p0, Llnf;->h:Lqyi;

    iput-object p9, p0, Llnf;->i:Lqyi;

    iput-object p10, p0, Llnf;->j:Lqyi;

    iput-object p11, p0, Llnf;->k:Lqyi;

    iput-object p12, p0, Llnf;->l:Lqyi;

    iput-object p13, p0, Llnf;->m:Lqyi;

    iput-object p14, p0, Llnf;->n:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Llnf;->a:Lqyi;

    check-cast v1, Lskf;

    invoke-virtual {v1}, Lskf;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Llnf;->b:Lqyi;

    check-cast v1, Lklf;

    invoke-virtual {v1}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v4

    iget-object v1, v0, Llnf;->c:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljkg;

    iget-object v1, v0, Llnf;->d:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lmxg;

    iget-object v1, v0, Llnf;->e:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lh3h;

    iget-object v1, v0, Llnf;->f:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/ads/t4;

    iget-object v1, v0, Llnf;->g:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lrdf;

    iget-object v1, v0, Llnf;->h:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Llkg;

    iget-object v1, v0, Llnf;->i:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lzog;

    iget-object v1, v0, Llnf;->j:Lqyi;

    check-cast v1, Lukf;

    invoke-virtual {v1}, Lukf;->a()Lx0f;

    move-result-object v12

    iget-object v1, v0, Llnf;->k:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/android/gms/internal/ads/zzfgq;

    iget-object v1, v0, Llnf;->l:Lqyi;

    check-cast v1, Lvnf;

    invoke-virtual {v1}, Lvnf;->a()Lcoh;

    move-result-object v14

    iget-object v1, v0, Llnf;->m:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lqwf;

    iget-object v0, v0, Llnf;->n:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lsmg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjl;

    move-object v2, v0

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/ads/zzcjl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljkg;Lmxg;Lh3h;Lcom/google/android/gms/internal/ads/t4;Lrdf;Llkg;Lzog;Lx0f;Lcom/google/android/gms/internal/ads/zzfgq;Lcoh;Lqwf;Lsmg;)V

    return-object v0
.end method
