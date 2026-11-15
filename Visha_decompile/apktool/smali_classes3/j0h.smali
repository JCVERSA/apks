.class public final Lj0h;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0h;->a:Lqyi;

    iput-object p2, p0, Lj0h;->b:Lqyi;

    iput-object p3, p0, Lj0h;->c:Lqyi;

    iput-object p4, p0, Lj0h;->d:Lqyi;

    iput-object p5, p0, Lj0h;->e:Lqyi;

    iput-object p6, p0, Lj0h;->f:Lqyi;

    iput-object p7, p0, Lj0h;->g:Lqyi;

    iput-object p8, p0, Lj0h;->h:Lqyi;

    iput-object p9, p0, Lj0h;->i:Lqyi;

    iput-object p10, p0, Lj0h;->j:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Li0h;
    .locals 12

    iget-object v0, p0, Lj0h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Llkf;

    iget-object v0, p0, Lj0h;->b:Lqyi;

    check-cast v0, Lazf;

    invoke-virtual {v0}, Lazf;->a()Lpyf;

    move-result-object v3

    iget-object v0, p0, Lj0h;->c:Lqyi;

    check-cast v0, Ly2h;

    invoke-virtual {v0}, Ly2h;->a()Lw2h;

    move-result-object v4

    iget-object v0, p0, Lj0h;->d:Lqyi;

    check-cast v0, Lz6g;

    invoke-virtual {v0}, Lz6g;->a()Ld6g;

    move-result-object v5

    iget-object v0, p0, Lj0h;->e:Lqyi;

    check-cast v0, Lnbg;

    invoke-virtual {v0}, Lnbg;->a()Llbg;

    move-result-object v6

    iget-object v0, p0, Lj0h;->f:Lqyi;

    check-cast v0, Lwtf;

    invoke-virtual {v0}, Lwtf;->a()Lcom/google/android/gms/internal/ads/i4;

    move-result-object v7

    iget-object v0, p0, Lj0h;->g:Lqyi;

    check-cast v0, Lqrf;

    invoke-virtual {v0}, Lqrf;->a()Landroid/view/ViewGroup;

    move-result-object v8

    iget-object v0, p0, Lj0h;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lj5g;

    iget-object v0, p0, Lj0h;->i:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lq0h;

    iget-object p0, p0, Lj0h;->j:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Loxg;

    new-instance p0, Li0h;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Li0h;-><init>(Llkf;Lpyf;Lw2h;Ld6g;Llbg;Lcom/google/android/gms/internal/ads/i4;Landroid/view/ViewGroup;Lj5g;Lq0h;Loxg;)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lj0h;->a()Li0h;

    move-result-object p0

    return-object p0
.end method
