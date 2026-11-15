.class public Lfu2;
.super Lcw2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcw2;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lfu2;->t(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public t(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Boolean;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resolver"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public u(Lcom/yandex/div2/Div;Loj3;)Z
    .locals 1

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcw2;->s(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
