.class Lorg/apache/commons/lang3/builder/DiffBuilder$2;
.super Lorg/apache/commons/lang3/builder/Diff;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[Z[Z)Lorg/apache/commons/lang3/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/builder/Diff<",
        "[",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final synthetic val$lhs:[Z

.field final synthetic val$rhs:[Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[Z[Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->val$lhs:[Z

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->val$rhs:[Z

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->getLeft()[Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getLeft()[Ljava/lang/Boolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->val$lhs:[Z

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([Z)[Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->getRight()[Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getRight()[Ljava/lang/Boolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->val$rhs:[Z

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([Z)[Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
