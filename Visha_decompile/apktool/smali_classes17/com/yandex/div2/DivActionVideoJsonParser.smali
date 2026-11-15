.class public abstract Lcom/yandex/div2/DivActionVideoJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivActionVideoJsonParser$a;,
        Lcom/yandex/div2/DivActionVideoJsonParser$b;,
        Lcom/yandex/div2/DivActionVideoJsonParser$c;,
        Lcom/yandex/div2/DivActionVideoJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivActionVideoJsonParser$a;

.field public static final b:Lzbb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivActionVideoJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivActionVideoJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivActionVideoJsonParser;->a:Lcom/yandex/div2/DivActionVideoJsonParser$a;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivActionVideo$Action;->values()[Lcom/yandex/div2/DivActionVideo$Action;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivActionVideoJsonParser$Companion$TYPE_HELPER_ACTION$1;->INSTANCE:Lcom/yandex/div2/DivActionVideoJsonParser$Companion$TYPE_HELPER_ACTION$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivActionVideoJsonParser;->b:Lzbb;

    return-void
.end method
