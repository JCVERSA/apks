.class public final synthetic Lz84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/Functions$FailableSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz84;->a:Lorg/apache/commons/lang3/Functions$FailableSupplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lz84;->a:Lorg/apache/commons/lang3/Functions$FailableSupplier;

    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->a(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
