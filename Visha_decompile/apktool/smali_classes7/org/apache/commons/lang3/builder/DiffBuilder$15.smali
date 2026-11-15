.class Lorg/apache/commons/lang3/builder/DiffBuilder$15;
.super Lorg/apache/commons/lang3/builder/Diff;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;SS)Lorg/apache/commons/lang3/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/builder/Diff<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final synthetic val$lhs:S

.field final synthetic val$rhs:S


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;SS)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$15;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-short p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$15;->val$lhs:S

    iput-short p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$15;->val$rhs:S

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$15;->getLeft()Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public getLeft()Ljava/lang/Short;
    .locals 0

    .line 2
    iget-short p0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$15;->val$lhs:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$15;->getRight()Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public getRight()Ljava/lang/Short;
    .locals 0

    .line 2
    iget-short p0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$15;->val$rhs:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method
