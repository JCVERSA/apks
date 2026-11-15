.class public Lcom/google/common/collect/Multisets$a;
.super Ly6b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->e(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0, p1}, Ly6b;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/j$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$a;->b(Lcom/google/common/collect/j$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/google/common/collect/j$a;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lcom/google/common/collect/j$a;->getElement()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
