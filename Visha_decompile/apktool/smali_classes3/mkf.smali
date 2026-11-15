.class public final Lmkf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public b:Landroid/content/Context;

.field public c:J

.field public d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lmkf;)J
    .locals 2

    iget-wide v0, p0, Lmkf;->c:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lmkf;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmkf;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lmkf;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 0

    iget-object p0, p0, Lmkf;->a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object p0
.end method

.method public static bridge synthetic g(Lmkf;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lmkf;->d:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final d(J)Lmkf;
    .locals 0

    iput-wide p1, p0, Lmkf;->c:J

    return-object p0
.end method

.method public final e(Landroid/content/Context;)Lmkf;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmkf;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lmkf;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lmkf;
    .locals 0

    iput-object p1, p0, Lmkf;->a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object p0
.end method
