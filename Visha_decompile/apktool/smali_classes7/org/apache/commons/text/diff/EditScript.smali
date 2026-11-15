.class public Lorg/apache/commons/text/diff/EditScript;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/text/diff/EditCommand<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private lcsLength:I

.field private modifications:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/diff/EditScript;->commands:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/text/diff/EditScript;->lcsLength:I

    iput v0, p0, Lorg/apache/commons/text/diff/EditScript;->modifications:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/text/diff/CommandVisitor;Lorg/apache/commons/text/diff/EditCommand;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/text/diff/EditScript;->lambda$visit$0(Lorg/apache/commons/text/diff/CommandVisitor;Lorg/apache/commons/text/diff/EditCommand;)V

    return-void
.end method

.method private static synthetic lambda$visit$0(Lorg/apache/commons/text/diff/CommandVisitor;Lorg/apache/commons/text/diff/EditCommand;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/commons/text/diff/EditCommand;->accept(Lorg/apache/commons/text/diff/CommandVisitor;)V

    return-void
.end method


# virtual methods
.method public append(Lorg/apache/commons/text/diff/DeleteCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/diff/DeleteCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/diff/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lorg/apache/commons/text/diff/EditScript;->modifications:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/text/diff/EditScript;->modifications:I

    return-void
.end method

.method public append(Lorg/apache/commons/text/diff/InsertCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/diff/InsertCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/commons/text/diff/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget p1, p0, Lorg/apache/commons/text/diff/EditScript;->modifications:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/text/diff/EditScript;->modifications:I

    return-void
.end method

.method public append(Lorg/apache/commons/text/diff/KeepCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/diff/KeepCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/apache/commons/text/diff/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget p1, p0, Lorg/apache/commons/text/diff/EditScript;->lcsLength:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/text/diff/EditScript;->lcsLength:I

    return-void
.end method

.method public getLCSLength()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/diff/EditScript;->lcsLength:I

    return p0
.end method

.method public getModifications()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/diff/EditScript;->modifications:I

    return p0
.end method

.method public visit(Lorg/apache/commons/text/diff/CommandVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/diff/CommandVisitor<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/text/diff/EditScript;->commands:Ljava/util/List;

    new-instance v0, Ln63;

    invoke-direct {v0, p1}, Ln63;-><init>(Lorg/apache/commons/text/diff/CommandVisitor;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
