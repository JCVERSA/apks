.class public final Lkte;
.super Ltte;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V
    .locals 7

    const-string v3, "CTOO7vS2eGX5K3ZMmh7m+q2y1+wvLadBs0NzJgxSeMo="

    const/16 v6, 0x49

    const-string v2, "4FdiBUPFa1CQITk8QYb/KC5CZQJZFUk4AUePTkKoIhV1OCu9c96sc0zaEo3W45kz"

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

    :try_start_0
    iget-object v0, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/e0;->b()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Ltte;->e:Looe;

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v1, v2}, Looe;->Z(I)Looe;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Ltte;->e:Looe;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Looe;->Z(I)Looe;

    return-void
.end method
