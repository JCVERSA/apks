.class public final Lyzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyzg;->a:Lqyi;

    iput-object p2, p0, Lyzg;->b:Lqyi;

    iput-object p3, p0, Lyzg;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lyzg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lyzg;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lubg;

    iget-object p0, p0, Lyzg;->c:Lqyi;

    check-cast p0, Lklf;

    invoke-virtual {p0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/internal/ads/f5;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/gms/internal/ads/f5;-><init>(Landroid/content/Context;Lubg;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v2
.end method
