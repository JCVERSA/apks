.class public final synthetic Lmm3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm3;->a:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    iput-object p2, p0, Lmm3;->b:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    return-void
.end method


# virtual methods
.method public final test(D)Z
    .locals 1

    iget-object v0, p0, Lmm3;->a:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    iget-object p0, p0, Lmm3;->b:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->e(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z

    move-result p0

    return p0
.end method
