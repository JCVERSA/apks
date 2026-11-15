.class public final Lkme;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lxle;

.field public final c:Lcom/google/android/gms/internal/ads/zzaps;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaps;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkme;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lkme;->a:Ljava/lang/Object;

    iput-object v0, p0, Lkme;->b:Lxle;

    iput-object p1, p0, Lkme;->c:Lcom/google/android/gms/internal/ads/zzaps;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lxle;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkme;->d:Z

    iput-object p1, p0, Lkme;->a:Ljava/lang/Object;

    iput-object p2, p0, Lkme;->b:Lxle;

    const/4 p1, 0x0

    iput-object p1, p0, Lkme;->c:Lcom/google/android/gms/internal/ads/zzaps;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzaps;)Lkme;
    .locals 1

    new-instance v0, Lkme;

    invoke-direct {v0, p0}, Lkme;-><init>(Lcom/google/android/gms/internal/ads/zzaps;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Lxle;)Lkme;
    .locals 1

    new-instance v0, Lkme;

    invoke-direct {v0, p0, p1}, Lkme;-><init>(Ljava/lang/Object;Lxle;)V

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 0

    iget-object p0, p0, Lkme;->c:Lcom/google/android/gms/internal/ads/zzaps;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
