.class public final Lbsh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lbsh;->a:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfgq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfgn;-><init>(Lcom/google/android/gms/internal/ads/zzfgq;)V

    return-object v0
.end method
