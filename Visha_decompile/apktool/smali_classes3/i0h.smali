.class public final Li0h;
.super Lf0h;
.source "SourceFile"


# instance fields
.field public final a:Llkf;

.field public final b:Lpyf;

.field public final c:Lw2h;

.field public final d:Ld6g;

.field public final e:Llbg;

.field public final f:Lcom/google/android/gms/internal/ads/i4;

.field public final g:Landroid/view/ViewGroup;

.field public final h:Lj5g;

.field public final i:Lq0h;

.field public final j:Loxg;


# direct methods
.method public constructor <init>(Llkf;Lpyf;Lw2h;Ld6g;Llbg;Lcom/google/android/gms/internal/ads/i4;Landroid/view/ViewGroup;Lj5g;Lq0h;Loxg;)V
    .locals 0

    invoke-direct {p0}, Lf0h;-><init>()V

    iput-object p1, p0, Li0h;->a:Llkf;

    iput-object p2, p0, Li0h;->b:Lpyf;

    iput-object p3, p0, Li0h;->c:Lw2h;

    iput-object p4, p0, Li0h;->d:Ld6g;

    iput-object p5, p0, Li0h;->e:Llbg;

    iput-object p6, p0, Li0h;->f:Lcom/google/android/gms/internal/ads/i4;

    iput-object p7, p0, Li0h;->g:Landroid/view/ViewGroup;

    iput-object p8, p0, Li0h;->h:Lj5g;

    iput-object p9, p0, Li0h;->i:Lq0h;

    iput-object p10, p0, Li0h;->j:Loxg;

    return-void
.end method


# virtual methods
.method public final c(Lenh;Landroid/os/Bundle;Lhmh;Lvmh;)Lim5;
    .locals 1

    iget-object v0, p0, Li0h;->b:Lpyf;

    invoke-virtual {v0, p1}, Lpyf;->k(Lenh;)Lpyf;

    invoke-virtual {v0, p2}, Lpyf;->g(Landroid/os/Bundle;)Lpyf;

    new-instance p1, Liyf;

    iget-object p2, p0, Li0h;->i:Lq0h;

    invoke-direct {p1, p4, p3, p2}, Liyf;-><init>(Lvmh;Lhmh;Lq0h;)V

    invoke-virtual {v0, p1}, Lpyf;->h(Liyf;)Lpyf;

    sget-object p1, Lcye;->O3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Li0h;->j:Loxg;

    invoke-virtual {v0, p1}, Lpyf;->e(Loxg;)Lpyf;

    :cond_0
    iget-object p1, p0, Li0h;->a:Llkf;

    invoke-virtual {p1}, Llkf;->i()Lzsf;

    move-result-object p1

    invoke-virtual {v0}, Lpyf;->l()Lryf;

    move-result-object p2

    invoke-interface {p1, p2}, Lzsf;->k(Lryf;)Lzsf;

    iget-object p2, p0, Li0h;->d:Ld6g;

    invoke-interface {p1, p2}, Lzsf;->f(Ld6g;)Lzsf;

    iget-object p2, p0, Li0h;->c:Lw2h;

    invoke-interface {p1, p2}, Lzsf;->j(Lw2h;)Lzsf;

    iget-object p2, p0, Li0h;->e:Llbg;

    invoke-interface {p1, p2}, Lzsf;->d(Llbg;)Lzsf;

    iget-object p2, p0, Li0h;->f:Lcom/google/android/gms/internal/ads/i4;

    iget-object p3, p0, Li0h;->h:Lj5g;

    new-instance p4, Lqtf;

    invoke-direct {p4, p2, p3}, Lqtf;-><init>(Lcom/google/android/gms/internal/ads/i4;Lj5g;)V

    invoke-interface {p1, p4}, Lzsf;->p(Lqtf;)Lzsf;

    iget-object p0, p0, Li0h;->g:Landroid/view/ViewGroup;

    new-instance p2, Lprf;

    invoke-direct {p2, p0}, Lprf;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {p1, p2}, Lzsf;->c(Lprf;)Lzsf;

    invoke-interface {p1}, Lzsf;->zzk()Latf;

    move-result-object p0

    invoke-virtual {p0}, Latf;->c()Lgvf;

    move-result-object p0

    invoke-virtual {p0}, Lgvf;->i()Lim5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgvf;->h(Lim5;)Lim5;

    move-result-object p0

    return-object p0
.end method
