.class public Lcom/google/common/collect/e$a;
.super Ly6b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/e;->valuesIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/e;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/e;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/e$a;->c:Lcom/google/common/collect/e;

    invoke-direct {p0, p2}, Ly6b;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/r$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e$a;->b(Lcom/google/common/collect/r$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/google/common/collect/r$a;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lcom/google/common/collect/r$a;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
