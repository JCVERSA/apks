.class public final synthetic Lt02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt02;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lt02;->a:I

    check-cast p1, Lcom/google/android/exoplayer2/drm/b$a;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e(ILcom/google/android/exoplayer2/drm/b$a;)V

    return-void
.end method
