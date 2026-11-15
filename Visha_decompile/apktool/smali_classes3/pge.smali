.class public final Lpge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:Lmae;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmae;

    const v1, 0x8950

    const/4 v2, 0x2

    const-string v3, "image/png"

    invoke-direct {v0, v1, v2, v3}, Lmae;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lpge;->a:Lmae;

    return-void
.end method


# virtual methods
.method public final b(JJ)V
    .locals 0

    iget-object p0, p0, Lpge;->a:Lmae;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmae;->b(JJ)V

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 0

    iget-object p0, p0, Lpge;->a:Lmae;

    invoke-virtual {p0, p1, p2}, Lmae;->d(Ld9e;Ly9e;)I

    move-result p0

    return p0
.end method

.method public final e(Ld9e;)Z
    .locals 0

    iget-object p0, p0, Lpge;->a:Lmae;

    invoke-virtual {p0, p1}, Lmae;->e(Ld9e;)Z

    move-result p0

    return p0
.end method

.method public final f(Lf9e;)V
    .locals 0

    iget-object p0, p0, Lpge;->a:Lmae;

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
