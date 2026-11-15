.class public final Ll4i;
.super Lj4i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lj4i;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lj4i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lk4i;
    .locals 0

    invoke-super {p0, p1}, Lj4i;->c(Ljava/lang/Object;)Lj4i;

    return-object p0
.end method

.method public final g(Ljava/lang/Object;)Ll4i;
    .locals 0

    invoke-super {p0, p1}, Lj4i;->c(Ljava/lang/Object;)Lj4i;

    return-object p0
.end method

.method public final varargs h([Ljava/lang/Object;)Ll4i;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lj4i;->e([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public final i(Ljava/lang/Iterable;)Ll4i;
    .locals 0

    invoke-super {p0, p1}, Lj4i;->d(Ljava/lang/Iterable;)Lk4i;

    return-object p0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/zzfww;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj4i;->c:Z

    iget-object v0, p0, Lj4i;->a:[Ljava/lang/Object;

    iget p0, p0, Lj4i;->b:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzfww;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method
