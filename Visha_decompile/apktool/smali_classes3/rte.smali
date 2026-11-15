.class public final Lrte;
.super Ltte;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V
    .locals 7

    const-string v3, "LFMrBRhUND+2ac6pPuv9NGIiF7t3Oz4z8DOZlKEBgm8="

    const/16 v6, 0x30

    const-string v2, "gm8IDIIiydkpD1O9/mPMu0ljuW+errJvs62TCchq7IbS1rnNzByjrFjKITopHNdf"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ltte;->e:Looe;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Looe;->a0(I)Looe;

    iget-object v1, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object p0, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e0;->b()Landroid/content/Context;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-enter v0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    :try_start_0
    invoke-virtual {v0, p0}, Looe;->a0(I)Looe;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Looe;->a0(I)Looe;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
