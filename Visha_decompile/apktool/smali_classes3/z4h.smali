.class public final Lz4h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsdg;

.field public final b:Lk4h;

.field public final c:Lnzf;


# direct methods
.method public constructor <init>(Lsdg;Lsmg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4h;->a:Lsdg;

    new-instance v0, Lk4h;

    invoke-direct {v0, p2}, Lk4h;-><init>(Lsmg;)V

    iput-object v0, p0, Lz4h;->b:Lk4h;

    invoke-virtual {p1}, Lsdg;->g()Lcom/google/android/gms/internal/ads/zzbmc;

    move-result-object p1

    new-instance p2, Ly4h;

    invoke-direct {p2, v0, p1}, Ly4h;-><init>(Lk4h;Lcom/google/android/gms/internal/ads/zzbmc;)V

    iput-object p2, p0, Lz4h;->c:Lnzf;

    return-void
.end method


# virtual methods
.method public final a()Lnzf;
    .locals 0

    iget-object p0, p0, Lz4h;->c:Lnzf;

    return-object p0
.end method

.method public final b()Lb1g;
    .locals 0

    iget-object p0, p0, Lz4h;->b:Lk4h;

    return-object p0
.end method

.method public final c()Llbg;
    .locals 2

    new-instance v0, Llbg;

    iget-object v1, p0, Lz4h;->b:Lk4h;

    iget-object p0, p0, Lz4h;->a:Lsdg;

    invoke-virtual {v1}, Lk4h;->k()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Llbg;-><init>(Lsdg;Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-object v0
.end method

.method public final d()Lk4h;
    .locals 0

    iget-object p0, p0, Lz4h;->b:Lk4h;

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 0

    iget-object p0, p0, Lz4h;->b:Lk4h;

    invoke-virtual {p0, p1}, Lk4h;->o(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-void
.end method
