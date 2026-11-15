.class Lcom/google/common/collect/StandardTable$f$a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$f$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable$f$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$f$a$a;->a:Lcom/google/common/collect/StandardTable$f$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$f$a$a;->a:Lcom/google/common/collect/StandardTable$f$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/StandardTable$f$a;->b:Lcom/google/common/collect/StandardTable$f;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/common/collect/StandardTable$f;->d:Lcom/google/common/collect/StandardTable;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$f$a$a;->a(Ljava/lang/Object;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
