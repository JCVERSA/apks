.class final Lcom/yandex/div/internal/parser/ParsingConvertersKt$STRING_TO_COLOR_INT$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/parser/ParsingConvertersKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "value",
        "",
        "invoke",
        "(Ljava/lang/Object;)Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yandex/div/internal/parser/ParsingConvertersKt$STRING_TO_COLOR_INT$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/internal/parser/ParsingConvertersKt$STRING_TO_COLOR_INT$1;

    invoke-direct {v0}, Lcom/yandex/div/internal/parser/ParsingConvertersKt$STRING_TO_COLOR_INT$1;-><init>()V

    sput-object v0, Lcom/yandex/div/internal/parser/ParsingConvertersKt$STRING_TO_COLOR_INT$1;->INSTANCE:Lcom/yandex/div/internal/parser/ParsingConvertersKt$STRING_TO_COLOR_INT$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 2
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object p0, Lk81;->b:Lk81$a;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lk81$a;->b(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    instance-of p0, p1, Lk81;

    if-eqz p0, :cond_1

    check-cast p1, Lk81;

    invoke-virtual {p1}, Lk81;->k()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "Received value of wrong type"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/parser/ParsingConvertersKt$STRING_TO_COLOR_INT$1;->invoke(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
