.class public final Li1h;
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

    iput-object p1, p0, Li1h;->a:Lqyi;

    iput-object p2, p0, Li1h;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/g5;
    .locals 2

    iget-object v0, p0, Li1h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Li1h;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbjg;

    new-instance v1, Lcom/google/android/gms/internal/ads/g5;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/g5;-><init>(Landroid/content/Context;Lbjg;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li1h;->a()Lcom/google/android/gms/internal/ads/g5;

    move-result-object p0

    return-object p0
.end method
