.class public final Lwcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liue;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lzcg;


# direct methods
.method public constructor <init>(Lzcg;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lwcg;->b:Ljava/lang/String;

    iput-object p1, p0, Lwcg;->c:Lzcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdn(Lhue;)V
    .locals 4

    sget-object v0, Lcye;->V1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p1, Lhue;->j:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lwcg;->c:Lzcg;

    invoke-static {p1}, Lzcg;->R(Lzcg;)Ldfg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lzcg;->U(Lzcg;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lwcg;->b:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lzcg;->R(Lzcg;)Ldfg;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lzcg;->R(Lzcg;)Ldfg;

    move-result-object v0

    invoke-interface {v0}, Ldfg;->zzf()Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lzcg;->R(Lzcg;)Ldfg;

    move-result-object v2

    invoke-interface {v2}, Ldfg;->zzl()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Lzcg;->R(Lzcg;)Ldfg;

    move-result-object v3

    invoke-interface {v3}, Ldfg;->zzm()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lzcg;->j(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-boolean p1, p1, Lhue;->j:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lwcg;->c:Lzcg;

    invoke-static {p1}, Lzcg;->R(Lzcg;)Ldfg;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lzcg;->U(Lzcg;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lwcg;->b:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lzcg;->R(Lzcg;)Ldfg;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lzcg;->R(Lzcg;)Ldfg;

    move-result-object p0

    invoke-interface {p0}, Ldfg;->zzf()Landroid/view/View;

    move-result-object p0

    invoke-static {p1}, Lzcg;->R(Lzcg;)Ldfg;

    move-result-object v0

    invoke-interface {v0}, Ldfg;->zzl()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lzcg;->R(Lzcg;)Ldfg;

    move-result-object v2

    invoke-interface {v2}, Ldfg;->zzm()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, p0, v0, v2, v1}, Lzcg;->j(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_4
    :goto_1
    return-void
.end method
