.class public final Lgzg;
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

    iput-object p1, p0, Lgzg;->a:Lqyi;

    iput-object p2, p0, Lgzg;->b:Lqyi;

    iput-object p3, p0, Lgzg;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lgzg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lgzg;->b:Lqyi;

    check-cast v1, Lklf;

    invoke-virtual {v1}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    iget-object p0, p0, Lgzg;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyag;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v2

    new-instance v3, Lfzg;

    invoke-direct {v3, v0, v1, p0, v2}, Lfzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lyag;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method
