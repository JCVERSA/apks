.class public abstract Lcom/yandex/div2/w4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/w4$a;,
        Lcom/yandex/div2/w4$b;,
        Lcom/yandex/div2/w4$c;,
        Lcom/yandex/div2/w4$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/w4$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/w4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/w4$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/w4;->a:Lcom/yandex/div2/w4$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/w4;->b:Lcom/yandex/div/json/expressions/Expression;

    return-void
.end method
