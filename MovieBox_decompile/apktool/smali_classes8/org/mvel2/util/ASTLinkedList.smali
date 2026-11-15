.class public Lorg/mvel2/util/ASTLinkedList;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/util/ASTIterator;


# instance fields
.field private current:Lorg/mvel2/ast/ASTNode;

.field private firstASTNode:Lorg/mvel2/ast/ASTNode;

.field private last:Lorg/mvel2/ast/ASTNode;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ast/ASTNode;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ast/ASTNode;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 8
    iput p2, p0, Lorg/mvel2/util/ASTLinkedList;->size:I

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/util/ASTIterator;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Lorg/mvel2/util/ASTIterator;->firstNode()Lorg/mvel2/ast/ASTNode;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    return-void
.end method


# virtual methods
.method public addTokenNode(Lorg/mvel2/ast/ASTNode;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/ASTLinkedList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mvel2/util/ASTLinkedList;->size:I

    .line 2
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    iput-object p1, v0, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->last:Lorg/mvel2/ast/ASTNode;

    :goto_0
    return-void
.end method

.method public addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V
    .locals 1

    .line 5
    iget v0, p0, Lorg/mvel2/util/ASTLinkedList;->size:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mvel2/util/ASTLinkedList;->size:I

    .line 6
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    if-nez v0, :cond_0

    .line 7
    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    iput-object p2, p1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    iput-object p2, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    iput-object p2, p0, Lorg/mvel2/util/ASTLinkedList;->last:Lorg/mvel2/ast/ASTNode;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    iput-object p1, v0, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    iput-object p2, p1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    iput-object p2, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    iput-object p2, p0, Lorg/mvel2/util/ASTLinkedList;->last:Lorg/mvel2/ast/ASTNode;

    :goto_0
    return-void
.end method

.method public back()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->last:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 4
    .line 5
    return-void
.end method

.method public finish()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/mvel2/util/ASTLinkedList;->reset()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->isDiscard()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    iput-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->last:Lorg/mvel2/ast/ASTNode;

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/mvel2/util/ASTLinkedList;->reset()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public firstNode()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public firstNonSymbol()Lorg/mvel2/ast/ASTNode;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    iget v1, v0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public hasMoreNodes()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public index()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public isSingleNode()Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/util/ASTLinkedList;->size:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    .line 10
    .line 11
    iget v0, v0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :cond_1
    :goto_0
    return v1
.end method

.method public nextNode()Lorg/mvel2/ast/ASTNode;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iput-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->last:Lorg/mvel2/ast/ASTNode;

    .line 8
    .line 9
    iget-object v1, v0, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 10
    .line 11
    iput-object v1, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 12
    .line 13
    return-object v0
.end method

.method public nodesAhead(I)Lorg/mvel2/ast/ASTNode;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    move-object v2, v1

    .line 9
    :goto_0
    if-ge v0, p1, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 12
    .line 13
    iget-object v2, v2, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    return-object v2
.end method

.method public nodesBack(I)Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v0, "unimplemented"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public peekLast()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->last:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public peekNext()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public peekNode()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    return-object v0
.end method

.method public removeToken()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->firstASTNode:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 4
    .line 5
    return-void
.end method

.method public setCurrentNode(Lorg/mvel2/ast/ASTNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    return-void
.end method

.method public showNodeChain()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v1, "unimplemented"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/ASTLinkedList;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public skipNode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/mvel2/util/ASTLinkedList;->current:Lorg/mvel2/ast/ASTNode;

    .line 8
    .line 9
    :cond_0
    return-void
.end method
