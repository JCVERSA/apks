.class public final synthetic Lgn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntPredicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableIntPredicate;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableIntPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgn3;->a:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    iput-object p2, p0, Lgn3;->b:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lgn3;->a:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    iget-object p0, p0, Lgn3;->b:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->a(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z

    move-result p0

    return p0
.end method
