.class public final Ltvg;
.super Lpwg;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/google/android/gms/ads/internal/overlay/zzm;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpwg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Lpwg;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Ltvg;->a:Landroid/app/Activity;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null activity"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lcom/google/android/gms/ads/internal/overlay/zzm;)Lpwg;
    .locals 0

    iput-object p1, p0, Ltvg;->b:Lcom/google/android/gms/ads/internal/overlay/zzm;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lpwg;
    .locals 0

    iput-object p1, p0, Ltvg;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lpwg;
    .locals 0

    iput-object p1, p0, Ltvg;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Lqwg;
    .locals 7

    iget-object v1, p0, Ltvg;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    new-instance v6, Lvvg;

    iget-object v2, p0, Ltvg;->b:Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget-object v3, p0, Ltvg;->c:Ljava/lang/String;

    iget-object v4, p0, Ltvg;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lvvg;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zzm;Ljava/lang/String;Ljava/lang/String;Luvg;)V

    return-object v6

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required properties: activity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
