.class public final Lcom/yandex/div/serialization/SerializersKt$asConverter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u00012\u0006\u0010\u0003\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lorg/json/JSONObject;",
        "V",
        "value",
        "invoke",
        "(Ljava/lang/Object;)Lorg/json/JSONObject;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $context:Lex7;

.field final synthetic $this_asConverter:Lpd9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpd9;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpd9;Lex7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpd9;",
            "Lex7;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/serialization/SerializersKt$asConverter$1;->$this_asConverter:Lpd9;

    iput-object p2, p0, Lcom/yandex/div/serialization/SerializersKt$asConverter$1;->$context:Lex7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/serialization/SerializersKt$asConverter$1;->invoke(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/div/serialization/SerializersKt$asConverter$1;->$this_asConverter:Lpd9;

    iget-object p0, p0, Lcom/yandex/div/serialization/SerializersKt$asConverter$1;->$context:Lex7;

    invoke-interface {v0, p0, p1}, Lpd9;->b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0
.end method
