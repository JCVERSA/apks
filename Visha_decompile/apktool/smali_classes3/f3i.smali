.class public final Lf3i;
.super Lh3i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh3i;-><init>(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 0

    return p1
.end method

.method public final d(I)I
    .locals 0

    iget-object p0, p0, Lh3i;->d:Ljava/lang/CharSequence;

    add-int/lit16 p1, p1, 0xfa0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ge p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
