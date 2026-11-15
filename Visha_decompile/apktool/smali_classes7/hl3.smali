.class public final synthetic Lhl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhl3;->a:Lorg/apache/commons/lang3/function/FailableSupplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhl3;->a:Lorg/apache/commons/lang3/function/FailableSupplier;

    invoke-static {p0}, Lorg/apache/commons/lang3/function/Failable;->b(Lorg/apache/commons/lang3/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
