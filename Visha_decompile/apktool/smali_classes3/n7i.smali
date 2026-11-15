.class public final Ln7i;
.super Lp7i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfwr;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp7i;-><init>(Lcom/google/android/gms/internal/ads/zzfwr;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f8;->r()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic B(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/p7;->a(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7i;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo7i;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
