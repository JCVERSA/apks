.class public final synthetic Lcom/google/android/gms/internal/ads/zzzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lyrj;

    check-cast p2, Lyrj;

    iget p0, p1, Lyrj;->a:I

    iget p1, p2, Lyrj;->a:I

    sub-int/2addr p0, p1

    return p0
.end method
