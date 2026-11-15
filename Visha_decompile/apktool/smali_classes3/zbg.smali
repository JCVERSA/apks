.class public final Lzbg;
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
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzbg;->a:Lqyi;

    iput-object p2, p0, Lzbg;->b:Lqyi;

    iput-object p3, p0, Lzbg;->c:Lqyi;

    iput-object p4, p0, Lzbg;->d:Lqyi;

    iput-object p5, p0, Lzbg;->e:Lqyi;

    iput-object p6, p0, Lzbg;->f:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lzbg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkf;

    iget-object v1, p0, Lzbg;->b:Lqyi;

    check-cast v1, Lazf;

    invoke-virtual {v1}, Lazf;->a()Lpyf;

    move-result-object v1

    iget-object v2, p0, Lzbg;->c:Lqyi;

    check-cast v2, Lz6g;

    invoke-virtual {v2}, Lz6g;->a()Ld6g;

    move-result-object v2

    iget-object v3, p0, Lzbg;->d:Lqyi;

    check-cast v3, Lnbg;

    invoke-virtual {v3}, Lnbg;->a()Llbg;

    move-result-object v3

    iget-object v4, p0, Lzbg;->e:Lqyi;

    check-cast v4, Lrrf;

    invoke-virtual {v4}, Lrrf;->a()Lcom/google/android/gms/internal/ads/i4;

    move-result-object v4

    iget-object p0, p0, Lzbg;->f:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq0h;

    invoke-virtual {v0}, Llkf;->i()Lzsf;

    move-result-object v0

    invoke-virtual {v1}, Lpyf;->l()Lryf;

    move-result-object v1

    invoke-interface {v0, v1}, Lzsf;->k(Lryf;)Lzsf;

    invoke-interface {v0, v2}, Lzsf;->f(Ld6g;)Lzsf;

    invoke-interface {v0, v3}, Lzsf;->d(Llbg;)Lzsf;

    new-instance v1, Lw2h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lw2h;-><init>(Lcom/google/android/gms/internal/ads/zzbdd;)V

    invoke-interface {v0, v1}, Lzsf;->j(Lw2h;)Lzsf;

    new-instance v1, Lqtf;

    invoke-direct {v1, v4, v2}, Lqtf;-><init>(Lcom/google/android/gms/internal/ads/i4;Lj5g;)V

    invoke-interface {v0, v1}, Lzsf;->p(Lqtf;)Lzsf;

    new-instance v1, Lprf;

    invoke-direct {v1, v2}, Lprf;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Lzsf;->c(Lprf;)Lzsf;

    sget-object v1, Lcye;->R3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lb1h;->b(Lq0h;)Lb1h;

    move-result-object p0

    invoke-interface {v0, p0}, Lzsf;->e(Lb1h;)Lzsf;

    :cond_0
    invoke-interface {v0}, Lzsf;->zzk()Latf;

    move-result-object p0

    invoke-virtual {p0}, Latf;->b()Leuf;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
