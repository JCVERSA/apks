.class public final Lk6j;
.super Lfhi;
.source "SourceFile"

# interfaces
.implements Lk0j;


# direct methods
.method public synthetic constructor <init>(Lo6j;)V
    .locals 0

    invoke-static {}, Lp6j;->z()Lp6j;

    move-result-object p1

    invoke-direct {p0, p1}, Lfhi;-><init>(Lkli;)V

    return-void
.end method


# virtual methods
.method public final j(Lcom/google/android/gms/internal/play_billing/zzjz;)Lk6j;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lp6j;

    invoke-static {v0, p1}, Lp6j;->A(Lp6j;Lcom/google/android/gms/internal/play_billing/zzjz;)V

    return-object p0
.end method

.method public final k(Lp5j;)Lk6j;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lp6j;

    invoke-virtual {p1}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lv5j;

    invoke-static {v0, p1}, Lp6j;->B(Lp6j;Lv5j;)V

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lk6j;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object p1, p0, Lfhi;->c:Lkli;

    check-cast p1, Lp6j;

    const-string v0, "ProxyBillingBroadcastReceiver"

    invoke-static {p1, v0}, Lp6j;->C(Lp6j;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lu8j;)Lk6j;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lp6j;

    invoke-static {v0, p1}, Lp6j;->D(Lp6j;Lu8j;)V

    return-object p0
.end method

.method public final n(I)Lk6j;
    .locals 1

    invoke-virtual {p0}, Lfhi;->h()V

    iget-object v0, p0, Lfhi;->c:Lkli;

    check-cast v0, Lp6j;

    invoke-static {v0, p1}, Lp6j;->E(Lp6j;I)V

    return-object p0
.end method
