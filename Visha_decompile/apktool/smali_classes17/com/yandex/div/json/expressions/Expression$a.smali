.class public final Lcom/yandex/div/json/expressions/Expression$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/json/expressions/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/json/expressions/Expression$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;
    .locals 6

    const-string p0, "value"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/div/json/expressions/Expression$c;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/json/expressions/Expression$c;-><init>(Ljava/lang/String;Ljava/lang/String;Llx7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/div/json/expressions/Expression$b;

    invoke-direct {p0, p1}, Lcom/yandex/div/json/expressions/Expression$b;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 3

    instance-of p0, p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    const/4 p0, 0x2

    const/4 v1, 0x0

    const-string v2, "@{"

    invoke-static {p1, v2, v0, p0, v1}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
