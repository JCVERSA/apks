.class public final Lh8h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lajh;


# direct methods
.method public constructor <init>(Lajh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh8h;->a:Lajh;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public final zzb()Lim5;
    .locals 2

    iget-object p0, p0, Lh8h;->a:Lajh;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Lg8h;

    invoke-direct {p0, v0}, Lg8h;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lajh;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv0a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lg8h;

    invoke-direct {p0, v0}, Lg8h;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lg8h;

    invoke-direct {v0, p0}, Lg8h;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
