.class public final Lwe0;
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

    iput-object p1, p0, Lwe0;->a:Lcom/yandex/div/core/view2/Div2View;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;)Lue0;
    .locals 1

    invoke-static {}, Lpp5;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lve0;

    iget-object p0, p0, Lwe0;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-direct {v0, p0, p1, p2}, Lve0;-><init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lue0;->a:Lue0$a;

    invoke-virtual {p0}, Lue0$a;->a()Lue0;

    move-result-object v0

    :goto_0
    return-object v0
.end method
