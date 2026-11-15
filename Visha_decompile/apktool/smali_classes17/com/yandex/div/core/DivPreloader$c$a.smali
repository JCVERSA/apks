.class public final Lcom/yandex/div/core/DivPreloader$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/DivPreloader$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/DivPreloader$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/div2/DivBackground;Loj3;)Z
    .locals 0

    const-string p0, "background"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resolver"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/yandex/div2/DivBackground$b;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/div2/DivBackground$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivImageBackground;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(Lcom/yandex/div2/Div;Loj3;)Z
    .locals 0

    const-string p0, "div"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resolver"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/yandex/div2/Div$r;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/div2/Div$r;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$r;->c()Lcom/yandex/div2/DivVideo;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivVideo;->A:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/yandex/div2/Div$g;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/yandex/div2/Div$g;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$g;->c()Lcom/yandex/div2/DivImage;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivImage;->H:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/yandex/div2/Div$e;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/yandex/div2/Div$e;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$e;->c()Lcom/yandex/div2/DivGifImage;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivGifImage;->E:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
