.class public final Lcze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcze;->a:Lqyi;

    iput-object p2, p0, Lcze;->b:Lqyi;

    iput-object p4, p0, Lcze;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcze;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcze;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Linf;->a()Ldze;

    move-result-object v2

    iget-object p0, p0, Lcze;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfgn;

    new-instance v3, Lbze;

    invoke-direct {v3, v0, v1, v2, p0}, Lbze;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ldze;Lcom/google/android/gms/internal/ads/zzfgn;)V

    return-object v3
.end method
