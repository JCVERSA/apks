.class public final Lcom/yandex/mobile/ads/impl/m60;
.super Lcom/yandex/mobile/ads/impl/yh1;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:I

.field public final g:Lcom/yandex/mobile/ads/impl/jc0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:I

.field public final i:Lcom/yandex/mobile/ads/impl/rw0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lind;

    invoke-direct {v0}, Lind;-><init>()V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;II)V
    .locals 19
    .param p3    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move/from16 v0, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/m60;->a(ILjava/lang/String;Ljava/lang/String;ILcom/yandex/mobile/ads/impl/jc0;I)Ljava/lang/String;

    move-result-object v7

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p1

    .line 3
    invoke-direct/range {v6 .. v18}, Lcom/yandex/mobile/ads/impl/m60;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/yandex/mobile/ads/impl/jc0;ILcom/yandex/mobile/ads/impl/vw0$b;JZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 4
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/yh1;-><init>(Landroid/os/Bundle;)V

    const/16 v0, 0x3e9

    .line 5
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/yh1;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/m60;->d:I

    const/16 v0, 0x3ea

    .line 6
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/yh1;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m60;->e:Ljava/lang/String;

    const/16 v0, 0x3eb

    .line 7
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/yh1;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/m60;->f:I

    const/16 v0, 0x3ec

    .line 8
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/yh1;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Lcom/yandex/mobile/ads/impl/jc0;->I:Lcom/yandex/mobile/ads/impl/km$a;

    invoke-interface {v2, v0}, Lcom/yandex/mobile/ads/impl/km$a;->fromBundle(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/km;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/jc0;

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m60;->g:Lcom/yandex/mobile/ads/impl/jc0;

    const/16 v0, 0x3ed

    .line 10
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/yh1;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 11
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/m60;->h:I

    const/16 v0, 0x3ee

    .line 12
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/yh1;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/m60;->j:Z

    .line 13
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/m60;->i:Lcom/yandex/mobile/ads/impl/rw0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/yandex/mobile/ads/impl/jc0;ILcom/yandex/mobile/ads/impl/vw0$b;JZ)V
    .locals 9
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/yandex/mobile/ads/impl/jc0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/yandex/mobile/ads/impl/vw0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v6, p0

    move v7, p4

    move/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/yh1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_1

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 15
    :goto_1
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/hg;->a(Z)V

    if-nez p2, :cond_2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    :cond_2
    move v0, v1

    .line 16
    :cond_3
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hg;->a(Z)V

    .line 17
    iput v7, v6, Lcom/yandex/mobile/ads/impl/m60;->d:I

    move-object v0, p5

    .line 18
    iput-object v0, v6, Lcom/yandex/mobile/ads/impl/m60;->e:Ljava/lang/String;

    move v0, p6

    .line 19
    iput v0, v6, Lcom/yandex/mobile/ads/impl/m60;->f:I

    move-object/from16 v0, p7

    .line 20
    iput-object v0, v6, Lcom/yandex/mobile/ads/impl/m60;->g:Lcom/yandex/mobile/ads/impl/jc0;

    move/from16 v0, p8

    .line 21
    iput v0, v6, Lcom/yandex/mobile/ads/impl/m60;->h:I

    move-object/from16 v0, p9

    .line 22
    iput-object v0, v6, Lcom/yandex/mobile/ads/impl/m60;->i:Lcom/yandex/mobile/ads/impl/rw0;

    .line 23
    iput-boolean v8, v6, Lcom/yandex/mobile/ads/impl/m60;->j:Z

    return-void
.end method

.method public static a()Lcom/yandex/mobile/ads/impl/m60;
    .locals 16

    .line 1
    new-instance v13, Lcom/yandex/mobile/ads/impl/m60;

    const/4 v6, 0x3

    .line 2
    const-string v1, "Video load error occurred"

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x4

    move v0, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/m60;->a(ILjava/lang/String;Ljava/lang/String;ILcom/yandex/mobile/ads/impl/jc0;I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x3e9

    const/4 v15, 0x0

    move-object v0, v13

    move v4, v6

    move-object v5, v7

    move v6, v8

    move-object v7, v9

    move v8, v10

    move-object v9, v14

    move-wide v10, v11

    move v12, v15

    .line 4
    invoke-direct/range {v0 .. v12}, Lcom/yandex/mobile/ads/impl/m60;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/yandex/mobile/ads/impl/jc0;ILcom/yandex/mobile/ads/impl/vw0$b;JZ)V

    return-object v13
.end method

.method public static a(Ljava/io/IOException;I)Lcom/yandex/mobile/ads/impl/m60;
    .locals 2

    .line 25
    new-instance v0, Lcom/yandex/mobile/ads/impl/m60;

    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1, p0, p1, v1}, Lcom/yandex/mobile/ads/impl/m60;-><init>(ILjava/lang/Throwable;II)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;Ljava/lang/String;ILcom/yandex/mobile/ads/impl/jc0;IZI)Lcom/yandex/mobile/ads/impl/m60;
    .locals 14
    .param p3    # Lcom/yandex/mobile/ads/impl/jc0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    new-instance v13, Lcom/yandex/mobile/ads/impl/m60;

    if-nez p3, :cond_0

    const/4 v0, 0x4

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p4

    :goto_0
    const/4 v6, 0x1

    const/4 v1, 0x0

    move v0, v6

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v8

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/m60;->a(ILjava/lang/String;Ljava/lang/String;ILcom/yandex/mobile/ads/impl/jc0;I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v9, 0x0

    move-object v0, v13

    move-object v2, p0

    move/from16 v3, p6

    move v4, v6

    move-object v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v12, p5

    .line 8
    invoke-direct/range {v0 .. v12}, Lcom/yandex/mobile/ads/impl/m60;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/yandex/mobile/ads/impl/jc0;ILcom/yandex/mobile/ads/impl/vw0$b;JZ)V

    return-object v13
.end method

.method public static a(Ljava/lang/IllegalStateException;)Lcom/yandex/mobile/ads/impl/m60;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    new-instance v0, Lcom/yandex/mobile/ads/impl/m60;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    .line 10
    invoke-direct {v0, v1, p0, v3, v2}, Lcom/yandex/mobile/ads/impl/m60;-><init>(ILjava/lang/Throwable;II)V

    return-object v0
.end method

.method public static a(Ljava/lang/RuntimeException;I)Lcom/yandex/mobile/ads/impl/m60;
    .locals 3

    .line 27
    new-instance v0, Lcom/yandex/mobile/ads/impl/m60;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, v1, p0, p1, v2}, Lcom/yandex/mobile/ads/impl/m60;-><init>(ILjava/lang/Throwable;II)V

    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;ILcom/yandex/mobile/ads/impl/jc0;I)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/yandex/mobile/ads/impl/jc0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_7

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    .line 11
    const-string p0, "Unexpected runtime error"

    goto :goto_1

    .line 12
    :cond_0
    const-string p0, "Remote error"

    goto :goto_1

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error, index="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", format="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", format_supported="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    sget p2, Lcom/yandex/mobile/ads/impl/f92;->a:I

    if-eqz p5, :cond_6

    if-eq p5, v1, :cond_5

    const/4 p2, 0x2

    if-eq p5, p2, :cond_4

    if-eq p5, v0, :cond_3

    const/4 p2, 0x4

    if-ne p5, p2, :cond_2

    .line 15
    const-string p2, "YES"

    goto :goto_0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 17
    :cond_3
    const-string p2, "NO_EXCEEDS_CAPABILITIES"

    goto :goto_0

    .line 18
    :cond_4
    const-string p2, "NO_UNSUPPORTED_DRM"

    goto :goto_0

    .line 19
    :cond_5
    const-string p2, "NO_UNSUPPORTED_TYPE"

    goto :goto_0

    .line 20
    :cond_6
    const-string p2, "NO"

    .line 21
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 22
    :cond_7
    const-string p0, "Source error"

    .line 23
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public static synthetic b(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/m60;
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/m60;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/m60;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/m60;
    .locals 14
    .param p1    # Lcom/yandex/mobile/ads/impl/vw0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 29
    new-instance v13, Lcom/yandex/mobile/ads/impl/m60;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget v3, p0, Lcom/yandex/mobile/ads/impl/yh1;->b:I

    iget v4, p0, Lcom/yandex/mobile/ads/impl/m60;->d:I

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/m60;->e:Ljava/lang/String;

    iget v6, p0, Lcom/yandex/mobile/ads/impl/m60;->f:I

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/m60;->g:Lcom/yandex/mobile/ads/impl/jc0;

    iget v8, p0, Lcom/yandex/mobile/ads/impl/m60;->h:I

    iget-wide v10, p0, Lcom/yandex/mobile/ads/impl/yh1;->c:J

    iget-boolean v12, p0, Lcom/yandex/mobile/ads/impl/m60;->j:Z

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/yandex/mobile/ads/impl/m60;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/yandex/mobile/ads/impl/jc0;ILcom/yandex/mobile/ads/impl/vw0$b;JZ)V

    return-object v13
.end method
