.class public final Lcom/google/common/collect/TreeMultiset$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$f;->a:Ljava/lang/Object;

    return-object p0
.end method
