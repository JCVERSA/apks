.class public final Lbig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lhmh;

.field public final synthetic b:Lkmh;

.field public final synthetic c:Lwpf;

.field public final synthetic d:Lhig;


# direct methods
.method public constructor <init>(Lhig;Lhmh;Lkmh;Lwpf;)V
    .locals 0

    iput-object p2, p0, Lbig;->a:Lhmh;

    iput-object p3, p0, Lbig;->b:Lkmh;

    iput-object p4, p0, Lbig;->c:Lwpf;

    iput-object p1, p0, Lbig;->d:Lhig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lejf;

    iget-object v0, p0, Lbig;->a:Lhmh;

    iget-object v1, p0, Lbig;->b:Lkmh;

    invoke-interface {p1, v0, v1}, Lejf;->zzW(Lhmh;Lkmh;)V

    invoke-interface {p1}, Lejf;->zzN()Likf;

    move-result-object p1

    sget-object v1, Lcye;->ka:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lbig;->c:Lwpf;

    iget-object p0, p0, Lbig;->d:Lhig;

    invoke-static {p0}, Lhig;->d(Lhig;)Ldwg;

    move-result-object v2

    invoke-static {p0}, Lhig;->e(Lhig;)Lwth;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Likf;->i(Lwpf;Ldwg;Lwth;)V

    invoke-static {p0}, Lhig;->d(Lhig;)Ldwg;

    move-result-object v2

    invoke-static {p0}, Lhig;->c(Lhig;)Lsmg;

    move-result-object p0

    invoke-interface {p1, v1, v2, p0}, Likf;->f(Lwpf;Ldwg;Lsmg;)V

    :cond_0
    sget-object p0, Lcye;->bd:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Likf;->x(Lhmh;)V

    :cond_1
    return-void
.end method
