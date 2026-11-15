.class public final Lfvh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Llwh;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/ads/zzfkc;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Llwh;

    invoke-direct {p3, p1}, Llwh;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lfvh;->a:Llwh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfvh;->b:Ljava/lang/String;

    iput-object p2, p0, Lfvh;->c:Lcom/google/android/gms/internal/ads/zzfkc;

    const-string p1, "Ad overlay"

    iput-object p1, p0, Lfvh;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzfkc;
    .locals 0

    iget-object p0, p0, Lfvh;->c:Lcom/google/android/gms/internal/ads/zzfkc;

    return-object p0
.end method

.method public final b()Llwh;
    .locals 0

    iget-object p0, p0, Lfvh;->a:Llwh;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfvh;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfvh;->b:Ljava/lang/String;

    return-object p0
.end method
