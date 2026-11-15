.class public final Lbte;
.super Ltte;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V
    .locals 7

    const-string v3, "Y2Y/0h0dKABIHQFhVg03WanIPt1ycAKNbAHW8KmGZdA="

    const/16 v6, 0x4c

    const-string v2, "cRdlvWHtqHdBG4CYJ9vkFz7FZQ6cNUJGY3OjBhn/P6+zEhy3yZS0LCAg131OrGtL"

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

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iget-object p0, p0, Ltte;->e:Looe;

    invoke-virtual {p0, v1}, Looe;->X(I)Looe;

    return-void
.end method
