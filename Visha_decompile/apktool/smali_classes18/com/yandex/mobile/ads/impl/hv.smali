.class public final Lcom/yandex/mobile/ads/impl/hv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/km;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/hv$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/yandex/mobile/ads/impl/hv;

.field public static final t:Lcom/yandex/mobile/ads/impl/km$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/km$a<",
            "Lcom/yandex/mobile/ads/impl/hv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:F

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:I

.field public final k:F

.field public final l:F

.field public final m:Z

.field public final n:I

.field public final o:I

.field public final p:F

.field public final q:I

.field public final r:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/hv$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/hv$a;-><init>()V

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/hv$a;->a(Lcom/yandex/mobile/ads/impl/hv$a;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hv$a;->a()Lcom/yandex/mobile/ads/impl/hv;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/hv;->s:Lcom/yandex/mobile/ads/impl/hv;

    new-instance v0, Lcid;

    invoke-direct {v0}, Lcid;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/hv;->t:Lcom/yandex/mobile/ads/impl/km$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez v1, :cond_0

    .line 3
    invoke-static {p4}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/hg;->a(Z)V

    .line 5
    :goto_1
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    .line 6
    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/hv;->b:Ljava/lang/CharSequence;

    :goto_2
    move-object v1, p2

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/hv;->b:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/hv;->b:Ljava/lang/CharSequence;

    goto :goto_2

    .line 9
    :goto_3
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/hv;->c:Landroid/text/Layout$Alignment;

    move-object v1, p3

    .line 10
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/hv;->d:Landroid/text/Layout$Alignment;

    .line 11
    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/hv;->e:Landroid/graphics/Bitmap;

    move v1, p5

    .line 12
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->f:F

    move v1, p6

    .line 13
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->g:I

    move v1, p7

    .line 14
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->h:I

    move v1, p8

    .line 15
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->i:F

    move v1, p9

    .line 16
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->j:I

    move/from16 v1, p12

    .line 17
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->k:F

    move/from16 v1, p13

    .line 18
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->l:F

    move/from16 v1, p14

    .line 19
    iput-boolean v1, v0, Lcom/yandex/mobile/ads/impl/hv;->m:Z

    move/from16 v1, p15

    .line 20
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->n:I

    move v1, p10

    .line 21
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->o:I

    move v1, p11

    .line 22
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->p:F

    move/from16 v1, p16

    .line 23
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->q:I

    move/from16 v1, p17

    .line 24
    iput v1, v0, Lcom/yandex/mobile/ads/impl/hv;->r:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLdid;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p17}, Lcom/yandex/mobile/ads/impl/hv;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method private static final a(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/hv;
    .locals 7

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/hv$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/hv$a;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x24

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/impl/hv$a;->a(Lcom/yandex/mobile/ads/impl/hv$a;Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v3, 0x1

    .line 6
    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Landroid/text/Layout$Alignment;

    if-eqz v4, :cond_1

    .line 8
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/hv$a;->c(Lcom/yandex/mobile/ads/impl/hv$a;Landroid/text/Layout$Alignment;)V

    :cond_1
    const/4 v4, 0x2

    .line 9
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Landroid/text/Layout$Alignment;

    if-eqz v4, :cond_2

    .line 11
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/hv$a;->d(Lcom/yandex/mobile/ads/impl/hv$a;Landroid/text/Layout$Alignment;)V

    :cond_2
    const/4 v4, 0x3

    .line 12
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 14
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/hv$a;->b(Lcom/yandex/mobile/ads/impl/hv$a;Landroid/graphics/Bitmap;)V

    :cond_3
    const/4 v4, 0x4

    .line 15
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    .line 17
    invoke-static {v5, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {p0, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 19
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 21
    invoke-static {v5, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 23
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/hv$a;->e(Lcom/yandex/mobile/ads/impl/hv$a;F)V

    .line 24
    invoke-static {v0, v5}, Lcom/yandex/mobile/ads/impl/hv$a;->f(Lcom/yandex/mobile/ads/impl/hv$a;I)V

    :cond_4
    const/4 v4, 0x6

    .line 25
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 27
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 29
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/hv$a;->g(Lcom/yandex/mobile/ads/impl/hv$a;I)V

    :cond_5
    const/4 v4, 0x7

    .line 30
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 32
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 34
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/hv$a;->h(Lcom/yandex/mobile/ads/impl/hv$a;F)V

    :cond_6
    const/16 v4, 0x8

    .line 35
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 37
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 39
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/hv$a;->i(Lcom/yandex/mobile/ads/impl/hv$a;I)V

    :cond_7
    const/16 v4, 0xa

    .line 40
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x9

    .line 42
    invoke-static {v5, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-virtual {p0, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 44
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 46
    invoke-static {v5, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 48
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/hv$a;->k(Lcom/yandex/mobile/ads/impl/hv$a;F)V

    .line 49
    invoke-static {v0, v5}, Lcom/yandex/mobile/ads/impl/hv$a;->j(Lcom/yandex/mobile/ads/impl/hv$a;I)V

    :cond_8
    const/16 v4, 0xb

    .line 50
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 52
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 54
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/hv$a;->l(Lcom/yandex/mobile/ads/impl/hv$a;F)V

    :cond_9
    const/16 v4, 0xc

    .line 55
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 57
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 59
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/hv$a;->m(Lcom/yandex/mobile/ads/impl/hv$a;F)V

    :cond_a
    const/16 v4, 0xd

    .line 60
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 62
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 64
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/hv$a;->o(Lcom/yandex/mobile/ads/impl/hv$a;I)V

    .line 65
    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/impl/hv$a;->n(Lcom/yandex/mobile/ads/impl/hv$a;Z)V

    :cond_b
    const/16 v3, 0xe

    .line 66
    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c

    .line 68
    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/hv$a;->n(Lcom/yandex/mobile/ads/impl/hv$a;Z)V

    :cond_c
    const/16 v1, 0xf

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 73
    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/hv$a;->p(Lcom/yandex/mobile/ads/impl/hv$a;I)V

    :cond_d
    const/16 v1, 0x10

    .line 74
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 76
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    .line 78
    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/hv$a;->q(Lcom/yandex/mobile/ads/impl/hv$a;F)V

    .line 79
    :cond_e
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hv$a;->a()Lcom/yandex/mobile/ads/impl/hv;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/hv;
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hv;->a(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/hv;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/hv$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/hv$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/hv$a;-><init>(Lcom/yandex/mobile/ads/impl/hv;Ldid;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/yandex/mobile/ads/impl/hv;

    if-eq v3, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/hv;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hv;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/hv;->b:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hv;->c:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/hv;->c:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hv;->d:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/hv;->d:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hv;->e:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/yandex/mobile/ads/impl/hv;->e:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/hv;->e:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget v2, p0, Lcom/yandex/mobile/ads/impl/hv;->f:F

    iget v3, p1, Lcom/yandex/mobile/ads/impl/hv;->f:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/yandex/mobile/ads/impl/hv;->g:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/hv;->g:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/yandex/mobile/ads/impl/hv;->h:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/hv;->h:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/yandex/mobile/ads/impl/hv;->i:F

    iget v3, p1, Lcom/yandex/mobile/ads/impl/hv;->i:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/yandex/mobile/ads/impl/hv;->j:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/hv;->j:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/yandex/mobile/ads/impl/hv;->k:F

    iget v3, p1, Lcom/yandex/mobile/ads/impl/hv;->k:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/yandex/mobile/ads/impl/hv;->l:F

    iget v3, p1, Lcom/yandex/mobile/ads/impl/hv;->l:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/hv;->m:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/hv;->m:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/yandex/mobile/ads/impl/hv;->n:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/hv;->n:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/yandex/mobile/ads/impl/hv;->o:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/hv;->o:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/yandex/mobile/ads/impl/hv;->p:F

    iget v3, p1, Lcom/yandex/mobile/ads/impl/hv;->p:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/yandex/mobile/ads/impl/hv;->q:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/hv;->q:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Lcom/yandex/mobile/ads/impl/hv;->r:F

    iget p1, p1, Lcom/yandex/mobile/ads/impl/hv;->r:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/hv;->b:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/hv;->c:Landroid/text/Layout$Alignment;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/hv;->d:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/hv;->e:Landroid/graphics/Bitmap;

    iget v5, v0, Lcom/yandex/mobile/ads/impl/hv;->f:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, v0, Lcom/yandex/mobile/ads/impl/hv;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Lcom/yandex/mobile/ads/impl/hv;->h:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v0, Lcom/yandex/mobile/ads/impl/hv;->i:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v9, v0, Lcom/yandex/mobile/ads/impl/hv;->j:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Lcom/yandex/mobile/ads/impl/hv;->k:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget v11, v0, Lcom/yandex/mobile/ads/impl/hv;->l:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-boolean v12, v0, Lcom/yandex/mobile/ads/impl/hv;->m:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget v13, v0, Lcom/yandex/mobile/ads/impl/hv;->n:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v0, Lcom/yandex/mobile/ads/impl/hv;->o:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Lcom/yandex/mobile/ads/impl/hv;->p:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v18, v1

    iget v1, v0, Lcom/yandex/mobile/ads/impl/hv;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v0, v0, Lcom/yandex/mobile/ads/impl/hv;->r:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v1, v18

    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
