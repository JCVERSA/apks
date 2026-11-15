.class public final synthetic Lt84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBooleanSupplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/Functions$FailablePredicate;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt84;->a:Lorg/apache/commons/lang3/Functions$FailablePredicate;

    iput-object p2, p0, Lt84;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    iget-object v0, p0, Lt84;->a:Lorg/apache/commons/lang3/Functions$FailablePredicate;

    iget-object p0, p0, Lt84;->b:Ljava/lang/Object;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/Functions;->k(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
