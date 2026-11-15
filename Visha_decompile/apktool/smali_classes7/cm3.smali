.class public final synthetic Lcm3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBiPredicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableBiPredicate;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableBiPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm3;->a:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    iput-object p2, p0, Lcm3;->b:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcm3;->a:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    iget-object p0, p0, Lcm3;->b:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->e(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
