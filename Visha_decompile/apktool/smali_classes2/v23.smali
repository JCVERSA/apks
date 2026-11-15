.class public final synthetic Lv23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/drm/b$a;

.field public final synthetic c:Lcom/google/android/exoplayer2/drm/b;

.field public final synthetic d:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv23;->b:Lcom/google/android/exoplayer2/drm/b$a;

    iput-object p2, p0, Lv23;->c:Lcom/google/android/exoplayer2/drm/b;

    iput-object p3, p0, Lv23;->d:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv23;->b:Lcom/google/android/exoplayer2/drm/b$a;

    iget-object v1, p0, Lv23;->c:Lcom/google/android/exoplayer2/drm/b;

    iget-object p0, p0, Lv23;->d:Ljava/lang/Exception;

    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/drm/b$a;->e(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;Ljava/lang/Exception;)V

    return-void
.end method
