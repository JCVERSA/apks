.class public abstract Lfhi;
.super Lhkh;
.source "SourceFile"


# instance fields
.field public final b:Lkli;

.field public c:Lkli;


# direct methods
.method public constructor <init>(Lkli;)V
    .locals 1

    invoke-direct {p0}, Lhkh;-><init>()V

    iput-object p1, p0, Lfhi;->b:Lkli;

    invoke-virtual {p1}, Lkli;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lkli;->r()Lkli;

    move-result-object p1

    iput-object p1, p0, Lfhi;->c:Lkli;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default instance must be immutable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lc1j;->a()Lc1j;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc1j;->b(Ljava/lang/Class;)Lu1j;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lu1j;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lfhi;->d()Lfhi;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lfhi;
    .locals 3

    iget-object v0, p0, Lfhi;->b:Lkli;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lkli;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfhi;

    invoke-virtual {p0}, Lfhi;->g()Lkli;

    move-result-object p0

    iput-object p0, v0, Lfhi;->c:Lkli;

    return-object v0
.end method

.method public final e(Lkli;)Lfhi;
    .locals 2

    iget-object v0, p0, Lfhi;->b:Lkli;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lkli;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfhi;->c:Lkli;

    invoke-virtual {v0}, Lkli;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfhi;->i()V

    :cond_0
    iget-object v0, p0, Lfhi;->c:Lkli;

    invoke-static {v0, p1}, Lfhi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f()Lkli;
    .locals 1

    invoke-virtual {p0}, Lfhi;->g()Lkli;

    move-result-object p0

    invoke-virtual {p0}, Lkli;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzip;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzip;-><init>(Lg0j;)V

    throw v0
.end method

.method public g()Lkli;
    .locals 1

    iget-object v0, p0, Lfhi;->c:Lkli;

    invoke-virtual {v0}, Lkli;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lfhi;->c:Lkli;

    return-object p0

    :cond_0
    iget-object v0, p0, Lfhi;->c:Lkli;

    invoke-virtual {v0}, Lkli;->x()V

    iget-object p0, p0, Lfhi;->c:Lkli;

    return-object p0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lfhi;->c:Lkli;

    invoke-virtual {v0}, Lkli;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfhi;->i()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lfhi;->b:Lkli;

    invoke-virtual {v0}, Lkli;->r()Lkli;

    move-result-object v0

    iget-object v1, p0, Lfhi;->c:Lkli;

    invoke-static {v0, v1}, Lfhi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lfhi;->c:Lkli;

    return-void
.end method

.method public bridge synthetic zzk()Lg0j;
    .locals 0

    invoke-virtual {p0}, Lfhi;->g()Lkli;

    move-result-object p0

    return-object p0
.end method
