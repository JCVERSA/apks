.class public final Layg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layg;->a:Lqyi;

    iput-object p2, p0, Layg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/c5;
    .locals 2

    iget-object v0, p0, Layg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Layg;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lirf;

    new-instance v1, Lcom/google/android/gms/internal/ads/c5;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/c5;-><init>(Landroid/content/Context;Lirf;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Layg;->a()Lcom/google/android/gms/internal/ads/c5;

    move-result-object p0

    return-object p0
.end method
