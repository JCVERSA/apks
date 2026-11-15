.class public final Lcom/yandex/div2/DivState$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivState$State$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/yandex/div2/DivState$State$a;

.field public static final h:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/DivAnimation;

.field public final b:Lcom/yandex/div2/DivAnimation;

.field public final c:Lcom/yandex/div2/Div;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivState$State$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivState$State$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivState$State;->g:Lcom/yandex/div2/DivState$State$a;

    sget-object v0, Lcom/yandex/div2/DivState$State$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivState$State$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivState$State;->h:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/Div;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string v0, "stateId"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivState$State;->a:Lcom/yandex/div2/DivAnimation;

    iput-object p2, p0, Lcom/yandex/div2/DivState$State;->b:Lcom/yandex/div2/DivAnimation;

    iput-object p3, p0, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    iput-object p4, p0, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/yandex/div2/DivState$State;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic b(Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/Div;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/yandex/div2/DivState$State;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/yandex/div2/DivState$State;->a:Lcom/yandex/div2/DivAnimation;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/yandex/div2/DivState$State;->b:Lcom/yandex/div2/DivAnimation;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/yandex/div2/DivState$State;->e:Ljava/util/List;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/yandex/div2/DivState$State;->a(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/Div;Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div2/DivState$State;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/Div;Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div2/DivState$State;
    .locals 6

    const-string p0, "stateId"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivState$State;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div2/DivState$State;-><init>(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/Div;Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public final c(Lcom/yandex/div2/DivState$State;Loj3;Loj3;)Z
    .locals 5

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivState$State;->a:Lcom/yandex/div2/DivAnimation;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p1, Lcom/yandex/div2/DivState$State;->a:Lcom/yandex/div2/DivAnimation;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAnimation;->a(Lcom/yandex/div2/DivAnimation;Loj3;Loj3;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/yandex/div2/DivState$State;->a:Lcom/yandex/div2/DivAnimation;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/yandex/div2/DivState$State;->b:Lcom/yandex/div2/DivAnimation;

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/yandex/div2/DivState$State;->b:Lcom/yandex/div2/DivAnimation;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAnimation;->a(Lcom/yandex/div2/DivAnimation;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/yandex/div2/DivState$State;->b:Lcom/yandex/div2/DivAnimation;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/Div;->a(Lcom/yandex/div2/Div;Loj3;Loj3;)Z

    move-result v1

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/yandex/div2/DivState$State;->e:Ljava/util/List;

    if-eqz p0, :cond_b

    iget-object p1, p1, Lcom/yandex/div2/DivState$State;->e:Ljava/util/List;

    if-nez p1, :cond_7

    return v0

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_8

    goto :goto_4

    :cond_8
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_9

    invoke-static {}, Ly71;->u()V

    :cond_9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAction;

    check-cast v3, Lcom/yandex/div2/DivAction;

    invoke-virtual {v3, v1, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    move v1, v4

    goto :goto_3

    :cond_b
    iget-object p0, p1, Lcom/yandex/div2/DivState$State;->e:Ljava/util/List;

    if-nez p0, :cond_d

    :cond_c
    move p0, v2

    goto :goto_5

    :cond_d
    :goto_4
    move p0, v0

    :goto_5
    if-eqz p0, :cond_e

    move v0, v2

    :cond_e
    return v0
.end method

.method public hash()I
    .locals 4

    iget-object v0, p0, Lcom/yandex/div2/DivState$State;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivState$State;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivState$State;->a:Lcom/yandex/div2/DivAnimation;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div2/DivAnimation;->hash()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivState$State;->b:Lcom/yandex/div2/DivAnimation;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div2/DivAnimation;->hash()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->hash()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivState$State;->e:Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivAction;

    invoke-virtual {v3}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :cond_4
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivState$State;->f:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->q7()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/v3;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/v3;->e(Lex7;Lcom/yandex/div2/DivState$State;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
