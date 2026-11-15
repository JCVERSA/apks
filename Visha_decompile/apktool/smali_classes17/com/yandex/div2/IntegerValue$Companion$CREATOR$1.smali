.class final Lcom/yandex/div2/IntegerValue$Companion$CREATOR$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/IntegerValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lhx7;",
        "env",
        "Lorg/json/JSONObject;",
        "it",
        "Lcom/yandex/div2/IntegerValue;",
        "invoke",
        "(Lhx7;Lorg/json/JSONObject;)Lcom/yandex/div2/IntegerValue;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yandex/div2/IntegerValue$Companion$CREATOR$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div2/IntegerValue$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/yandex/div2/IntegerValue$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/yandex/div2/IntegerValue$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/IntegerValue$Companion$CREATOR$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lhx7;Lorg/json/JSONObject;)Lcom/yandex/div2/IntegerValue;
    .locals 0

    const-string p0, "env"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/yandex/div2/IntegerValue;->c:Lcom/yandex/div2/IntegerValue$a;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/IntegerValue$a;->a(Lhx7;Lorg/json/JSONObject;)Lcom/yandex/div2/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lhx7;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/IntegerValue$Companion$CREATOR$1;->invoke(Lhx7;Lorg/json/JSONObject;)Lcom/yandex/div2/IntegerValue;

    move-result-object p0

    return-object p0
.end method
