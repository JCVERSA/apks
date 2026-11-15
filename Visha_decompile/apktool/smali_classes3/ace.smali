.class public final Lace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:Lc9e;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lbce;

    invoke-direct {p1}, Lbce;-><init>()V

    iput-object p1, p0, Lace;->a:Lc9e;

    return-void
.end method


# virtual methods
.method public final b(JJ)V
    .locals 0

    iget-object p0, p0, Lace;->a:Lc9e;

    invoke-interface {p0, p1, p2, p3, p4}, Lc9e;->b(JJ)V

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 0

    iget-object p0, p0, Lace;->a:Lc9e;

    invoke-interface {p0, p1, p2}, Lc9e;->d(Ld9e;Ly9e;)I

    move-result p0

    return p0
.end method

.method public final e(Ld9e;)Z
    .locals 0

    iget-object p0, p0, Lace;->a:Lc9e;

    invoke-interface {p0, p1}, Lc9e;->e(Ld9e;)Z

    move-result p0

    return p0
.end method

.method public final f(Lf9e;)V
    .locals 0

    iget-object p0, p0, Lace;->a:Lc9e;

    invoke-interface {p0, p1}, Lc9e;->f(Lf9e;)V

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
