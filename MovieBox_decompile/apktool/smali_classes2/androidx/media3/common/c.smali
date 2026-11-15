.class public final Landroidx/media3/common/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/c$d;,
        Landroidx/media3/common/c$e;,
        Landroidx/media3/common/c$c;,
        Landroidx/media3/common/c$b;
    }
.end annotation


# static fields
.field public static final g:Landroidx/media3/common/c;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field private f:Landroidx/media3/common/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/c$e;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/c$e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/common/c$e;->a()Landroidx/media3/common/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/media3/common/c;->g:Landroidx/media3/common/c;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/media3/common/c;->h:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Landroidx/media3/common/c;->i:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroidx/media3/common/c;->j:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Landroidx/media3/common/c;->k:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Landroidx/media3/common/c;->l:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/media3/common/c;->a:I

    .line 4
    iput p2, p0, Landroidx/media3/common/c;->b:I

    .line 5
    iput p3, p0, Landroidx/media3/common/c;->c:I

    .line 6
    iput p4, p0, Landroidx/media3/common/c;->d:I

    .line 7
    iput p5, p0, Landroidx/media3/common/c;->e:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILandroidx/media3/common/c$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/media3/common/c;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/common/c$d;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/c;->f:Landroidx/media3/common/c$d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/media3/common/c$d;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/c$d;-><init>(Landroidx/media3/common/c;Landroidx/media3/common/c$a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/common/c;->f:Landroidx/media3/common/c$d;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/c;->f:Landroidx/media3/common/c$d;

    .line 14
    .line 15
    return-object v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/c;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget v0, p0, Landroidx/media3/common/c;->c:I

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :pswitch_0
    const/4 v0, 0x3

    .line 14
    return v0

    .line 15
    :pswitch_1
    return v1

    .line 16
    :pswitch_2
    const/16 v0, 0xa

    .line 17
    .line 18
    return v0

    .line 19
    :pswitch_3
    const/4 v0, 0x2

    .line 20
    return v0

    .line 21
    :pswitch_4
    const/4 v0, 0x5

    .line 22
    return v0

    .line 23
    :pswitch_5
    const/4 v0, 0x4

    .line 24
    return v0

    .line 25
    :pswitch_6
    const/16 v0, 0x8

    .line 26
    .line 27
    return v0

    .line 28
    :pswitch_7
    const/4 v0, 0x0

    .line 29
    return v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Landroidx/media3/common/c;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Landroidx/media3/common/c;

    .line 18
    .line 19
    iget v2, p0, Landroidx/media3/common/c;->a:I

    .line 20
    .line 21
    iget v3, p1, Landroidx/media3/common/c;->a:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Landroidx/media3/common/c;->b:I

    .line 26
    .line 27
    iget v3, p1, Landroidx/media3/common/c;->b:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget v2, p0, Landroidx/media3/common/c;->c:I

    .line 32
    .line 33
    iget v3, p1, Landroidx/media3/common/c;->c:I

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget v2, p0, Landroidx/media3/common/c;->d:I

    .line 38
    .line 39
    iget v3, p1, Landroidx/media3/common/c;->d:I

    .line 40
    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    .line 43
    iget v2, p0, Landroidx/media3/common/c;->e:I

    .line 44
    .line 45
    iget p1, p1, Landroidx/media3/common/c;->e:I

    .line 46
    .line 47
    if-ne v2, p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v0, v1

    .line 51
    :goto_0
    return v0

    .line 52
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/c;->a:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget v1, p0, Landroidx/media3/common/c;->b:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget v1, p0, Landroidx/media3/common/c;->c:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Landroidx/media3/common/c;->d:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget v1, p0, Landroidx/media3/common/c;->e:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    return v0
.end method
