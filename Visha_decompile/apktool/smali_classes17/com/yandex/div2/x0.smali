.class public abstract Lcom/yandex/div2/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/x0$a;,
        Lcom/yandex/div2/x0$b;,
        Lcom/yandex/div2/x0$c;,
        Lcom/yandex/div2/x0$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/x0$a;

.field public static final b:Lcom/yandex/div2/DivFixedSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/div2/x0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/x0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/x0;->a:Lcom/yandex/div2/x0$a;

    new-instance v0, Lcom/yandex/div2/DivFixedSize;

    sget-object v2, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/x0;->b:Lcom/yandex/div2/DivFixedSize;

    return-void
.end method
