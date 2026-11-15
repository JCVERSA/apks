.class public final synthetic Lp84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/Functions$FailablePredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailablePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp84;->a:Lorg/apache/commons/lang3/Functions$FailablePredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lp84;->a:Lorg/apache/commons/lang3/Functions$FailablePredicate;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->b(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
