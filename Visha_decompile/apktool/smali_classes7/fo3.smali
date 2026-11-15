.class public final synthetic Lfo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailablePredicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailablePredicate;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailablePredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfo3;->a:Lorg/apache/commons/lang3/function/FailablePredicate;

    iput-object p2, p0, Lfo3;->b:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lfo3;->a:Lorg/apache/commons/lang3/function/FailablePredicate;

    iget-object p0, p0, Lfo3;->b:Lorg/apache/commons/lang3/function/FailablePredicate;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate;->d(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
