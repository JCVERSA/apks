.class public final Lyx7;
.super Lbe3;
.source "SourceFile"

# interfaces
.implements Lxx7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyx7$a;
    }
.end annotation


# static fields
.field public static final f:Lyx7$a;


# instance fields
.field public final d:Lcom/yandex/div/core/view2/Div2View;

.field public final e:Lcom/yandex/div2/DivPatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyx7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyx7$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lyx7;->f:Lyx7$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivPatch;)V
    .locals 1

    const-string v0, "div2View"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "patch"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lbe3;-><init>()V

    iput-object p1, p0, Lyx7;->d:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lyx7;->e:Lcom/yandex/div2/DivPatch;

    return-void
.end method

.method private final C(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lyx7;->d:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->g()Lgd2;

    move-result-object v0

    iget-object v1, p0, Lyx7;->d:Lcom/yandex/div/core/view2/Div2View;

    iget-object v2, p0, Lyx7;->e:Lcom/yandex/div2/DivPatch;

    invoke-virtual {p0}, Lbe3;->B()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p1, p0}, Lgd2;->v(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivPatch;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "Div patched successfully"

    invoke-direct {p0, v0}, Lyx7;->C(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "Simple rebind failed"

    const-string v1, "Div has no state to bind"

    invoke-virtual {p0, v0, v1}, Lbe3;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 1

    const-string v0, "Patch not performed. Cannot find state to bind"

    invoke-direct {p0, v0}, Lyx7;->C(Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 2

    const-string v0, "Simple rebind failed"

    const-string v1, "Div2View has no child to rebind"

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
