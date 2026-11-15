.class public final Lnbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:Lu4h;

.field public final b:Lmae;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu4h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    iput-object v0, p0, Lnbe;->a:Lu4h;

    new-instance v0, Lmae;

    const/4 v1, -0x1

    const-string v2, "image/avif"

    invoke-direct {v0, v1, v1, v2}, Lmae;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lnbe;->b:Lmae;

    return-void
.end method


# virtual methods
.method public final a(Ld9e;I)Z
    .locals 3

    iget-object p0, p0, Lnbe;->a:Lu4h;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lu4h;->i(I)V

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v1

    check-cast p1, Lm8e;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Lm8e;->e([BIIZ)Z

    invoke-virtual {p0}, Lu4h;->O()J

    move-result-wide p0

    int-to-long v0, p2

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public final b(JJ)V
    .locals 0

    iget-object p0, p0, Lnbe;->b:Lmae;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmae;->b(JJ)V

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 0

    iget-object p0, p0, Lnbe;->b:Lmae;

    invoke-virtual {p0, p1, p2}, Lmae;->d(Ld9e;Ly9e;)I

    move-result p0

    return p0
.end method

.method public final e(Ld9e;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lm8e;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lm8e;->k(IZ)Z

    const v0, 0x66747970

    invoke-virtual {p0, p1, v0}, Lnbe;->a(Ld9e;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x61766966

    invoke-virtual {p0, p1, v0}, Lnbe;->a(Ld9e;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public final f(Lf9e;)V
    .locals 0

    iget-object p0, p0, Lnbe;->b:Lmae;

    invoke-virtual {p0, p1}, Lmae;->f(Lf9e;)V

    return-void
.end method

.method public final synthetic zzc()Lc9e;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method
