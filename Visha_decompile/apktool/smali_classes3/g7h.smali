.class public final synthetic Lg7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    check-cast p1, Lze;

    new-instance p0, Lj7h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lj7h;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lze;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lze;->b()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lj7h;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    :goto_0
    return-object p0
.end method
