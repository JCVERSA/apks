.class public final synthetic Lpzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lzcg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
