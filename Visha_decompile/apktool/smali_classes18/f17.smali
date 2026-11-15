.class public final Lf17;
.super Lpo5;
.source "SourceFile"

# interfaces
.implements Ldz4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpo5;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lf17;
    .locals 0

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
