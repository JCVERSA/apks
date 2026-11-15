.class public interface abstract Lcom/google/android/exoplayer2/drm/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/c$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/drm/c;

.field public static final b:Lcom/google/android/exoplayer2/drm/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/c$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/c$a;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/c;->a:Lcom/google/android/exoplayer2/drm/c;

    sput-object v0, Lcom/google/android/exoplayer2/drm/c;->b:Lcom/google/android/exoplayer2/drm/c;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Looper;Lta8;)V
.end method

.method public abstract b(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/drm/DrmSession;
.end method

.method public c(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/drm/c$b;
    .locals 0

    sget-object p0, Lcom/google/android/exoplayer2/drm/c$b;->a:Lcom/google/android/exoplayer2/drm/c$b;

    return-object p0
.end method

.method public abstract d(Lcom/google/android/exoplayer2/k;)I
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
