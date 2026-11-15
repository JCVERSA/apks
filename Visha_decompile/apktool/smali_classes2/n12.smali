.class public final Ln12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln12$a;
    }
.end annotation


# static fields
.field public static final n:[I

.field public static final o:Ln12$a;

.field public static final p:Ln12$a;


# instance fields
.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ln12;->n:[I

    new-instance v0, Ln12$a;

    new-instance v1, Lj12;

    invoke-direct {v1}, Lj12;-><init>()V

    invoke-direct {v0, v1}, Ln12$a;-><init>(Ln12$a$a;)V

    sput-object v0, Ln12;->o:Ln12$a;

    new-instance v0, Ln12$a;

    new-instance v1, Ll12;

    invoke-direct {v1}, Ll12;-><init>()V

    invoke-direct {v0, v1}, Ln12$a;-><init>(Ln12$a$a;)V

    sput-object v0, Ln12;->p:Ln12$a;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ln12;->k:I

    const v0, 0x1b8a0

    iput v0, p0, Ln12;->m:I

    return-void
.end method

.method public static synthetic b()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Ln12;->e()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Ln12;->f()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/reflect/Constructor;
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAvailable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnk3;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v3
.end method

.method public static f()Ljava/lang/reflect/Constructor;
    .locals 2

    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnk3;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Lnk3;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Ln12;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lnk3;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lnk3;
    .locals 5

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Ln12;->n:[I

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-static {p2}, Luu3;->b(Ljava/util/Map;)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 4
    invoke-virtual {p0, p2, v0}, Ln12;->d(ILjava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 5
    :cond_0
    :goto_0
    invoke-static {p1}, Luu3;->c(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-eq p1, p2, :cond_1

    .line 6
    invoke-virtual {p0, p1, v0}, Ln12;->d(ILjava/util/List;)V

    .line 7
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    if-eq v4, p2, :cond_2

    if-eq v4, p1, :cond_2

    .line 8
    invoke-virtual {p0, v4, v0}, Ln12;->d(ILjava/util/List;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lnk3;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnk3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(ILjava/util/List;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    new-instance p0, Lt30;

    invoke-direct {p0}, Lt30;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_2
    sget-object p0, Ln12;->p:Ln12$a;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ln12$a;->a([Ljava/lang/Object;)Lnk3;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_3
    new-instance p0, Ls95;

    invoke-direct {p0}, Ls95;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_4
    new-instance p0, Lugc;

    invoke-direct {p0}, Lugc;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_5
    new-instance p1, Lmab;

    iget v0, p0, Ln12;->k:I

    iget v1, p0, Ln12;->l:I

    iget p0, p0, Ln12;->m:I

    invoke-direct {p1, v0, v1, p0}, Lmab;-><init>(III)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_6
    new-instance p0, Lfk8;

    invoke-direct {p0}, Lfk8;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_7
    new-instance p0, Lae7;

    invoke-direct {p0}, Lae7;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_8
    new-instance p1, Lz54;

    iget v0, p0, Ln12;->i:I

    invoke-direct {p1, v0}, Lz54;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lqr6;

    iget p0, p0, Ln12;->h:I

    invoke-direct {p1, p0}, Lqr6;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_9
    new-instance p1, Lkr6;

    iget v2, p0, Ln12;->j:I

    iget-boolean v3, p0, Ln12;->b:Z

    or-int/2addr v2, v3

    iget-boolean p0, p0, Ln12;->c:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int p0, v2, v0

    invoke-direct {p1, p0}, Lkr6;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_a
    new-instance p1, Lz86;

    iget p0, p0, Ln12;->g:I

    invoke-direct {p1, p0}, Lz86;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_b
    new-instance p0, Le24;

    invoke-direct {p0}, Le24;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_c
    sget-object p1, Ln12;->o:Ln12$a;

    iget v0, p0, Ln12;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln12$a;->a([Ljava/lang/Object;)Lnk3;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    new-instance p1, Lrx3;

    iget p0, p0, Ln12;->f:I

    invoke-direct {p1, p0}, Lrx3;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_d
    new-instance p1, Ljb;

    iget v2, p0, Ln12;->e:I

    iget-boolean v3, p0, Ln12;->b:Z

    or-int/2addr v2, v3

    iget-boolean p0, p0, Ln12;->c:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    or-int p0, v2, v0

    invoke-direct {p1, p0}, Ljb;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_e
    new-instance p1, Lf9;

    iget v2, p0, Ln12;->d:I

    iget-boolean v3, p0, Ln12;->b:Z

    or-int/2addr v2, v3

    iget-boolean p0, p0, Ln12;->c:Z

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    or-int p0, v2, v0

    invoke-direct {p1, p0}, Lf9;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_f
    new-instance p0, Lq4;

    invoke-direct {p0}, Lq4;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_10
    new-instance p0, Ll4;

    invoke-direct {p0}, Ll4;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
