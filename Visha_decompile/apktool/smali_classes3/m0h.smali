.class public final Lm0h;
.super Lf0h;
.source "SourceFile"


# instance fields
.field public final a:Llkf;

.field public final b:Lpyf;

.field public final c:Ld6g;

.field public final d:Lq0h;

.field public final e:Lwmh;

.field public final f:Loxg;


# direct methods
.method public constructor <init>(Llkf;Lpyf;Ld6g;Lwmh;Lq0h;Loxg;)V
    .locals 0

    invoke-direct {p0}, Lf0h;-><init>()V

    iput-object p1, p0, Lm0h;->a:Llkf;

    iput-object p2, p0, Lm0h;->b:Lpyf;

    iput-object p3, p0, Lm0h;->c:Ld6g;

    iput-object p4, p0, Lm0h;->e:Lwmh;

    iput-object p5, p0, Lm0h;->d:Lq0h;

    iput-object p6, p0, Lm0h;->f:Loxg;

    return-void
.end method


# virtual methods
.method public final c(Lenh;Landroid/os/Bundle;Lhmh;Lvmh;)Lim5;
    .locals 1

    iget-object v0, p0, Lm0h;->b:Lpyf;

    invoke-virtual {v0, p1}, Lpyf;->k(Lenh;)Lpyf;

    invoke-virtual {v0, p2}, Lpyf;->g(Landroid/os/Bundle;)Lpyf;

    new-instance p1, Liyf;

    iget-object p2, p0, Lm0h;->d:Lq0h;

    invoke-direct {p1, p4, p3, p2}, Liyf;-><init>(Lvmh;Lhmh;Lq0h;)V

    invoke-virtual {v0, p1}, Lpyf;->h(Liyf;)Lpyf;

    sget-object p1, Lcye;->N3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lm0h;->e:Lwmh;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lpyf;->j(Lwmh;)Lpyf;

    :cond_0
    sget-object p1, Lcye;->O3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lm0h;->f:Loxg;

    invoke-virtual {v0, p1}, Lpyf;->e(Loxg;)Lpyf;

    :cond_1
    iget-object p1, p0, Lm0h;->a:Llkf;

    invoke-virtual {p1}, Llkf;->m()Lajg;

    move-result-object p1

    invoke-virtual {v0}, Lpyf;->l()Lryf;

    move-result-object p2

    invoke-interface {p1, p2}, Lajg;->b(Lryf;)Lajg;

    iget-object p0, p0, Lm0h;->c:Ld6g;

    invoke-interface {p1, p0}, Lajg;->a(Ld6g;)Lajg;

    invoke-interface {p1}, Lajg;->zze()Lbjg;

    move-result-object p0

    invoke-virtual {p0}, Lbjg;->zzb()Lgvf;

    move-result-object p0

    invoke-virtual {p0}, Lgvf;->i()Lim5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgvf;->h(Lim5;)Lim5;

    move-result-object p0

    return-object p0
.end method
