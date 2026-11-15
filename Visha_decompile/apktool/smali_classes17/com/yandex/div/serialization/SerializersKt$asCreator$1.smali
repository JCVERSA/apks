.class public final Lcom/yandex/div/serialization/SerializersKt$asCreator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0000\u0018\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00028\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "V",
        "Lhx7;",
        "env",
        "value",
        "Lorg/json/JSONObject;",
        "invoke",
        "(Lhx7;Ljava/lang/Object;)Lorg/json/JSONObject;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $this_asCreator:Lpd9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpd9;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpd9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpd9;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/serialization/SerializersKt$asCreator$1;->$this_asCreator:Lpd9;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lhx7;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/serialization/SerializersKt$asCreator$1;->invoke(Lhx7;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lhx7;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhx7;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "env"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/div/serialization/SerializersKt$asCreator$1;->$this_asCreator:Lpd9;

    invoke-interface {p0, p1, p2}, Lpd9;->b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0
.end method
