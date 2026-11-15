.class public final Lcom/yandex/div/core/view2/items/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/div/core/view2/items/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/core/view2/items/a;

    invoke-direct {v0}, Lcom/yandex/div/core/view2/items/a;-><init>()V

    sput-object v0, Lcom/yandex/div/core/view2/items/a;->a:Lcom/yandex/div/core/view2/items/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "scroll_to_position"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v0, "scroll_to_end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :sswitch_2
    const-string v0, "set_current_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :sswitch_3
    const-string v0, "scroll_to_start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :sswitch_4
    const-string v0, "set_previous_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :sswitch_5
    const-string v0, "scroll_forward"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :sswitch_6
    const-string v0, "scroll_backward"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :sswitch_7
    const-string v0, "set_next_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x6aa352be -> :sswitch_7
        -0x59f392eb -> :sswitch_6
        -0x505ffcad -> :sswitch_5
        -0x4c5109c2 -> :sswitch_4
        -0x2deb3130 -> :sswitch_3
        -0x540a92a -> :sswitch_2
        0x25c756c9 -> :sswitch_1
        0x41864ffb -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic d(Lcom/yandex/div/core/view2/items/a;Landroid/net/Uri;IILjava/lang/Object;)I
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/items/a;->c(Landroid/net/Uri;I)I

    move-result p0

    return p0
.end method

.method public static final e(Landroid/net/Uri;Lsv2;Loj3;)Z
    .locals 6

    const-string v0, "uri"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "id param is required to set item"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yandex/div/core/view2/items/b;->b:Lcom/yandex/div/core/view2/items/b$a;

    sget-object v4, Lcom/yandex/div/core/view2/items/a;->a:Lcom/yandex/div/core/view2/items/a;

    invoke-virtual {v4, v2}, Lcom/yandex/div/core/view2/items/a;->b(Ljava/lang/String;)Lcom/yandex/div/core/view2/items/Direction;

    move-result-object v5

    invoke-virtual {v3, v0, p1, p2, v5}, Lcom/yandex/div/core/view2/items/b$a;->a(Ljava/lang/String;Lsv2;Loj3;Lcom/yandex/div/core/view2/items/Direction;)Lcom/yandex/div/core/view2/items/b;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const-string p2, "animated"

    invoke-virtual {p0, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    :goto_0
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "scroll_to_position"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v4, p0, p2, p1}, Lcom/yandex/div/core/view2/items/a;->j(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z

    move-result v1

    goto/16 :goto_1

    :sswitch_1
    const-string p0, "scroll_to_end"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v4, p2, p1}, Lcom/yandex/div/core/view2/items/a;->k(ZLcom/yandex/div/core/view2/items/b;)Z

    move-result v1

    goto :goto_1

    :sswitch_2
    const-string v0, "set_current_item"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v4, p0, p2, p1}, Lcom/yandex/div/core/view2/items/a;->m(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z

    move-result v1

    goto :goto_1

    :sswitch_3
    const-string p0, "scroll_to_start"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v4, p2, p1}, Lcom/yandex/div/core/view2/items/a;->l(ZLcom/yandex/div/core/view2/items/b;)Z

    move-result v1

    goto :goto_1

    :sswitch_4
    const-string v0, "set_previous_item"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v4, p0, p2, p1}, Lcom/yandex/div/core/view2/items/a;->g(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z

    move-result v1

    goto :goto_1

    :sswitch_5
    const-string v0, "scroll_forward"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v4, p0, p2, p1}, Lcom/yandex/div/core/view2/items/a;->i(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z

    move-result v1

    goto :goto_1

    :sswitch_6
    const-string v0, "scroll_backward"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v4, p0, p2, p1}, Lcom/yandex/div/core/view2/items/a;->h(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z

    move-result v1

    goto :goto_1

    :sswitch_7
    const-string v0, "set_next_item"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v4, p0, p2, p1}, Lcom/yandex/div/core/view2/items/a;->f(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z

    move-result v1

    :cond_c
    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x6aa352be -> :sswitch_7
        -0x59f392eb -> :sswitch_6
        -0x505ffcad -> :sswitch_5
        -0x4c5109c2 -> :sswitch_4
        -0x2deb3130 -> :sswitch_3
        -0x540a92a -> :sswitch_2
        0x25c756c9 -> :sswitch_1
        0x41864ffb -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/yandex/div/core/view2/items/Direction;
    .locals 0

    const-string p0, "set_previous_item"

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/yandex/div/core/view2/items/Direction;->PREVIOUS:Lcom/yandex/div/core/view2/items/Direction;

    goto :goto_0

    :cond_0
    const-string p0, "set_next_item"

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/yandex/div/core/view2/items/Direction;->NEXT:Lcom/yandex/div/core/view2/items/Direction;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/div/core/view2/items/Direction;->NEXT:Lcom/yandex/div/core/view2/items/Direction;

    :goto_0
    return-object p0
.end method

.method public final c(Landroid/net/Uri;I)I
    .locals 0

    const-string p0, "step"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a number"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p2
.end method

.method public final f(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2, v0}, Lcom/yandex/div/core/view2/items/a;->d(Lcom/yandex/div/core/view2/items/a;Landroid/net/Uri;IILjava/lang/Object;)I

    move-result p0

    const-string v0, "overflow"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p0, p2}, Lcom/yandex/div/core/view2/items/b;->a(Ljava/lang/String;IZ)V

    return v2
.end method

.method public final g(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2, v0}, Lcom/yandex/div/core/view2/items/a;->d(Lcom/yandex/div/core/view2/items/a;Landroid/net/Uri;IILjava/lang/Object;)I

    move-result p0

    const-string v0, "overflow"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    neg-int p0, p0

    invoke-virtual {p3, p1, p0, p2}, Lcom/yandex/div/core/view2/items/b;->a(Ljava/lang/String;IZ)V

    return v2
.end method

.method public final h(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2, v0}, Lcom/yandex/div/core/view2/items/a;->d(Lcom/yandex/div/core/view2/items/a;Landroid/net/Uri;IILjava/lang/Object;)I

    move-result p0

    const-string v0, "overflow"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    neg-int p0, p0

    invoke-virtual {p3, p1, p0, p2}, Lcom/yandex/div/core/view2/items/b;->c(Ljava/lang/String;IZ)V

    return v2
.end method

.method public final i(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2, v0}, Lcom/yandex/div/core/view2/items/a;->d(Lcom/yandex/div/core/view2/items/a;Landroid/net/Uri;IILjava/lang/Object;)I

    move-result p0

    const-string v0, "overflow"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p0, p2}, Lcom/yandex/div/core/view2/items/b;->c(Ljava/lang/String;IZ)V

    return v2
.end method

.method public final j(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2, v0}, Lcom/yandex/div/core/view2/items/a;->d(Lcom/yandex/div/core/view2/items/a;Landroid/net/Uri;IILjava/lang/Object;)I

    move-result p0

    invoke-virtual {p3, p0, p2}, Lcom/yandex/div/core/view2/items/b;->d(IZ)V

    return v2
.end method

.method public final k(ZLcom/yandex/div/core/view2/items/b;)Z
    .locals 0

    invoke-virtual {p2, p1}, Lcom/yandex/div/core/view2/items/b;->e(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final l(ZLcom/yandex/div/core/view2/items/b;)Z
    .locals 0

    invoke-virtual {p2, p1}, Lcom/yandex/div/core/view2/items/b;->f(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final m(Landroid/net/Uri;ZLcom/yandex/div/core/view2/items/b;)Z
    .locals 0

    const-string p0, "item"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "item is required to set current item"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_0
    return p1

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p3, p0, p2}, Lcom/yandex/div/core/view2/items/b;->g(IZ)V

    const/4 p0, 0x1

    return p0

    :catch_0
    sget-object p2, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a number"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_2
    return p1
.end method
