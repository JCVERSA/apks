.class public Lorg/mvel2/ast/ReduceableCodeException;
.super Ljava/lang/RuntimeException;
.source "source.java"


# instance fields
.field private literal:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/ast/ReduceableCodeException;->literal:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getLiteral()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ReduceableCodeException;->literal:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
