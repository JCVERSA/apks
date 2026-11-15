.class public abstract Lcom/yandex/div2/DivTextImageJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTextImageJsonParser$a;,
        Lcom/yandex/div2/DivTextImageJsonParser$b;,
        Lcom/yandex/div2/DivTextImageJsonParser$c;,
        Lcom/yandex/div2/DivTextImageJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivTextImageJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div2/DivFixedSize;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lcom/yandex/div/json/expressions/Expression;

.field public static final f:Lcom/yandex/div/json/expressions/Expression;

.field public static final g:Lcom/yandex/div2/DivFixedSize;

.field public static final h:Lzbb;

.field public static final i:Lzbb;

.field public static final j:Lzbb;

.field public static final k:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/yandex/div2/DivTextImageJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTextImageJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTextImageJsonParser;->a:Lcom/yandex/div2/DivTextImageJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v2, Lcom/yandex/div2/DivTextAlignmentVertical;->CENTER:Lcom/yandex/div2/DivTextAlignmentVertical;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextImageJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivFixedSize;

    const-wide/16 v3, 0x14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v1, v4, v5, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/yandex/div2/DivTextImageJsonParser;->c:Lcom/yandex/div2/DivFixedSize;

    sget-object v2, Lcom/yandex/div2/DivText$Image$IndexingDirection;->NORMAL:Lcom/yandex/div2/DivText$Image$IndexingDirection;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextImageJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextImageJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivBlendMode;->SOURCE_IN:Lcom/yandex/div2/DivBlendMode;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextImageJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-direct {v2, v1, v0, v5, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/yandex/div2/DivTextImageJsonParser;->g:Lcom/yandex/div2/DivFixedSize;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivTextAlignmentVertical;->values()[Lcom/yandex/div2/DivTextAlignmentVertical;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTextImageJsonParser$Companion$TYPE_HELPER_ALIGNMENT_VERTICAL$1;->INSTANCE:Lcom/yandex/div2/DivTextImageJsonParser$Companion$TYPE_HELPER_ALIGNMENT_VERTICAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTextImageJsonParser;->h:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivText$Image$IndexingDirection;->values()[Lcom/yandex/div2/DivText$Image$IndexingDirection;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTextImageJsonParser$Companion$TYPE_HELPER_INDEXING_DIRECTION$1;->INSTANCE:Lcom/yandex/div2/DivTextImageJsonParser$Companion$TYPE_HELPER_INDEXING_DIRECTION$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTextImageJsonParser;->i:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivBlendMode;->values()[Lcom/yandex/div2/DivBlendMode;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTextImageJsonParser$Companion$TYPE_HELPER_TINT_MODE$1;->INSTANCE:Lcom/yandex/div2/DivTextImageJsonParser$Companion$TYPE_HELPER_TINT_MODE$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextImageJsonParser;->j:Lzbb;

    new-instance v0, Lhs2;

    invoke-direct {v0}, Lhs2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivTextImageJsonParser;->k:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivTextImageJsonParser;->b(J)Z

    move-result p0

    return p0
.end method

.method public static final b(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
