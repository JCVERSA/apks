.class public final Lcom/yandex/div2/DivText$Image;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivText$Image$Accessibility;,
        Lcom/yandex/div2/DivText$Image$a;,
        Lcom/yandex/div2/DivText$Image$IndexingDirection;
    }
.end annotation


# static fields
.field public static final l:Lcom/yandex/div2/DivText$Image$a;

.field public static final m:Lcom/yandex/div/json/expressions/Expression;

.field public static final n:Lcom/yandex/div2/DivFixedSize;

.field public static final o:Lcom/yandex/div/json/expressions/Expression;

.field public static final p:Lcom/yandex/div/json/expressions/Expression;

.field public static final q:Lcom/yandex/div/json/expressions/Expression;

.field public static final r:Lcom/yandex/div2/DivFixedSize;

.field public static final s:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/DivText$Image$Accessibility;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div2/DivFixedSize;

.field public final d:Lcom/yandex/div/json/expressions/Expression;

.field public final e:Lcom/yandex/div/json/expressions/Expression;

.field public final f:Lcom/yandex/div/json/expressions/Expression;

.field public final g:Lcom/yandex/div/json/expressions/Expression;

.field public final h:Lcom/yandex/div/json/expressions/Expression;

.field public final i:Lcom/yandex/div/json/expressions/Expression;

.field public final j:Lcom/yandex/div2/DivFixedSize;

.field public k:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/yandex/div2/DivText$Image$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivText$Image$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivText$Image;->l:Lcom/yandex/div2/DivText$Image$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v2, Lcom/yandex/div2/DivTextAlignmentVertical;->CENTER:Lcom/yandex/div2/DivTextAlignmentVertical;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivText$Image;->m:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivFixedSize;

    const-wide/16 v3, 0x14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v1, v4, v5, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/yandex/div2/DivText$Image;->n:Lcom/yandex/div2/DivFixedSize;

    sget-object v2, Lcom/yandex/div2/DivText$Image$IndexingDirection;->NORMAL:Lcom/yandex/div2/DivText$Image$IndexingDirection;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivText$Image;->o:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivText$Image;->p:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivBlendMode;->SOURCE_IN:Lcom/yandex/div2/DivBlendMode;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivText$Image;->q:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-direct {v2, v1, v0, v5, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/yandex/div2/DivText$Image;->r:Lcom/yandex/div2/DivFixedSize;

    sget-object v0, Lcom/yandex/div2/DivText$Image$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivText$Image$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivText$Image;->s:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivText$Image$Accessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;)V
    .locals 1

    const-string v0, "alignmentVertical"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexingDirection"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadRequired"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tintMode"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivText$Image;->a:Lcom/yandex/div2/DivText$Image$Accessibility;

    iput-object p2, p0, Lcom/yandex/div2/DivText$Image;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object p3, p0, Lcom/yandex/div2/DivText$Image;->c:Lcom/yandex/div2/DivFixedSize;

    iput-object p4, p0, Lcom/yandex/div2/DivText$Image;->d:Lcom/yandex/div/json/expressions/Expression;

    iput-object p5, p0, Lcom/yandex/div2/DivText$Image;->e:Lcom/yandex/div/json/expressions/Expression;

    iput-object p6, p0, Lcom/yandex/div2/DivText$Image;->f:Lcom/yandex/div/json/expressions/Expression;

    iput-object p7, p0, Lcom/yandex/div2/DivText$Image;->g:Lcom/yandex/div/json/expressions/Expression;

    iput-object p8, p0, Lcom/yandex/div2/DivText$Image;->h:Lcom/yandex/div/json/expressions/Expression;

    iput-object p9, p0, Lcom/yandex/div2/DivText$Image;->i:Lcom/yandex/div/json/expressions/Expression;

    iput-object p10, p0, Lcom/yandex/div2/DivText$Image;->j:Lcom/yandex/div2/DivFixedSize;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivText$Image;Loj3;Loj3;)Z
    .locals 7

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->a:Lcom/yandex/div2/DivText$Image$Accessibility;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p1, Lcom/yandex/div2/DivText$Image;->a:Lcom/yandex/div2/DivText$Image$Accessibility;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivText$Image$Accessibility;->a(Lcom/yandex/div2/DivText$Image$Accessibility;Loj3;Loj3;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/yandex/div2/DivText$Image;->a:Lcom/yandex/div2/DivText$Image$Accessibility;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lcom/yandex/div2/DivText$Image;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->c:Lcom/yandex/div2/DivFixedSize;

    iget-object v3, p1, Lcom/yandex/div2/DivText$Image;->c:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivFixedSize;->a(Lcom/yandex/div2/DivFixedSize;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lcom/yandex/div2/DivText$Image;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p1, Lcom/yandex/div2/DivText$Image;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, p1, Lcom/yandex/div2/DivText$Image;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->g:Lcom/yandex/div/json/expressions/Expression;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    iget-object v4, p1, Lcom/yandex/div2/DivText$Image;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :cond_4
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lcom/yandex/div2/DivText$Image;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lcom/yandex/div2/DivText$Image;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/DivText$Image;->j:Lcom/yandex/div2/DivFixedSize;

    iget-object p1, p1, Lcom/yandex/div2/DivText$Image;->j:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivFixedSize;->a(Lcom/yandex/div2/DivFixedSize;Loj3;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v2

    :cond_5
    return v0
.end method

.method public hash()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div2/DivText$Image;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivText$Image;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->a:Lcom/yandex/div2/DivText$Image$Accessibility;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div2/DivText$Image$Accessibility;->hash()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->c:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1}, Lcom/yandex/div2/DivFixedSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivText$Image;->j:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1}, Lcom/yandex/div2/DivFixedSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivText$Image;->k:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->g8()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTextImageJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivTextImageJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivText$Image;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
