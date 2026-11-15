.class public final Lcom/google/android/gms/common/api/internal/r;
.super Ly0e;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/common/api/internal/d$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d$a;Lzda;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Ly0e;-><init>(ILzda;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/r;->c:Lcom/google/android/gms/common/api/internal/d$a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lozd;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/m;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/m;->u()Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/r;->c:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp0e;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lp0e;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/f;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/m;)[Lcom/google/android/gms/common/Feature;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/m;->u()Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/r;->c:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp0e;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lp0e;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/f;->c()[Lcom/google/android/gms/common/Feature;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/m;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/m;->u()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r;->c:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp0e;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/m;->s()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    iget-object p0, p0, Ly0e;->b:Lzda;

    iget-object v1, v0, Lp0e;->b:Lcom/google/android/gms/common/api/internal/h;

    invoke-virtual {v1, p1, p0}, Lcom/google/android/gms/common/api/internal/h;->b(Lcom/google/android/gms/common/api/a$b;Lzda;)V

    iget-object p0, v0, Lp0e;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/f;->a()V

    return-void

    :cond_0
    iget-object p0, p0, Ly0e;->b:Lzda;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lzda;->e(Ljava/lang/Object;)Z

    return-void
.end method
