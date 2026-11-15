.class public final Lve0;
.super Lbe3;
.source "SourceFile"

# interfaces
.implements Lue0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve0$a;
    }
.end annotation


# static fields
.field public static final g:Lve0$a;


# instance fields
.field public final d:Lcom/yandex/div/core/view2/Div2View;

.field public final e:Lcom/yandex/div2/DivData;

.field public final f:Lcom/yandex/div2/DivData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lve0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lve0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lve0;->g:Lve0$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;)V
    .locals 1

    const-string v0, "div2View"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lbe3;-><init>()V

    iput-object p1, p0, Lve0;->d:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lve0;->e:Lcom/yandex/div2/DivData;

    iput-object p3, p0, Lve0;->f:Lcom/yandex/div2/DivData;

    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lve0;->d:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->g()Lgd2;

    move-result-object v1

    iget-object v2, p0, Lve0;->d:Lcom/yandex/div/core/view2/Div2View;

    iget-object v3, p0, Lve0;->e:Lcom/yandex/div2/DivData;

    iget-object v4, p0, Lve0;->f:Lcom/yandex/div2/DivData;

    invoke-virtual {p0}, Lbe3;->B()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lgd2;->d(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "Performed complex rebind"

    invoke-virtual {p0, v0}, Lve0;->C(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "DivData bound for the first time"

    invoke-virtual {p0, v0}, Lve0;->C(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    const-string v0, "Div has no state to bind"

    invoke-virtual {p0, v0}, Lve0;->C(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "Div comparison failed"

    const-string v1, "Some element has changed its `id` while has transitions"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "Div comparison failed"

    const-string v1, "For some element its old and new java classes are not equal"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 1

    const-string v0, "No actions performed. Old and new DivData are the same"

    invoke-virtual {p0, v0}, Lve0;->C(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 1

    const-string v0, "Div has no state to bind"

    invoke-virtual {p0, v0}, Lve0;->C(Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 2

    const-string v0, "Div comparison failed"

    const-string v1, "No old `DivData` to compare with"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 2

    const-string v0, "Simple rebind failed"

    const-string v1, "Div2View has no child to rebind"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 2

    const-string v0, "Div comparison failed"

    const-string v1, "Cannot find required state of `DivData`"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n()V
    .locals 2

    const-string v0, "Complex rebind failed"

    const-string v1, "Cannot find any difference to bind"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Simple rebind failed with exception"

    invoke-virtual {p0, v0, p1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 1

    const-string v0, "Performed simple rebind"

    invoke-virtual {p0, v0}, Lve0;->C(Ljava/lang/String;)V

    return-void
.end method

.method public q()V
    .locals 1

    const-string v0, "Performed unoptimized rebind. Old data was cleaned up"

    invoke-virtual {p0, v0}, Lve0;->C(Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 2

    const-string v0, "Div comparison failed"

    const-string v1, "Some element has changed its `layoutMode` from/to \'wrap\'"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .locals 2

    const-string v0, "Complex rebind failed"

    const-string v1, "Cannot find div inside state to bind"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t(Lcom/yandex/div/core/view2/reuse/RebindTask$UnsupportedElementException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/reuse/RebindTask$UnsupportedElementException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Complex rebind failed with exception"

    invoke-virtual {p0, v0, p1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u()V
    .locals 2

    const-string v0, "Div comparison failed"

    const-string v1, "Some element has changed its `orientation` from/to \'overlap\'"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v()V
    .locals 2

    const-string v0, "Div comparison failed"

    const-string v1, "Some element changed its child count"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w()V
    .locals 2

    const-string v0, "Complex rebind failed"

    const-string v1, "Cannot find any existing view to start binding"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public x()V
    .locals 2

    const-string v0, "Div comparison failed"

    const-string v1, "Some `DivCustom` element has different `customType`"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public y()V
    .locals 1

    const-string v0, "Div has no state to bind"

    invoke-virtual {p0, v0}, Lve0;->C(Ljava/lang/String;)V

    return-void
.end method

.method public z()V
    .locals 1

    const-string v0, "Binding failed. New DivData not provided"

    invoke-virtual {p0, v0}, Lve0;->C(Ljava/lang/String;)V

    return-void
.end method
