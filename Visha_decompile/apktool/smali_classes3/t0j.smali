.class public final Lt0j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1j;


# instance fields
.field public final a:Lg0j;

.field public final b:Lg3j;

.field public final c:Z

.field public final d:Ls8i;


# direct methods
.method public constructor <init>(Lg3j;Ls8i;Lg0j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0j;->b:Lg3j;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lt0j;->c:Z

    iput-object p2, p0, Lt0j;->d:Ls8i;

    iput-object p3, p0, Lt0j;->a:Lg0j;

    return-void
.end method

.method public static g(Lg3j;Ls8i;Lg0j;)Lt0j;
    .locals 1

    new-instance v0, Lt0j;

    invoke-direct {v0, p0, p1, p2}, Lt0j;-><init>(Lg3j;Ls8i;Lg0j;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lkli;

    iget-object p0, p0, Lkli;->zzc:Li3j;

    invoke-virtual {p0}, Li3j;->h()V

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lt0j;->b:Lg3j;

    invoke-static {v0, p1, p2}, Ly1j;->u(Lg3j;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lt0j;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lt0j;->d:Ls8i;

    invoke-static {p0, p1, p2}, Ly1j;->t(Ls8i;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;[BIILqoh;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lkli;

    iget-object p2, p0, Lkli;->zzc:Li3j;

    invoke-static {}, Li3j;->c()Li3j;

    move-result-object p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Li3j;->f()Li3j;

    move-result-object p2

    iput-object p2, p0, Lkli;->zzc:Li3j;

    :goto_0
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    move-object v0, p1

    check-cast v0, Lkli;

    iget-object v0, v0, Lkli;->zzc:Li3j;

    check-cast p2, Lkli;

    iget-object p2, p2, Lkli;->zzc:Li3j;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lt0j;->c:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Ljava/lang/Object;La5j;)V
    .locals 0

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 1

    move-object v0, p1

    check-cast v0, Lkli;

    iget-object v0, v0, Lkli;->zzc:Li3j;

    invoke-virtual {v0}, Li3j;->b()I

    move-result v0

    iget-boolean p0, p0, Lt0j;->c:Z

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 1

    move-object v0, p1

    check-cast v0, Lkli;

    iget-object v0, v0, Lkli;->zzc:Li3j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Lt0j;->c:Z

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lt0j;->a:Lg0j;

    instance-of v0, p0, Lkli;

    if-eqz v0, :cond_0

    check-cast p0, Lkli;

    invoke-virtual {p0}, Lkli;->r()Lkli;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lg0j;->zzw()Ld0j;

    move-result-object p0

    invoke-interface {p0}, Ld0j;->zzk()Lg0j;

    move-result-object p0

    return-object p0
.end method
