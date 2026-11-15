.class Lcom/google/common/base/Predicates$CompositionPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe8;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositionPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhe8;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final f:Lo74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo74;"
        }
    .end annotation
.end field

.field final p:Lhe8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe8;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhe8;Lo74;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhe8;

    iput-object p1, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lhe8;

    .line 4
    invoke-static {p2}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo74;

    iput-object p1, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lo74;

    return-void
.end method

.method public synthetic constructor <init>(Lhe8;Lo74;Lcom/google/common/base/Predicates$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Predicates$CompositionPredicate;-><init>(Lhe8;Lo74;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lhe8;

    iget-object p0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lo74;

    invoke-interface {p0, p1}, Lo74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lhe8;->apply(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/common/base/Predicates$CompositionPredicate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/base/Predicates$CompositionPredicate;

    iget-object v0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lo74;

    iget-object v2, p1, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lo74;

    invoke-interface {v0, v2}, Lo74;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lhe8;

    iget-object p1, p1, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lhe8;

    invoke-interface {p0, p1}, Lhe8;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lo74;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lhe8;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lhe8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lo74;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
