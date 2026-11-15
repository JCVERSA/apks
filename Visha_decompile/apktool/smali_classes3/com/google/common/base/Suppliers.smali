.class public abstract Lcom/google/common/base/Suppliers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Suppliers$a;,
        Lcom/google/common/base/Suppliers$MemoizingSupplier;
    }
.end annotation


# direct methods
.method public static a(Lw6a;)Lw6a;
    .locals 1

    instance-of v0, p0, Lcom/google/common/base/Suppliers$a;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/base/Suppliers$MemoizingSupplier;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$MemoizingSupplier;-><init>(Lw6a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/base/Suppliers$a;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$a;-><init>(Lw6a;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method
