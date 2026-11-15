.class public final Lorg/mvel2/ast/WithNode$ParmValuePair;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/WithNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParmValuePair"
.end annotation


# instance fields
.field private setExpression:Ljava/io/Serializable;

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/mvel2/compiler/ExecutableStatement;Ljava/lang/Class;Lorg/mvel2/ParserContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-static {p3, p1, p4}, Lorg/mvel2/util/n;->h(Ljava/lang/Class;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class p3, Ljava/lang/Object;

    .line 20
    .line 21
    :goto_0
    invoke-static {p1, p3, p4}, Lorg/mvel2/d;->g(Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->setExpression:Ljava/io/Serializable;

    .line 26
    .line 27
    :cond_1
    iput-object p2, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public eval(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->setExpression:Ljava/io/Serializable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 12
    .line 13
    invoke-interface {v1, p1, p2}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, p1, p2, v1}, Lorg/mvel2/d;->t(Ljava/io/Serializable;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public getSetExpression()Ljava/io/Serializable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->setExpression:Ljava/io/Serializable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatement()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/WithNode$ParmValuePair;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-object v0
.end method
