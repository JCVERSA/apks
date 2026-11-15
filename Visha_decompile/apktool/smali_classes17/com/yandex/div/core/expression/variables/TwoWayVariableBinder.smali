.class public abstract Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;
    }
.end annotation


# instance fields
.field public final a:Lxc3;

.field public final b:Lcom/yandex/div/core/expression/a;


# direct methods
.method public constructor <init>(Lxc3;Lcom/yandex/div/core/expression/a;)V
    .locals 1

    const-string v0, "errorCollectors"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionsRuntimeProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->a:Lxc3;

    iput-object p2, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->b:Lcom/yandex/div/core/expression/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/div/core/view2/a;Ljava/lang/String;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;Lcom/yandex/div/core/state/DivStatePath;)Lqc2;
    .locals 10

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object p4

    if-nez p4, :cond_0

    sget-object p0, Lqc2;->A1:Lqc2;

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v3}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v7

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->e()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/div/core/expression/local/RuntimeStore;->j(Loj3;)Lvj3;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lvj3;->g()Lsnb;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v8, v1

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->b:Lcom/yandex/div/core/expression/a;

    invoke-virtual {v1, v7, p4, v3}, Lcom/yandex/div/core/expression/a;->h(Lei2;Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/Div2View;)Lvj3;

    move-result-object v1

    invoke-virtual {v1}, Lvj3;->g()Lsnb;

    move-result-object v1

    goto :goto_1

    :goto_3
    new-instance v9, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;

    move-object v1, v9

    move-object v2, v0

    move-object v4, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;Lcom/yandex/div/core/view2/a;)V

    invoke-interface {p3, v9}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;->b(Le74;)V

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->a:Lxc3;

    invoke-virtual {p0, v7, p4}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object p0

    new-instance p1, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$2;

    invoke-direct {p1, v0, p3}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;)V

    const/4 p3, 0x1

    invoke-interface {v8, p2, p0, p3, p1}, Lsnb;->h(Ljava/lang/String;Lwc3;ZLe74;)Lqc2;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/String;
.end method
