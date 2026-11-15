.class public final Lmj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua0;


# instance fields
.field public final a:Lcom/yandex/div/json/expressions/Expression;

.field public final b:Loj3;


# direct methods
.method public constructor <init>(Lcom/yandex/div/json/expressions/Expression;Loj3;)V
    .locals 1

    const-string v0, "condition"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmj3;->a:Lcom/yandex/div/json/expressions/Expression;

    iput-object p2, p0, Lmj3;->b:Loj3;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lmj3;->a:Lcom/yandex/div/json/expressions/Expression;

    iget-object p0, p0, Lmj3;->b:Loj3;

    invoke-virtual {p1, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
