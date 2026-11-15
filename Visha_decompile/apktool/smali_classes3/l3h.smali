.class public final Ll3h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3h;->a:Lqyi;

    iput-object p2, p0, Ll3h;->b:Lqyi;

    iput-object p3, p0, Ll3h;->c:Lqyi;

    iput-object p4, p0, Ll3h;->d:Lqyi;

    iput-object p5, p0, Ll3h;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Ll3h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Ll3h;->b:Lqyi;

    check-cast v0, Lmbg;

    invoke-virtual {v0}, Lmbg;->a()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v3

    iget-object v0, p0, Ll3h;->c:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v4

    iget-object v0, p0, Ll3h;->d:Lqyi;

    check-cast v0, Lfsf;

    invoke-virtual {v0}, Lfsf;->a()Lsrf;

    move-result-object v5

    iget-object p0, p0, Ll3h;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lsmg;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzeis;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeis;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzbk;Lenh;Lsrf;Lsmg;)V

    return-object p0
.end method
