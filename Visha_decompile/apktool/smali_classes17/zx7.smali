.class public final Lzx7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/view2/Div2View;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string v0, "div2View"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx7;->a:Lcom/yandex/div/core/view2/Div2View;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivPatch;)Lxx7;
    .locals 1

    const-string v0, "patch"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lpp5;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lyx7;

    iget-object p0, p0, Lzx7;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-direct {v0, p0, p1}, Lyx7;-><init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivPatch;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lxx7;->b:Lxx7$a;

    invoke-virtual {p0}, Lxx7$a;->a()Lxx7;

    move-result-object v0

    :goto_0
    return-object v0
.end method
