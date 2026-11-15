.class public final Lcom/google/android/gms/common/api/internal/q;
.super Ly0e;
.source "SourceFile"


# instance fields
.field public final c:Lp0e;


# direct methods
.method public constructor <init>(Lp0e;Lzda;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Ly0e;-><init>(ILzda;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/q;->c:Lp0e;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lozd;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/m;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/q;->c:Lp0e;

    iget-object p0, p0, Lp0e;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/f;->f()Z

    move-result p0

    return p0
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/m;)[Lcom/google/android/gms/common/Feature;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/q;->c:Lp0e;

    iget-object p0, p0, Lp0e;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/f;->c()[Lcom/google/android/gms/common/Feature;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/m;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q;->c:Lp0e;

    iget-object v0, v0, Lp0e;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/m;->s()Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    iget-object v2, p0, Ly0e;->b:Lzda;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/f;->d(Lcom/google/android/gms/common/api/a$b;Lzda;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q;->c:Lp0e;

    iget-object v0, v0, Lp0e;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/f;->b()Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/m;->u()Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/q;->c:Lp0e;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
