.class public final Lrhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhe;


# static fields
.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Z

.field public final b:Lqhe;

.field public final c:Lu4h;

.field public d:Ljava/util/Map;

.field public e:F

.field public f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lrhe;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    iput v0, p0, Lrhe;->e:F

    iput v0, p0, Lrhe;->f:F

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Lrhe;->c:Lu4h;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lrhe;->a:Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lkfh;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Format:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ln7g;->d(Z)V

    invoke-static {v0}, Lqhe;->a(Ljava/lang/String;)Lqhe;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lrhe;->b:Lqhe;

    new-instance v0, Lu4h;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lu4h;-><init>([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, p1}, Lrhe;->e(Lu4h;Ljava/nio/charset/Charset;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lrhe;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lrhe;->b:Lqhe;

    return-void
.end method

.method private static b(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, -0x800001

    return p0

    :cond_0
    const p0, 0x3f733333    # 0.95f

    return p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3d4ccccd    # 0.05f

    return p0
.end method

.method public static c(JLjava/util/List;Ljava/util/List;)I
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez v0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_3
    add-int/lit8 p0, v0, -0x1

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, p1

    :goto_1
    invoke-interface {p3, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0
.end method

.method public static d(Ljava/lang/String;)J
    .locals 10

    sget-object v0, Lrhe;->g:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lkfh;->a:I

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v2, 0xd693a400L

    mul-long/2addr v0, v2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x3938700

    mul-long/2addr v2, v4

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    mul-long/2addr v6, v8

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    add-long/2addr v0, v6

    return-wide v0
.end method


# virtual methods
.method public final a([BIILwge;Lqfg;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    add-int v4, v1, p3

    iget-object v5, v0, Lrhe;->c:Lu4h;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6, v4}, Lu4h;->j([BI)V

    invoke-virtual {v5, v1}, Lu4h;->l(I)V

    invoke-virtual {v5}, Lu4h;->c()Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    iget-boolean v4, v0, Lrhe;->a:Z

    if-nez v4, :cond_1

    invoke-virtual {v0, v5, v1}, Lrhe;->e(Lu4h;Ljava/nio/charset/Charset;)V

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lrhe;->b:Lqhe;

    :goto_0
    invoke-virtual {v5, v1}, Lu4h;->T(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    if-eqz v7, :cond_17

    const-string v11, "Format:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v7}, Lqhe;->a(Ljava/lang/String;)Lqhe;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v11, "Dialogue:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "SsaParser"

    if-nez v4, :cond_4

    const-string v8, "Skipping dialogue line before complete format: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object/from16 v16, v1

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_e

    :cond_4
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ln7g;->d(Z)V

    const/16 v11, 0x9

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iget v13, v4, Lqhe;->e:I

    const-string v14, ","

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    array-length v14, v11

    if-eq v14, v13, :cond_5

    const-string v8, "Skipping dialogue line with fewer columns than format: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget v13, v4, Lqhe;->a:I

    aget-object v13, v11, v13

    invoke-static {v13}, Lrhe;->d(Ljava/lang/String;)J

    move-result-wide v13

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v17, v13, v15

    const-string v6, "Skipping invalid timing: "

    if-nez v17, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget v9, v4, Lqhe;->b:I

    aget-object v9, v11, v9

    move-object/from16 p4, v11

    invoke-static {v9}, Lrhe;->d(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v9, v10, v15

    if-eqz v9, :cond_7

    cmp-long v9, v10, v13

    if-gtz v9, :cond_8

    :cond_7
    move-object/from16 v16, v1

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_d

    :cond_8
    iget-object v6, v0, Lrhe;->d:Ljava/util/Map;

    if-eqz v6, :cond_9

    iget v7, v4, Lqhe;->c:I

    if-eq v7, v8, :cond_9

    aget-object v7, p4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luhe;

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    :goto_2
    iget v7, v4, Lqhe;->d:I

    aget-object v7, p4, v7

    invoke-static {v7}, Lthe;->a(Ljava/lang/String;)Lthe;

    move-result-object v9

    invoke-static {v7}, Lthe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "\\N"

    const-string v8, "\n"

    invoke-virtual {v7, v15, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "\\n"

    invoke-virtual {v7, v15, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\h"

    const-string v15, "\u00a0"

    invoke-virtual {v7, v8, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Lrhe;->e:F

    iget v15, v0, Lrhe;->f:F

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Lzvf;

    invoke-direct {v7}, Lzvf;-><init>()V

    invoke-virtual {v7, v0}, Lzvf;->l(Ljava/lang/CharSequence;)Lzvf;

    move-object/from16 v16, v1

    const v17, -0x800001

    if-eqz v6, :cond_11

    iget-object v1, v6, Luhe;->c:Ljava/lang/Integer;

    move-object/from16 v18, v4

    if-eqz v1, :cond_a

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    move-object/from16 v19, v5

    move-wide/from16 v20, v10

    const/4 v5, 0x0

    const/16 v10, 0x21

    invoke-virtual {v0, v4, v5, v1, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_a
    move-object/from16 v19, v5

    move-wide/from16 v20, v10

    :goto_3
    iget v1, v6, Luhe;->j:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_b

    iget-object v1, v6, Luhe;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v5, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v10, 0x0

    const/16 v11, 0x21

    invoke-virtual {v0, v5, v10, v1, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    iget v1, v6, Luhe;->e:F

    cmpl-float v5, v1, v17

    if-eqz v5, :cond_c

    cmpl-float v5, v15, v17

    if-eqz v5, :cond_c

    div-float/2addr v1, v15

    const/4 v5, 0x1

    invoke-virtual {v7, v1, v5}, Lzvf;->n(FI)Lzvf;

    :cond_c
    iget-boolean v1, v6, Luhe;->f:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v6, Luhe;->g:Z

    if-eqz v1, :cond_e

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/4 v5, 0x0

    const/16 v10, 0x21

    invoke-virtual {v0, v1, v5, v4, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    :goto_4
    const/4 v4, 0x2

    goto :goto_5

    :cond_e
    const/4 v5, 0x0

    const/16 v10, 0x21

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v5, v4, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_f
    const/4 v5, 0x0

    const/16 v10, 0x21

    iget-boolean v1, v6, Luhe;->g:Z

    if-eqz v1, :cond_d

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v11

    invoke-virtual {v0, v1, v5, v11, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_5
    iget-boolean v1, v6, Luhe;->h:Z

    if-eqz v1, :cond_10

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v11

    invoke-virtual {v0, v1, v5, v11, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    iget-boolean v1, v6, Luhe;->i:Z

    if-eqz v1, :cond_12

    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v11

    invoke-virtual {v0, v1, v5, v11, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :cond_11
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-wide/from16 v20, v10

    const/4 v4, 0x2

    :cond_12
    :goto_6
    iget v0, v9, Lthe;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    goto :goto_7

    :cond_13
    if-eqz v6, :cond_14

    iget v0, v6, Luhe;->b:I

    goto :goto_7

    :cond_14
    const/4 v0, -0x1

    :goto_7
    const-string v1, "Unknown alignment: "

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    const/4 v5, 0x0

    goto :goto_8

    :pswitch_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    :pswitch_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_8

    :pswitch_4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_8
    invoke-virtual {v7, v5}, Lzvf;->m(Landroid/text/Layout$Alignment;)Lzvf;

    const/high16 v5, -0x80000000

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_6
    move v6, v5

    goto :goto_9

    :pswitch_7
    move v6, v4

    goto :goto_9

    :pswitch_8
    const/4 v6, 0x1

    goto :goto_9

    :pswitch_9
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v7, v6}, Lzvf;->i(I)Lzvf;

    packed-switch v0, :pswitch_data_2

    :pswitch_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_b
    const/4 v5, 0x0

    goto :goto_a

    :pswitch_c
    const/4 v5, 0x1

    goto :goto_a

    :pswitch_d
    move v5, v4

    :goto_a
    :pswitch_e
    invoke-virtual {v7, v5}, Lzvf;->f(I)Lzvf;

    iget-object v0, v9, Lthe;->b:Landroid/graphics/PointF;

    if-eqz v0, :cond_15

    cmpl-float v1, v15, v17

    if-eqz v1, :cond_15

    cmpl-float v1, v8, v17

    if-eqz v1, :cond_15

    iget v1, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v8

    invoke-virtual {v7, v1}, Lzvf;->h(F)Lzvf;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v15

    const/4 v5, 0x0

    invoke-virtual {v7, v0, v5}, Lzvf;->e(FI)Lzvf;

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    invoke-virtual {v7}, Lzvf;->b()I

    move-result v0

    invoke-static {v0}, Lrhe;->b(I)F

    move-result v0

    invoke-virtual {v7, v0}, Lzvf;->h(F)Lzvf;

    invoke-virtual {v7}, Lzvf;->a()I

    move-result v0

    invoke-static {v0}, Lrhe;->b(I)F

    move-result v0

    invoke-virtual {v7, v0, v5}, Lzvf;->e(FI)Lzvf;

    :goto_b
    invoke-virtual {v7}, Lzvf;->p()Lfyf;

    move-result-object v0

    invoke-static {v13, v14, v3, v2}, Lrhe;->c(JLjava/util/List;Ljava/util/List;)I

    move-result v1

    move-wide/from16 v4, v20

    invoke-static {v4, v5, v3, v2}, Lrhe;->c(JLjava/util/List;Ljava/util/List;)I

    move-result v4

    :goto_c
    if-ge v1, v4, :cond_16

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :goto_d
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto/16 :goto_0

    :cond_17
    const/4 v5, 0x0

    move v0, v5

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v0, :cond_18

    move-object/from16 v6, p5

    const/4 v1, 0x1

    const/4 v4, -0x1

    goto :goto_10

    :cond_18
    move v0, v5

    :cond_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, -0x1

    add-int/2addr v1, v4

    if-eq v0, v1, :cond_1a

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-int/lit8 v1, v0, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    new-instance v1, Lqge;

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lqge;-><init>(Ljava/util/List;JJ)V

    move-object/from16 v6, p5

    invoke-interface {v6, v1}, Lqfg;->zza(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :goto_10
    add-int/2addr v0, v1

    goto :goto_f

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1b
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final e(Lu4h;Ljava/nio/charset/Charset;)V
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lu4h;->T(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "[Script Info]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x5b

    if-eqz v1, :cond_6

    :catch_0
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lu4h;->T(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p2}, Lu4h;->y(Ljava/nio/charset/Charset;)I

    move-result v1

    if-eq v1, v2, :cond_0

    :cond_2
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld2i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v1, "playresy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_3

    :pswitch_1
    const-string v4, "playresx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, -0x1

    :goto_3
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lrhe;->f:F

    goto :goto_1

    :cond_5
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lrhe;->e:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_6
    const-string v1, "[V4+ Styles]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "SsaParser"

    if-eqz v1, :cond_c

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :cond_7
    :goto_4
    invoke-virtual {p1, p2}, Lu4h;->T(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1, p2}, Lu4h;->y(Ljava/nio/charset/Charset;)I

    move-result v5

    if-eq v5, v2, :cond_b

    :cond_8
    const-string v5, "Format:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v4}, Lshe;->a(Ljava/lang/String;)Lshe;

    move-result-object v1

    goto :goto_4

    :cond_9
    const-string v5, "Style:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v1, :cond_a

    const-string v5, "Skipping \'Style:\' line before \'Format:\' line: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-static {v4, v1}, Luhe;->b(Ljava/lang/String;Lshe;)Luhe;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v5, v4, Luhe;->a:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    iput-object v0, p0, Lrhe;->d:Ljava/util/Map;

    goto/16 :goto_0

    :cond_c
    const-string v1, "[V4 Styles]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "[V4 Styles] are not supported"

    invoke-static {v3, v0}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "[Events]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x70092d0c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
