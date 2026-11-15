.class public Lorg/mozilla/javascript/tools/idswitch/Main;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GENERATED_TAG:I = 0x2

.field private static final GENERATED_TAG_STR:Ljava/lang/String; = "generated"

.field private static final NORMAL_LINE:I = 0x0

.field private static final STRING_TAG:I = 0x3

.field private static final STRING_TAG_STR:Ljava/lang/String; = "string"

.field private static final SWITCH_TAG:I = 0x1

.field private static final SWITCH_TAG_STR:Ljava/lang/String; = "string_id_map"


# instance fields
.field private P:Ly41;

.field private R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

.field private final all_pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/tools/idswitch/IdValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

.field private source_file:Ljava/lang/String;

.field private tag_definition_end:I

.field private tag_value_end:I

.field private tag_value_start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    return-void
.end method

.method private add_id([CIIII)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    sub-int/2addr p5, p4

    invoke-direct {v0, p1, p4, p5}, Ljava/lang/String;-><init>([CII)V

    new-instance p4, Ljava/lang/String;

    sub-int/2addr p3, p2

    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    new-instance p1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    invoke-direct {p1, v0, p4}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {p2}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->setLineNumber(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static equals(Ljava/lang/String;[CII)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    :goto_0
    if-eq p2, p3, :cond_1

    aget-char v1, p1, p2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method private exec([Ljava/lang/String;)I
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/tools/ToolErrorReporter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;-><init>(ZLjava/io/PrintStream;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->process_options([Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "msg.idswitch.no_file_argument"

    invoke-static {p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    return v1

    :cond_0
    if-le v0, v2, :cond_1

    const-string p1, "msg.idswitch.too_many_arguments"

    invoke-static {p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    return v1

    :cond_1
    new-instance v0, Ly41;

    invoke-direct {v0}, Ly41;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Ly41;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ly41;->q(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Ly41;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ly41;->r(I)V

    :try_start_0
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->process_file(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_1

    return v2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    return v1

    :goto_0
    const-string v0, "msg.idswitch.io_error"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->print_error(Ljava/lang/String;)V

    return v1
.end method

.method private extract_line_tag_id([CII)I
    .locals 9

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->look_for_slash_slash([CII)I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_a

    add-int/lit8 p2, p2, 0x2

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p1, v0, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v0

    if-eq v0, p3, :cond_a

    aget-char v3, p1, v0

    const/16 v4, 0x23

    if-ne v3, v4, :cond_a

    add-int/lit8 v3, v0, 0x1

    if-eq v3, p3, :cond_1

    aget-char v5, p1, v3

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v0, 0x2

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move v5, v3

    :goto_2
    const/16 v6, 0x3d

    if-eq v5, p3, :cond_3

    aget-char v7, p1, v5

    if-eq v7, v4, :cond_3

    if-eq v7, v6, :cond_3

    invoke-static {v7}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_white_space(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eq v5, p3, :cond_a

    invoke-static {p1, v5, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v7

    if-eq v7, p3, :cond_a

    aget-char v8, p1, v7

    if-eq v8, v6, :cond_4

    if-ne v8, v4, :cond_a

    :cond_4
    invoke-direct {p0, p1, v3, v5, p2}, Lorg/mozilla/javascript/tools/idswitch/Main;->get_tag_id([CIIZ)I

    move-result v1

    if-eqz v1, :cond_a

    const/4 p2, 0x0

    if-ne v8, v4, :cond_6

    if-eqz v0, :cond_5

    neg-int v1, v1

    invoke-static {v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_value_type(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p2, "msg.idswitch.no_end_usage"

    :cond_5
    add-int/2addr v7, v2

    iput v7, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_definition_end:I

    goto :goto_5

    :cond_6
    if-eqz v0, :cond_7

    const-string p2, "msg.idswitch.no_end_with_value"

    goto :goto_4

    :cond_7
    invoke-static {v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_value_type(I)Z

    move-result v0

    if-nez v0, :cond_8

    const-string p2, "msg.idswitch.no_value_allowed"

    :cond_8
    :goto_4
    add-int/2addr v7, v2

    invoke-direct {p0, p1, v7, p3, v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->extract_tag_value([CIII)I

    move-result p1

    move v1, p1

    :goto_5
    if-nez p2, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_name(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_a
    :goto_6
    return v1
.end method

.method private extract_tag_value([CIII)I
    .locals 4

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result p2

    if-eq p2, p3, :cond_4

    move v0, p2

    :goto_0
    if-eq v0, p3, :cond_3

    aget-char v1, p1, v0

    invoke-static {v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_white_space(I)Z

    move-result v2

    const/16 v3, 0x23

    if-eqz v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-static {p1, v1, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v1

    if-eq v1, p3, :cond_0

    aget-char v2, p1, v1

    if-ne v2, v3, :cond_0

    move p1, v0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move p1, p2

    :goto_1
    if-eq v0, p3, :cond_4

    iput p2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_start:I

    iput p1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_definition_end:I

    goto :goto_2

    :cond_4
    const/4 p4, 0x0

    :goto_2
    return p4
.end method

.method private generate_java_code()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Ly41;

    invoke-virtual {v0}, Ly41;->b()V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;

    invoke-direct {v1}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->char_tail_test_threshold:I

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->setReporter(Lorg/mozilla/javascript/tools/ToolErrorReporter;)V

    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Ly41;

    invoke-virtual {v1, p0}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->setCodePrinter(Ly41;)V

    const-string p0, "0"

    invoke-virtual {v1, v0, p0}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generateSwitch([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Ljava/lang/String;)V

    return-void
.end method

.method private get_tag_id([CIIZ)I
    .locals 0

    if-eqz p4, :cond_1

    const-string p0, "string_id_map"

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->equals(Ljava/lang/String;[CII)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "generated"

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->equals(Ljava/lang/String;[CII)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string p0, "string"

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->equals(Ljava/lang/String;[CII)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private get_time_stamp()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, " \'Last update:\' yyyy-MM-dd HH:mm:ss z"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static is_value_type(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static is_white_space(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private look_for_id_definitions([CIIZ)V
    .locals 6

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v2

    const-string p2, "Id_"

    invoke-static {p2, p1, v2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_matched_prefix(Ljava/lang/String;[CII)I

    move-result p2

    if-ltz p2, :cond_1

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_name_char([CII)I

    move-result v3

    if-eq p2, v3, :cond_1

    invoke-static {p1, v3, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v0

    if-eq v0, p3, :cond_1

    aget-char p3, p1, v0

    const/16 v0, 0x3d

    if-ne p3, v0, :cond_1

    if-eqz p4, :cond_0

    iget p2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_start:I

    iget p3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_end:I

    move v4, p2

    move v5, p3

    goto :goto_0

    :cond_0
    move v4, p2

    move v5, v3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/tools/idswitch/Main;->add_id([CIIII)V

    :cond_1
    return-void
.end method

.method private look_for_slash_slash([CII)I
    .locals 2

    :cond_0
    :goto_0
    add-int/lit8 p0, p2, 0x2

    if-gt p0, p3, :cond_2

    add-int/lit8 p0, p2, 0x1

    aget-char v0, p1, p2

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x2

    aget-char p0, p1, p0

    if-ne p0, v1, :cond_0

    return p2

    :cond_1
    move p2, p0

    goto :goto_0

    :cond_2
    return p3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/tools/idswitch/Main;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/idswitch/Main;-><init>()V

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->exec([Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private option_error(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg.idswitch.bad_invocation"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->print_error(Ljava/lang/String;)V

    return-void
.end method

.method private print_error(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private process_file()V
    .locals 14

    .line 19
    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getBuffer()[C

    move-result-object v0

    .line 20
    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->startLineLoop()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    .line 21
    :goto_0
    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v8}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->nextLine()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 22
    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v8}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineBegin()I

    move-result v8

    .line 23
    iget-object v9, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v9}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineEnd()I

    move-result v9

    .line 24
    invoke-direct {p0, v0, v8, v9}, Lorg/mozilla/javascript/tools/idswitch/Main;->extract_line_tag_id([CII)I

    move-result v10

    const/4 v11, 0x1

    if-eqz v3, :cond_a

    const/4 v12, 0x2

    if-eq v3, v11, :cond_4

    if-eq v3, v12, :cond_0

    goto :goto_2

    :cond_0
    if-nez v10, :cond_1

    if-gez v4, :cond_3

    move v11, v1

    move v4, v8

    goto/16 :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v10, v9, :cond_c

    if-gez v4, :cond_2

    move v4, v8

    :cond_2
    move v5, v8

    :goto_1
    move v3, v11

    :cond_3
    :goto_2
    move v11, v1

    goto :goto_3

    :cond_4
    if-nez v10, :cond_5

    .line 25
    invoke-direct {p0, v0, v8, v9, v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->look_for_id_definitions([CIIZ)V

    goto :goto_2

    :cond_5
    const/4 v13, 0x3

    if-ne v10, v13, :cond_6

    .line 26
    invoke-direct {p0, v0, v8, v9, v11}, Lorg/mozilla/javascript/tools/idswitch/Main;->look_for_id_definitions([CIIZ)V

    goto :goto_2

    :cond_6
    if-ne v10, v12, :cond_8

    if-ltz v4, :cond_7

    goto :goto_3

    .line 27
    :cond_7
    iget v6, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_definition_end:I

    move v11, v1

    move v7, v9

    move v3, v12

    goto :goto_3

    :cond_8
    if-ne v10, v2, :cond_c

    if-ltz v4, :cond_9

    .line 28
    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 29
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->generate_java_code()V

    .line 30
    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Ly41;

    invoke-virtual {v3}, Ly41;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    .line 32
    invoke-virtual {v8, v4, v5, v3}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->setReplacement(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 33
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->get_time_stamp()Ljava/lang/String;

    move-result-object v3

    .line 34
    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    .line 35
    invoke-virtual {v8, v6, v7, v3}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->setReplacement(IILjava/lang/String;)Z

    :cond_9
    move v3, v1

    move v11, v3

    goto :goto_3

    :cond_a
    if-ne v10, v11, :cond_b

    .line 36
    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v4, v2

    goto :goto_1

    :cond_b
    if-ne v10, v2, :cond_3

    :cond_c
    :goto_3
    if-nez v11, :cond_d

    goto/16 :goto_0

    .line 37
    :cond_d
    const-string v0, "msg.idswitch.bad_tag_order"

    .line 38
    invoke-static {v10}, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_name(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    .line 41
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_e
    if-nez v3, :cond_f

    return-void

    .line 42
    :cond_f
    const-string v0, "msg.idswitch.file_end_in_switch"

    .line 43
    invoke-static {v3}, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_name(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    .line 46
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method private process_options([Ljava/lang/String;)I
    .locals 13

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v0, :cond_7

    aget-object v6, p1, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_6

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-ne v9, v10, :cond_3

    if-ne v7, v8, :cond_0

    aput-object v12, p1, v2

    goto :goto_3

    :cond_0
    const-string v7, "--help"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v5

    goto :goto_2

    :cond_1
    const-string v7, "--version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    const-string v0, "msg.idswitch.bad_option"

    invoke-static {v0, v6}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move v8, v5

    :goto_1
    if-eq v8, v7, :cond_5

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x68

    if-eq v9, v10, :cond_4

    const-string v0, "msg.idswitch.bad_option_char"

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move v3, v5

    goto :goto_1

    :cond_5
    :goto_2
    aput-object v12, p1, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    move v11, v5

    :goto_4
    if-ne v11, v5, :cond_9

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->show_usage()V

    move v11, v1

    :cond_8
    if-eqz v4, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->show_version()V

    goto :goto_5

    :cond_9
    move v1, v11

    :goto_5
    if-eq v1, v5, :cond_a

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_a
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->remove_nulls([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private remove_nulls([Ljava/lang/String;)I
    .locals 3

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p0, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v0, p0, :cond_3

    add-int/lit8 v1, v0, 0x1

    :goto_2
    if-eq v1, p0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v0
.end method

.method private show_usage()V
    .locals 1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "msg.idswitch.usage"

    invoke-static {v0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private show_version()V
    .locals 1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "msg.idswitch.version"

    invoke-static {v0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static skip_matched_prefix(Ljava/lang/String;[CII)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p3, p2

    const/4 v1, -0x1

    if-gt v0, p3, :cond_2

    const/4 p3, 0x0

    :goto_0
    if-eq p3, v0, :cond_1

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-char v3, p1, p2

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move v1, p2

    :cond_2
    :goto_1
    return v1
.end method

.method private static skip_name_char([CII)I
    .locals 2

    :goto_0
    if-eq p1, p2, :cond_4

    aget-char v0, p0, p1

    const/16 v1, 0x61

    if-gt v1, v0, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_3

    :cond_0
    const/16 v1, 0x41

    if-gt v1, v0, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    :cond_1
    const/16 v1, 0x30

    if-gt v1, v0, :cond_2

    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    :cond_2
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return p1
.end method

.method private static skip_white_space([CII)I
    .locals 1

    :goto_0
    if-eq p1, p2, :cond_1

    aget-char v0, p0, p1

    invoke-static {v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_white_space(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private static tag_name(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "generated"

    return-object p0

    :cond_1
    const-string p0, "string_id_map"

    return-object p0

    :cond_2
    const-string p0, "/string_id_map"

    return-object p0

    :cond_3
    const-string p0, "/generated"

    return-object p0
.end method


# virtual methods
.method public process_file(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    .line 2
    new-instance v0, Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    .line 3
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 6
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "ASCII"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->readData(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 9
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->process_file()V

    .line 10
    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->wasModified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 14
    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 15
    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->writeData(Ljava/io/Writer;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw p0

    :cond_2
    :goto_2
    return-void

    :catchall_1
    move-exception p0

    .line 18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p0
.end method
