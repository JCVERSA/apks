.class public final Landroidx/window/embedding/RuleController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/RuleController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u001b\u0010\u0010\u001a\u00020\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/window/embedding/RuleController;",
        "",
        "Landroidx/window/embedding/EmbeddingBackend;",
        "embeddingBackend",
        "<init>",
        "(Landroidx/window/embedding/EmbeddingBackend;)V",
        "",
        "Landroidx/window/embedding/EmbeddingRule;",
        "getRules",
        "()Ljava/util/Set;",
        "rule",
        "Lzfb;",
        "addRule",
        "(Landroidx/window/embedding/EmbeddingRule;)V",
        "removeRule",
        "rules",
        "setRules",
        "(Ljava/util/Set;)V",
        "clearRules",
        "()V",
        "Landroidx/window/embedding/EmbeddingBackend;",
        "Companion",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/window/embedding/RuleController$Companion;


# instance fields
.field private final embeddingBackend:Landroidx/window/embedding/EmbeddingBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/RuleController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/RuleController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/RuleController;->Companion:Landroidx/window/embedding/RuleController$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/window/embedding/EmbeddingBackend;)V
    .locals 1

    const-string v0, "embeddingBackend"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/RuleController;->embeddingBackend:Landroidx/window/embedding/EmbeddingBackend;

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Landroidx/window/embedding/RuleController;
    .locals 1

    sget-object v0, Landroidx/window/embedding/RuleController;->Companion:Landroidx/window/embedding/RuleController$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/embedding/RuleController$Companion;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/RuleController;

    move-result-object p0

    return-object p0
.end method

.method public static final parseRules(Landroid/content/Context;I)Ljava/util/Set;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/window/embedding/RuleController;->Companion:Landroidx/window/embedding/RuleController$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/window/embedding/RuleController$Companion;->parseRules(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addRule(Landroidx/window/embedding/EmbeddingRule;)V
    .locals 1

    const-string v0, "rule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/RuleController;->embeddingBackend:Landroidx/window/embedding/EmbeddingBackend;

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingBackend;->addRule(Landroidx/window/embedding/EmbeddingRule;)V

    return-void
.end method

.method public final clearRules()V
    .locals 1

    iget-object p0, p0, Landroidx/window/embedding/RuleController;->embeddingBackend:Landroidx/window/embedding/EmbeddingBackend;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/window/embedding/EmbeddingBackend;->setRules(Ljava/util/Set;)V

    return-void
.end method

.method public final getRules()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/RuleController;->embeddingBackend:Landroidx/window/embedding/EmbeddingBackend;

    invoke-interface {p0}, Landroidx/window/embedding/EmbeddingBackend;->getRules()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final removeRule(Landroidx/window/embedding/EmbeddingRule;)V
    .locals 1

    const-string v0, "rule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/RuleController;->embeddingBackend:Landroidx/window/embedding/EmbeddingBackend;

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingBackend;->removeRule(Landroidx/window/embedding/EmbeddingRule;)V

    return-void
.end method

.method public final setRules(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rules"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/RuleController;->embeddingBackend:Landroidx/window/embedding/EmbeddingBackend;

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingBackend;->setRules(Ljava/util/Set;)V

    return-void
.end method
