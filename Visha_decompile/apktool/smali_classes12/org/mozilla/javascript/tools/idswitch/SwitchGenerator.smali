.class public Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private P:Ly41;

.field private R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

.field private c_was_defined:Z

.field char_tail_test_threshold:I

.field private columns:[I

.field private default_value:Ljava/lang/String;

.field private pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

.field private source_file:Ljava/lang/String;

.field use_if_threshold:I

.field v_c:Ljava/lang/String;

.field v_guess:Ljava/lang/String;

.field v_id:Ljava/lang/String;

.field v_label:Ljava/lang/String;

.field v_length_suffix:Ljava/lang/String;

.field v_s:Ljava/lang/String;

.field v_switch_label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "L0"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_switch_label:Ljava/lang/String;

    const-string v0, "L"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_label:Ljava/lang/String;

    const-string v0, "s"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    const-string v0, "c"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_c:Ljava/lang/String;

    const-string v0, "X"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    const-string v0, "id"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    const-string v0, "_length"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_length_suffix:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->use_if_threshold:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->char_tail_test_threshold:I

    return-void
.end method

.method private static bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p2, :cond_3

    iget p2, p0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    iget v2, p1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    sub-int/2addr p2, v2

    if-eqz p2, :cond_1

    if-lez p2, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    iget-object p1, p1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-le p0, p1, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method private check_all_is_different(II)V
    .locals 4

    if-eq p1, p2, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v0, v0, p1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-eq p1, p2, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v1, v1, p1

    iget-object v2, v0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    iget-object v3, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->on_same_pair_fail(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method private count_different_chars(III)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_0
    if-eq p1, p2, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private count_different_lengths(II)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_0
    if-eq p1, p2, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v2, v2, p1

    iget v2, v2, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private find_max_different_column(III)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-eq v0, p3, :cond_2

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aget v3, v3, v0

    invoke-direct {p0, p1, p2, v3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->sort_pairs(III)V

    invoke-direct {p0, p1, p2, v3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->count_different_chars(III)I

    move-result v3

    sub-int v4, p2, p1

    if-ne v3, v4, :cond_0

    return v0

    :cond_0
    if-ge v2, v3, :cond_1

    move v1, v0

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p3, -0x1

    if-eq v1, p3, :cond_3

    iget-object p3, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aget p3, p3, v1

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->sort_pairs(III)V

    :cond_3
    return v1
.end method

.method private generate_body(III)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, p3}, Ly41;->h(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_switch_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v1, ": { "

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->default_value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v2, "; String "

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v2, " = null;"

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->c_was_defined:Z

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0}, Ly41;->g()I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v3, " int "

    invoke-virtual {v2, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ly41;->k(C)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v2}, Ly41;->g()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v3}, Ly41;->j()V

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generate_length_switch(III)V

    iget-boolean p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->c_was_defined:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {p1, v0, v2}, Ly41;->e(II)V

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {p1, v3}, Ly41;->h(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string p2, "if ("

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string p2, "!=null && "

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string p2, "!="

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string p2, " && !"

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string p2, ".equals("

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string p2, ")) "

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {p1, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->default_value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {p1}, Ly41;->j()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {p1, v3}, Ly41;->h(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v0, "break "

    invoke-virtual {p1, v0}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_switch_label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {p1, p2}, Ly41;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {p1}, Ly41;->j()V

    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string p1, "}"

    invoke-virtual {p0, p3, p1}, Ly41;->i(ILjava/lang/String;)V

    return-void
.end method

.method private generate_length_switch(III)V
    .locals 11

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->sort_pairs(III)V

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->check_all_is_different(II)V

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->count_different_lengths(II)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    add-int/lit8 v2, p2, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    iget v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->use_if_threshold:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v1, p3}, Ly41;->h(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v4, "int "

    invoke-virtual {v1, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_length_suffix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v4, ".length();"

    invoke-virtual {v1, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v1}, Ly41;->j()V

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v1, p3}, Ly41;->h(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v4, ": switch ("

    invoke-virtual {v1, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v4, ".length()) {"

    invoke-virtual {v1, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v1}, Ly41;->j()V

    move v1, v2

    :goto_0
    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v4, v4, p1

    iget v4, v4, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    move v5, p1

    :goto_1
    move v6, v5

    :goto_2
    add-int/lit8 v10, v6, 0x1

    if-eq v10, p2, :cond_3

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v2, v2, v10

    iget v2, v2, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    if-eq v2, v4, :cond_2

    goto :goto_3

    :cond_2
    move v6, v10

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v1, :cond_6

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v6, p3}, Ly41;->h(I)V

    if-eq v5, p1, :cond_4

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v7, "else "

    invoke-virtual {v6, v7}, Ly41;->m(Ljava/lang/String;)V

    :cond_4
    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v7, "if ("

    invoke-virtual {v6, v7}, Ly41;->m(Ljava/lang/String;)V

    if-ne v0, v3, :cond_5

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v7, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ly41;->m(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v7, ".length()=="

    invoke-virtual {v6, v7}, Ly41;->m(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v7, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ly41;->m(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v7, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_length_suffix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ly41;->m(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v7, "=="

    invoke-virtual {v6, v7}, Ly41;->m(Ljava/lang/String;)V

    :goto_4
    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v6, v4}, Ly41;->l(I)V

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v6, ") {"

    invoke-virtual {v4, v6}, Ly41;->m(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v4, p3, 0x1

    move v7, v4

    goto :goto_6

    :cond_6
    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v6, p3}, Ly41;->h(I)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v7, "case "

    invoke-virtual {v6, v7}, Ly41;->m(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v6, v4}, Ly41;->l(I)V

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ly41;->m(Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    xor-int/lit8 v8, v1, 0x1

    move-object v4, p0

    move v6, v10

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generate_letter_switch(IIIZZ)V

    const-string v4, "}"

    if-eqz v1, :cond_7

    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v5, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v5}, Ly41;->j()V

    goto :goto_7

    :cond_7
    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v6, "break "

    invoke-virtual {v5, v6}, Ly41;->m(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ly41;->m(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ly41;->m(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v5}, Ly41;->j()V

    :goto_7
    if-ne v10, p2, :cond_9

    if-nez v1, :cond_8

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {p1, p3}, Ly41;->h(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {p1, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {p0}, Ly41;->j()V

    :cond_8
    return-void

    :cond_9
    move v4, v2

    move v5, v10

    goto/16 :goto_1
.end method

.method private generate_letter_switch(IIIZZ)V
    .locals 8

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v0, v0, p1

    iget v4, v0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    const/4 v0, 0x0

    :goto_0
    if-eq v0, v4, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generate_letter_switch_r(IIIIZZ)Z

    return-void
.end method

.method private generate_letter_switch_r(IIIIZZ)Z
    .locals 23

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v0, p3

    move/from16 v10, p4

    add-int/lit8 v1, v8, 0x1

    const-string v11, ") {"

    const-string v12, "if ("

    const-string v2, ".charAt("

    const-string v13, ";"

    const/16 v14, 0x20

    const-string v3, "="

    const/4 v15, 0x0

    const/4 v6, 0x1

    if-ne v1, v9, :cond_3

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v1, v14}, Ly41;->k(C)V

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v1, v1, v8

    iget v4, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->char_tail_test_threshold:I

    if-le v0, v4, :cond_0

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v2, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ly41;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v13}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v1, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v13}, Ly41;->m(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v4, "; break "

    if-nez v0, :cond_1

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v1, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_switch_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v13}, Ly41;->m(Ljava/lang/String;)V

    move v15, v6

    goto/16 :goto_1

    :cond_1
    iget-object v5, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v5, v12}, Ly41;->m(Ljava/lang/String;)V

    iget-object v5, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aget v5, v5, v15

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v9, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ly41;->m(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v8, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v8, v5}, Ly41;->l(I)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v9, ")=="

    invoke-virtual {v8, v9}, Ly41;->m(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v10, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v8, v5}, Ly41;->o(I)V

    :goto_0
    if-eq v6, v0, :cond_2

    iget-object v5, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v8, " && "

    invoke-virtual {v5, v8}, Ly41;->m(Ljava/lang/String;)V

    iget-object v5, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aget v5, v5, v6

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v10, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ly41;->m(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v8, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v8, v5}, Ly41;->l(I)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v8, v9}, Ly41;->m(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v10, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v8, v5}, Ly41;->o(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v11}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v1, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v4}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_switch_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v1, ";}"

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    :goto_1
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v14}, Ly41;->k(C)V

    return v15

    :cond_3
    invoke-direct/range {p0 .. p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->find_max_different_column(III)I

    move-result v16

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aget v5, v1, v16

    invoke-direct {v7, v8, v9, v5}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->count_different_chars(III)I

    move-result v1

    iget-object v4, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    add-int/lit8 v17, v0, -0x1

    aget v0, v4, v17

    aput v0, v4, v16

    if-eqz p6, :cond_4

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0}, Ly41;->j()V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v10}, Ly41;->h(I)V

    goto :goto_2

    :cond_4
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v14}, Ly41;->k(C)V

    :goto_2
    iget v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->use_if_threshold:I

    if-gt v1, v0, :cond_5

    iput-boolean v6, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->c_was_defined:Z

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v5}, Ly41;->l(I)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    move/from16 v18, p5

    move/from16 v19, v6

    goto :goto_4

    :cond_5
    if-nez p5, :cond_6

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    move v0, v6

    goto :goto_3

    :cond_6
    move/from16 v0, p5

    :goto_3
    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v3, "switch ("

    invoke-virtual {v1, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v3, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v1, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v1, v5}, Ly41;->l(I)V

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v2, ")) {"

    invoke-virtual {v1, v2}, Ly41;->m(Ljava/lang/String;)V

    move/from16 v18, v0

    move/from16 v19, v15

    :goto_4
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v0, v0, v8

    iget-object v0, v0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v8

    move v2, v1

    move v3, v15

    :goto_5
    add-int/lit8 v4, v2, 0x1

    if-eq v4, v9, :cond_7

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_8

    :cond_7
    move/from16 v20, v3

    goto :goto_6

    :cond_8
    move v2, v4

    goto :goto_5

    :goto_6
    if-eqz v19, :cond_a

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v2}, Ly41;->j()V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v2, v10}, Ly41;->h(I)V

    if-eq v1, v8, :cond_9

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v3, "else "

    invoke-virtual {v2, v3}, Ly41;->m(Ljava/lang/String;)V

    :cond_9
    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v2, v12}, Ly41;->m(Ljava/lang/String;)V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v3, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v2, v0}, Ly41;->o(I)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v11}, Ly41;->m(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v0, v10, 0x1

    move/from16 v21, v0

    goto :goto_8

    :cond_a
    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v2}, Ly41;->j()V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v2, v10}, Ly41;->h(I)V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v3, "case "

    invoke-virtual {v2, v3}, Ly41;->m(Ljava/lang/String;)V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v2, v0}, Ly41;->o(I)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    goto :goto_7

    :goto_8
    move-object/from16 v0, p0

    move v2, v4

    move/from16 v3, v17

    move v15, v4

    move/from16 v4, v21

    move/from16 v21, v5

    move/from16 v5, v18

    move/from16 v22, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generate_letter_switch_r(IIIIZZ)Z

    move-result v0

    const-string v1, "}"

    if-eqz v19, :cond_b

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    if-nez v0, :cond_c

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    const-string v2, "break "

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ly41;->m(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v13}, Ly41;->m(Ljava/lang/String;)V

    :cond_c
    :goto_9
    if-ne v15, v9, :cond_10

    if-eqz v19, :cond_e

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0}, Ly41;->j()V

    if-eqz p6, :cond_d

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v0, v1}, Ly41;->h(I)V

    goto :goto_a

    :cond_d
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v10}, Ly41;->h(I)V

    goto :goto_a

    :cond_e
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0}, Ly41;->j()V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v10}, Ly41;->h(I)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v1}, Ly41;->m(Ljava/lang/String;)V

    if-eqz p6, :cond_f

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0}, Ly41;->j()V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v0, v1}, Ly41;->h(I)V

    goto :goto_a

    :cond_f
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    invoke-virtual {v0, v14}, Ly41;->k(C)V

    :goto_a
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aput v21, v0, v16

    const/4 v0, 0x0

    return v0

    :cond_10
    move v1, v15

    move v2, v1

    move/from16 v0, v20

    move v3, v0

    move/from16 v5, v21

    move/from16 v6, v22

    const/4 v15, 0x0

    goto/16 :goto_5
.end method

.method private static heap4Sort([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;III)V
    .locals 4

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->makeHeap4([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;III)V

    :goto_0
    if-le p2, v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    add-int v1, p1, p2

    aget-object v2, p0, v1

    aget-object v3, p0, p1

    aput-object v3, p0, v1

    aput-object v2, p0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->heapify4([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;IIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static heapify4([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;IIII)V
    .locals 10

    add-int v0, p1, p3

    aget-object v0, p0, v0

    :goto_0
    shl-int/lit8 v1, p3, 0x2

    or-int/lit8 v2, v1, 0x1

    or-int/lit8 v3, v1, 0x2

    or-int/lit8 v4, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    if-lt v1, p2, :cond_3

    if-ge v2, p2, :cond_2

    add-int v1, p1, v2

    aget-object v1, p0, v1

    if-eq v3, p2, :cond_1

    add-int v5, p1, v3

    aget-object v5, p0, v5

    invoke-static {v5, v1, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    move-object v1, v5

    :cond_0
    if-eq v4, p2, :cond_1

    add-int p2, p1, v4

    aget-object p2, p0, p2

    invoke-static {p2, v1, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, p2

    move v2, v4

    :cond_1
    invoke-static {v1, v0, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/2addr p3, p1

    aput-object v1, p0, p3

    add-int/2addr p1, v2

    aput-object v0, p0, p1

    :cond_2
    return-void

    :cond_3
    add-int v5, p1, v2

    aget-object v5, p0, v5

    add-int v6, p1, v3

    aget-object v6, p0, v6

    add-int v7, p1, v4

    aget-object v7, p0, v7

    add-int v8, p1, v1

    aget-object v8, p0, v8

    invoke-static {v6, v5, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v9

    if-eqz v9, :cond_4

    move v2, v3

    move-object v5, v6

    :cond_4
    invoke-static {v8, v7, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v4, v1

    move-object v7, v8

    :cond_5
    invoke-static {v7, v5, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v4

    move-object v5, v7

    :cond_6
    invoke-static {v0, v5, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    add-int/2addr p3, p1

    aput-object v5, p0, p3

    add-int p3, p1, v2

    aput-object v0, p0, p3

    move p3, v2

    goto :goto_0
.end method

.method private static makeHeap4([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;III)V
    .locals 1

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v0, v0, 0x2

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->heapify4([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private on_same_pair_fail(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;)Lorg/mozilla/javascript/EvaluatorException;
    .locals 7

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->getLineNumber()I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->getLineNumber()I

    move-result p2

    if-le p2, v0, :cond_0

    move v4, p2

    goto :goto_0

    :cond_0
    move v4, v0

    move v0, p2

    :goto_0
    iget-object p1, p1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "msg.idswitch.same_string"

    invoke-static {v0, p1, p2}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->source_file:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    return-object p0
.end method

.method private sort_pairs(III)V
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    sub-int/2addr p2, p1

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->heap4Sort([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;III)V

    return-void
.end method


# virtual methods
.method public generateSwitch([Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 2
    new-array v1, v0, [Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    .line 3
    new-instance v3, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    mul-int/lit8 v4, v2, 0x2

    aget-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p1, v4

    invoke-direct {v3, v5, v4}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v1, p2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generateSwitch([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Ljava/lang/String;)V

    return-void
.end method

.method public generateSwitch([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Ljava/lang/String;)V
    .locals 1

    .line 5
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    .line 7
    iput-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->default_value:Ljava/lang/String;

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p2, v0, p1}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generate_body(III)V

    return-void
.end method

.method public getCodePrinter()Ly41;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    return-object p0
.end method

.method public getReporter()Lorg/mozilla/javascript/tools/ToolErrorReporter;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    return-object p0
.end method

.method public getSourceFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->source_file:Ljava/lang/String;

    return-object p0
.end method

.method public setCodePrinter(Ly41;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Ly41;

    return-void
.end method

.method public setReporter(Lorg/mozilla/javascript/tools/ToolErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    return-void
.end method

.method public setSourceFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->source_file:Ljava/lang/String;

    return-void
.end method
