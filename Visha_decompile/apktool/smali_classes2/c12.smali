.class public final synthetic Lc12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc12;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lc12;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->c(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;)V

    return-void
.end method
