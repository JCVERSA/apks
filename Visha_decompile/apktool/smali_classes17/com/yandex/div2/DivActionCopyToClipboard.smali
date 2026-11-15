.class public final Lcom/yandex/div2/DivActionCopyToClipboard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivActionCopyToClipboard$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/div2/DivActionCopyToClipboard$a;

.field public static final d:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/DivActionCopyToClipboardContent;

.field public b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivActionCopyToClipboard$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivActionCopyToClipboard$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivActionCopyToClipboard;->c:Lcom/yandex/div2/DivActionCopyToClipboard$a;

    sget-object v0, Lcom/yandex/div2/DivActionCopyToClipboard$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivActionCopyToClipboard$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivActionCopyToClipboard;->d:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivActionCopyToClipboardContent;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivActionCopyToClipboard;->a:Lcom/yandex/div2/DivActionCopyToClipboardContent;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivActionCopyToClipboard;Loj3;Loj3;)Z
    .locals 1

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div2/DivActionCopyToClipboard;->a:Lcom/yandex/div2/DivActionCopyToClipboardContent;

    iget-object p1, p1, Lcom/yandex/div2/DivActionCopyToClipboard;->a:Lcom/yandex/div2/DivActionCopyToClipboardContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionCopyToClipboardContent;->a(Lcom/yandex/div2/DivActionCopyToClipboardContent;Loj3;Loj3;)Z

    move-result p0

    return p0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivActionCopyToClipboard;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivActionCopyToClipboard;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivActionCopyToClipboard;->a:Lcom/yandex/div2/DivActionCopyToClipboardContent;

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionCopyToClipboardContent;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivActionCopyToClipboard;->b:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->f0()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqe2;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lqe2;->e(Lex7;Lcom/yandex/div2/DivActionCopyToClipboard;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
