.class public Lcom/google/android/gms/location/a;
.super Lcom/google/android/gms/common/api/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lno5;->a:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->w6:Lcom/google/android/gms/common/api/a$d$a;

    new-instance v2, Ltd;

    invoke-direct {v2}, Ltd;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lqx9;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/internal/location/zzba;Lio5;Landroid/os/Looper;Lfke;I)Lxda;
    .locals 9

    invoke-static {p3}, La3f;->a(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object p3

    const-class v0, Lio5;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/common/api/internal/e;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/d;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/location/b;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/location/b;-><init>(Lcom/google/android/gms/location/a;Lcom/google/android/gms/common/api/internal/d;)V

    new-instance v8, Lfae;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lfae;-><init>(Lcom/google/android/gms/location/a;Lbme;Lio5;Lfke;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/d;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/g;->a()Lcom/google/android/gms/common/api/internal/g$a;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/common/api/internal/g$a;->b(Las8;)Lcom/google/android/gms/common/api/internal/g$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/g$a;->d(Las8;)Lcom/google/android/gms/common/api/internal/g$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/common/api/internal/g$a;->e(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/g$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/common/api/internal/g$a;->c(I)Lcom/google/android/gms/common/api/internal/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/g$a;->a()Lcom/google/android/gms/common/api/internal/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/b;->h(Lcom/google/android/gms/common/api/internal/g;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public v()Lxda;
    .locals 2

    invoke-static {}, Lyda;->a()Lyda$a;

    move-result-object v0

    new-instance v1, Linj;

    invoke-direct {v1, p0}, Linj;-><init>(Lcom/google/android/gms/location/a;)V

    invoke-virtual {v0, v1}, Lyda$a;->b(Las8;)Lyda$a;

    move-result-object v0

    const/16 v1, 0x96e

    invoke-virtual {v0, v1}, Lyda$a;->e(I)Lyda$a;

    move-result-object v0

    invoke-virtual {v0}, Lyda$a;->a()Lyda;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/b;->g(Lyda;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public w(Lio5;)Lxda;
    .locals 1

    const-class v0, Lio5;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/e;->b(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/b;->i(Lcom/google/android/gms/common/api/internal/d$a;)Lxda;

    move-result-object p0

    invoke-static {p0}, Ljea;->c(Lxda;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public x(Lcom/google/android/gms/location/LocationRequest;Lio5;Landroid/os/Looper;)Lxda;
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/location/zzba;->zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/location/zzba;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x984

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/a;->A(Lcom/google/android/gms/internal/location/zzba;Lio5;Landroid/os/Looper;Lfke;I)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic y(Lbme;Lio5;Lfke;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/d;Lzue;Lzda;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/zzam;

    new-instance v1, Lipj;

    invoke-direct {v1, p0, p1, p2, p3}, Lipj;-><init>(Lcom/google/android/gms/location/a;Lbme;Lio5;Lfke;)V

    invoke-direct {v0, p7, v1}, Lcom/google/android/gms/location/zzam;-><init>(Lzda;Lfke;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/location/zzba;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzba;

    invoke-virtual {p6, p4, p5, v0}, Lzue;->M(Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/internal/location/zzai;)V

    return-void
.end method

.method public final synthetic z(Lzue;Lzda;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lzue;->O(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lzda;->c(Ljava/lang/Object;)V

    return-void
.end method
