.class public final synthetic Lcom/google/common/collect/z2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/base/f;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/Range;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerBound()Lcom/google/common/collect/Cut;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
