.class Lcom/google/common/collect/g3$c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/g3$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/g3$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/g3$c;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/common/collect/g3$c$a;->b:Ljava/util/Iterator;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/common/collect/g3$c$a;->c:Lcom/google/common/collect/g3$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/google/common/collect/g3$c$a;->a:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g3$c$a;->b:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g3$c$a;->b:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/google/common/collect/g3$c$a;->a:Z

    .line 9
    .line 10
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/g3$c$a;->a:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/common/collect/e2;->e(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/common/collect/g3$c$a;->b:Ljava/util/Iterator;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
