.class public abstract Lbvc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbvc$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?s)^ +[/\u2022] +(.*?) +$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbvc;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lbvc;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lbvc;->k(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method public static synthetic c(Lbvc$a;)I
    .locals 0

    invoke-static {p0}, Lbvc;->m(Lbvc$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lbvc;->l(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lbvc;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lbvc$a;)I
    .locals 0

    invoke-static {p0}, Lbvc;->n(Lbvc$a;)I

    move-result p0

    return p0
.end method

.method public static g(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const-string v0, "commandRuns"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lw50;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lx50;

    invoke-direct {v0, v1}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lyuc;

    invoke-direct {v0, p1, p2}, Lyuc;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static h(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const-string v0, "styleRuns"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lw50;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lx50;

    invoke-direct {v0, v1}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lxuc;

    invoke-direct {v0, p1, p2}, Lxuc;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static i(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v1, v2}, Lbvc;->g(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p0, v1, v2}, Lbvc;->h(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V

    new-instance p0, Lvuc;

    invoke-direct {p0}, Lvuc;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Lwuc;

    invoke-direct {p0}, Lwuc;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v1, v2, v0}, Lbvc;->q(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/grack/nanojson/JsonObject;)Ljava/util/function/Function;
    .locals 2

    const-string v0, "onTapOptions"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "accessibilityInfo"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "accessibilityLabel"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " Channel Link"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "YouTube: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lavc;

    invoke-direct {v0, p0}, Lavc;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lzuc;

    invoke-direct {v0}, Lzuc;-><init>()V

    :goto_1
    return-object v0
.end method

.method public static synthetic k(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 5

    const-string v0, "onTap"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "innertubeCommand"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "startIndex"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "length"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v1, :cond_2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcxc;->P(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lbvc;->j(Lcom/grack/nanojson/JsonObject;)Ljava/util/function/Function;

    move-result-object p2

    new-instance v3, Lbvc$a;

    const-string v4, "</a>"

    invoke-direct {v3, v0, v4, v1, p2}, Lbvc$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lbvc$a;

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v4, v1, p2}, Lbvc$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic l(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 5

    const-string v0, "startIndex"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "length"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v0, :cond_3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    const-string v2, "strikethrough"

    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lbvc$a;

    const-string v3, "<s>"

    const-string v4, "</s>"

    invoke-direct {v2, v3, v4, v0}, Lbvc$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lbvc$a;

    invoke-direct {v2, v3, v4, v1}, Lbvc$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "italic"

    invoke-virtual {p2, v3, v2}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lbvc$a;

    const-string v3, "<i>"

    const-string v4, "</i>"

    invoke-direct {v2, v3, v4, v0}, Lbvc$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lbvc$a;

    invoke-direct {v2, v3, v4, v1}, Lbvc$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "weightLabel"

    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "FONT_WEIGHT_NORMAL"

    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Lbvc$a;

    const-string v2, "<b>"

    const-string v3, "</b>"

    invoke-direct {p2, v2, v3, v0}, Lbvc$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lbvc$a;

    invoke-direct {p0, v2, v3, v1}, Lbvc$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic m(Lbvc$a;)I
    .locals 0

    iget p0, p0, Lbvc$a;->c:I

    return p0
.end method

.method public static synthetic n(Lbvc$a;)I
    .locals 0

    iget p0, p0, Lbvc$a;->c:I

    return p0
.end method

.method public static synthetic o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lbvc;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static synthetic p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static q(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v0, 0xa0

    const/16 v1, 0x20

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbvc$a;

    iget v6, v6, Lbvc$a;->c:I

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbvc$a;

    iget v7, v7, Lbvc$a;->c:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbvc$a;

    iget v6, v6, Lbvc$a;->c:I

    :goto_1
    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jsoup/nodes/Entities;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbvc$a;

    iget v4, v4, Lbvc$a;->c:I

    if-ne v4, v6, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbvc$a;

    add-int/lit8 v3, v3, 0x1

    :goto_2
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbvc$a;

    invoke-virtual {v7, v4}, Lbvc$a;->a(Lbvc$a;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v4, v7, Lbvc$a;->d:Ljava/util/function/Function;

    if-eqz v4, :cond_1

    iget v4, v7, Lbvc$a;->e:I

    if-ltz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    iget-object v9, v7, Lbvc$a;->d:Ljava/util/function/Function;

    iget v10, v7, Lbvc$a;->e:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v4, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v4, v7, Lbvc$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    iget-object v8, v7, Lbvc$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbvc$a;

    iget-object v7, v4, Lbvc$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbvc$a;

    iget-object v7, v4, Lbvc$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    iput v7, v4, Lbvc$a;->e:I

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    :cond_5
    move v4, v6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    const-string p2, "<br>"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "  "

    const-string p2, " &nbsp;"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
