.class public final Lvlg;
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

    iput-object p1, p0, Lvlg;->a:Lqyi;

    iput-object p2, p0, Lvlg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/q4;
    .locals 2

    iget-object v0, p0, Lvlg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/o0;

    iget-object p0, p0, Lvlg;->b:Lqyi;

    check-cast p0, Llyi;

    invoke-virtual {p0}, Llyi;->c()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/ads/q4;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/q4;-><init>(Lcom/google/android/gms/internal/ads/o0;Ljava/util/Map;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lvlg;->a()Lcom/google/android/gms/internal/ads/q4;

    move-result-object p0

    return-object p0
.end method
