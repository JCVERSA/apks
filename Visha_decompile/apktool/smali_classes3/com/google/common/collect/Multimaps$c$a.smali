.class public Lcom/google/common/collect/Multimaps$c$a;
.super Ly6b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$c;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/Multimaps$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multimaps$c;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$c$a;->c:Lcom/google/common/collect/Multimaps$c;

    invoke-direct {p0, p2}, Ly6b;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$c$a;->b(Ljava/util/Map$Entry;)Lcom/google/common/collect/j$a;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/util/Map$Entry;)Lcom/google/common/collect/j$a;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Multimaps$c$a$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$c$a$a;-><init>(Lcom/google/common/collect/Multimaps$c$a;Ljava/util/Map$Entry;)V

    return-object v0
.end method
