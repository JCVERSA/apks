.class public final synthetic Lw02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag1;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw02;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lw02;->a:Ljava/lang/Exception;

    check-cast p1, Lcom/google/android/exoplayer2/drm/b$a;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/b$a;)V

    return-void
.end method
