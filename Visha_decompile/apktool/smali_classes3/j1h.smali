.class public final Lj1h;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1h;->a:Lqyi;

    iput-object p2, p0, Lj1h;->b:Lqyi;

    iput-object p3, p0, Lj1h;->c:Lqyi;

    iput-object p4, p0, Lj1h;->d:Lqyi;

    iput-object p5, p0, Lj1h;->e:Lqyi;

    iput-object p6, p0, Lj1h;->f:Lqyi;

    iput-object p7, p0, Lj1h;->g:Lqyi;

    iput-object p8, p0, Lj1h;->h:Lqyi;

    iput-object p9, p0, Lj1h;->i:Lqyi;

    iput-object p10, p0, Lj1h;->j:Lqyi;

    iput-object p11, p0, Lj1h;->k:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lj1h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lizf;

    iget-object v0, p0, Lj1h;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lr8g;

    iget-object v0, p0, Lj1h;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lb0g;

    iget-object v0, p0, Lj1h;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lu0g;

    iget-object v0, p0, Lj1h;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lz0g;

    iget-object v0, p0, Lj1h;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lwzf;

    iget-object v0, p0, Lj1h;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lr4g;

    iget-object v0, p0, Lj1h;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lo9g;

    iget-object v0, p0, Lj1h;->i:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lw1g;

    iget-object v0, p0, Lj1h;->j:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lc9g;

    iget-object p0, p0, Lj1h;->k:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v12, p0

    check-cast v12, Ln4g;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzegn;

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zzegn;-><init>(Lizf;Lr8g;Lb0g;Lu0g;Lz0g;Lwzf;Lr4g;Lo9g;Lw1g;Lc9g;Ln4g;)V

    return-object p0
.end method
