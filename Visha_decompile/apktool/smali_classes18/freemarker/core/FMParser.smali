.class public Lfreemarker/core/FMParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyk3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/FMParser$a;,
        Lfreemarker/core/FMParser$LookaheadSuccess;,
        Lfreemarker/core/FMParser$b;
    }
.end annotation


# static fields
.field public static F:[I

.field public static G:[I

.field public static H:[I

.field public static I:[I

.field public static J:[I

.field public static synthetic K:Ljava/lang/Class;


# instance fields
.field public A:Ljava/util/Vector;

.field public B:[I

.field public C:I

.field public D:[I

.field public E:I

.field public b:Lfreemarker/template/Template;

.field public c:Z

.field public d:Z

.field public e:Ljava/util/List;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Ljava/util/LinkedList;

.field public j:I

.field public k:I

.field public l:Lfreemarker/core/u0;

.field public m:Lxl9;

.field public n:Lfreemarker/core/Token;

.field public o:Lfreemarker/core/Token;

.field public p:I

.field public q:Lfreemarker/core/Token;

.field public r:Lfreemarker/core/Token;

.field public s:I

.field public t:Z

.field public u:I

.field public final v:[I

.field public final w:[Lfreemarker/core/FMParser$a;

.field public x:Z

.field public y:I

.field public final z:Lfreemarker/core/FMParser$LookaheadSuccess;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lfreemarker/core/FMParser;->v4()V

    invoke-static {}, Lfreemarker/core/FMParser;->w4()V

    invoke-static {}, Lfreemarker/core/FMParser;->x4()V

    invoke-static {}, Lfreemarker/core/FMParser;->y4()V

    invoke-static {}, Lfreemarker/core/FMParser;->z4()V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/u0;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/FMParser;->i:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lfreemarker/core/FMParser;->t:Z

    const/16 v1, 0x5f

    .line 37
    new-array v2, v1, [I

    iput-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x10

    .line 38
    new-array v2, v2, [Lfreemarker/core/FMParser$a;

    iput-object v2, p0, Lfreemarker/core/FMParser;->w:[Lfreemarker/core/FMParser$a;

    .line 39
    iput-boolean v0, p0, Lfreemarker/core/FMParser;->x:Z

    .line 40
    iput v0, p0, Lfreemarker/core/FMParser;->y:I

    .line 41
    new-instance v2, Lfreemarker/core/FMParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfreemarker/core/FMParser$LookaheadSuccess;-><init>(Lxk3;)V

    iput-object v2, p0, Lfreemarker/core/FMParser;->z:Lfreemarker/core/FMParser$LookaheadSuccess;

    .line 42
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lfreemarker/core/FMParser;->A:Ljava/util/Vector;

    const/4 v2, -0x1

    .line 43
    iput v2, p0, Lfreemarker/core/FMParser;->C:I

    const/16 v3, 0x64

    .line 44
    new-array v3, v3, [I

    iput-object v3, p0, Lfreemarker/core/FMParser;->D:[I

    .line 45
    iput-object p1, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    .line 46
    new-instance p1, Lfreemarker/core/Token;

    invoke-direct {p1}, Lfreemarker/core/Token;-><init>()V

    iput-object p1, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    .line 47
    iput v2, p0, Lfreemarker/core/FMParser;->p:I

    .line 48
    iput v0, p0, Lfreemarker/core/FMParser;->u:I

    move p1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 49
    iget-object v3, p0, Lfreemarker/core/FMParser;->v:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    :goto_1
    iget-object p1, p0, Lfreemarker/core/FMParser;->w:[Lfreemarker/core/FMParser$a;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lfreemarker/core/FMParser$a;

    invoke-direct {v1}, Lfreemarker/core/FMParser$a;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Template;Ljava/io/Reader;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lfreemarker/core/FMParser;-><init>(Ljava/io/Reader;)V

    .line 2
    invoke-virtual {p0, p1}, Lfreemarker/core/FMParser;->N4(Lfreemarker/template/Template;)V

    .line 3
    iget-object p1, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-virtual {p1, p0}, Lfreemarker/core/u0;->v0(Lfreemarker/core/FMParser;)V

    .line 4
    iget-object p1, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    iput-boolean p3, p1, Lfreemarker/core/u0;->h:Z

    .line 5
    iput-boolean p4, p0, Lfreemarker/core/FMParser;->c:Z

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Template;Ljava/io/Reader;ZZIII)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/template/Template;Ljava/io/Reader;ZZ)V

    const/4 p1, 0x1

    if-eqz p5, :cond_2

    if-eq p5, p1, :cond_1

    const/4 p2, 0x2

    if-ne p5, p2, :cond_0

    .line 7
    iget-object p2, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    iput-boolean p1, p2, Lfreemarker/core/u0;->j:Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal argument for tagSyntax"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    iget-object p1, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lfreemarker/core/u0;->j:Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    iput-boolean p1, p2, Lfreemarker/core/u0;->k:Z

    :goto_0
    packed-switch p6, :pswitch_data_0

    .line 11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal argument for namingConvention"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :pswitch_0
    iget-object p1, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    iput p6, p1, Lfreemarker/core/u0;->n:I

    .line 13
    iput p6, p1, Lfreemarker/core/u0;->o:I

    .line 14
    iput p7, p1, Lfreemarker/core/u0;->q:I

    .line 15
    iput p7, p0, Lfreemarker/core/FMParser;->k:I

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/FMParser;->i:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lfreemarker/core/FMParser;->t:Z

    const/16 v1, 0x5f

    .line 19
    new-array v2, v1, [I

    iput-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x10

    .line 20
    new-array v2, v2, [Lfreemarker/core/FMParser$a;

    iput-object v2, p0, Lfreemarker/core/FMParser;->w:[Lfreemarker/core/FMParser$a;

    .line 21
    iput-boolean v0, p0, Lfreemarker/core/FMParser;->x:Z

    .line 22
    iput v0, p0, Lfreemarker/core/FMParser;->y:I

    .line 23
    new-instance v2, Lfreemarker/core/FMParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfreemarker/core/FMParser$LookaheadSuccess;-><init>(Lxk3;)V

    iput-object v2, p0, Lfreemarker/core/FMParser;->z:Lfreemarker/core/FMParser$LookaheadSuccess;

    .line 24
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lfreemarker/core/FMParser;->A:Ljava/util/Vector;

    const/4 v2, -0x1

    .line 25
    iput v2, p0, Lfreemarker/core/FMParser;->C:I

    const/16 v3, 0x64

    .line 26
    new-array v3, v3, [I

    iput-object v3, p0, Lfreemarker/core/FMParser;->D:[I

    .line 27
    new-instance v3, Lxl9;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4, v4}, Lxl9;-><init>(Ljava/io/Reader;II)V

    iput-object v3, p0, Lfreemarker/core/FMParser;->m:Lxl9;

    .line 28
    new-instance p1, Lfreemarker/core/u0;

    iget-object v3, p0, Lfreemarker/core/FMParser;->m:Lxl9;

    invoke-direct {p1, v3}, Lfreemarker/core/u0;-><init>(Lxl9;)V

    iput-object p1, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    .line 29
    new-instance p1, Lfreemarker/core/Token;

    invoke-direct {p1}, Lfreemarker/core/Token;-><init>()V

    iput-object p1, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    .line 30
    iput v2, p0, Lfreemarker/core/FMParser;->p:I

    .line 31
    iput v0, p0, Lfreemarker/core/FMParser;->u:I

    move p1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 32
    iget-object v3, p0, Lfreemarker/core/FMParser;->v:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    :goto_1
    iget-object p1, p0, Lfreemarker/core/FMParser;->w:[Lfreemarker/core/FMParser$a;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lfreemarker/core/FMParser$a;

    invoke-direct {v1}, Lfreemarker/core/FMParser$a;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static v4()V
    .locals 1

    const/16 v0, 0x5f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/FMParser;->F:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x200
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000
        0x2000000
        0x0
        0x0
        0x70000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x600000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x40000000    # -2.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8000
        0x0
        -0x82c0
        0x0
        0x0
        0x0
        -0x82c0
        -0x82c0
        0x0
        0x0
        -0x82c0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static w4()V
    .locals 1

    const/16 v0, 0x5f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/FMParser;->G:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x10000
        0x60
        0x0
        0x10000
        0x10
        0x0
        0x0
        0x0
        0x30000000
        0x40000
        0x80000
        0xc000000
        0x1e00000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x700
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1800
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2000000
        0x0
        -0x201ffff
        0x0
        0x0
        0x0
        -0x201ffff
        -0x201ffff
        0x0
        0x0
        -0x201ffff
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static x4()V
    .locals 1

    const/16 v0, 0x5f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/FMParser;->H:[I

    return-void

    :array_0
    .array-data 4
        0xfe00000
        0xfe00000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x60000000
        0x70000000
        0x70000000
        0x6000000
        0x600000
        -0x78000000
        0x0
        0x1800000
        0x1800000
        0x600000
        0x1800000
        0x0
        0x0
        0x0
        0xfe00000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xfe00000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xfe00000
        0x0
        0xfe00000
        0x0
        0x0
        0x0
        0x0
        0x100
        0x100
        0x0
        0x0
        0xa
        0x700
        0x0
        0x0
        0x1f0a
        0x1f0a
        0x1f00
        0x1f00
        0x1f0a
        0x100
        0x0
        0x60
        0x0
        0x0
    .end array-data
.end method

.method public static y4()V
    .locals 1

    const/16 v0, 0x5f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/FMParser;->I:[I

    return-void

    :array_0
    .array-data 4
        0x50000000
        0x51018000
        0x1000000
        0x18000
        0x18000
        0x320000
        0xe
        0x7800
        0x0
        0x0
        0x0
        0x0
        0x0
        0x51000001
        0x1000000
        0x7800
        0x67800
        0x0
        0x0
        0xa000000
        0x2000000
        0xa000000
        0x51018000
        0x4000000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x51018000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1f2
        0x600
        0x7f2
        0x2000000
        0x1f2
        0x600
        0x7f2
        0x0
        0x0
        0x0
        0x7f2
        0x4000000
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x80000
        0x2
        0x2000000
        -0x80000000
        0x0
        0x0
        0x0
        0x2000000
        0x0
        0x0
        0x0
        0x4000000
        0x0
        -0x80000000
        0x0
        0x53018000
        0x2000000
        0x51018000
        0x0
        0x4000000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2000000
        0x0
    .end array-data
.end method

.method public static synthetic z0(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static z4()V
    .locals 1

    const/16 v0, 0x5f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/FMParser;->J:[I

    return-void

    :array_0
    .array-data 4
        0x21
        0x21
        0x0
        0x0
        0x0
        0x0
        0x0
        0x6000
        0x0
        0x0
        0x0
        0x0
        0x20
        0x10000
        0x10000
        0x1c
        0x3c
        0x0
        0x0
        0x0
        0x0
        0x0
        0x21
        0x0
        0x0
        0x0
        0x0
        0x8
        0x0
        0x0
        0x10
        0x21
        0x10
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x0
        0x804
        0x0
        0x20
        0x0
        0x0
        0x20
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8000
        0x8000
        0x8000
        0x8000
        0x8000
        0x8020
        0x0
        0x1800
        0x0
        0x20
        0x21
        0x0
        0x21
        0x0
        0x0
        0x20
        0x1800
        0x0
        0x0
        0x0
        0x1800
        0x0
        0x0
        0x1e0000
        0x1e0000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x20
        0x0
        0x0
        0x20
    .end array-data
.end method


# virtual methods
.method public final A()Lfreemarker/core/v0;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v3

    iget v4, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v4

    :cond_0
    const/16 v6, 0x6f

    if-eq v4, v6, :cond_1

    const/16 v6, 0x70

    if-eq v4, v6, :cond_1

    const/16 v6, 0x78

    if-eq v4, v6, :cond_1

    const/16 v6, 0x7c

    if-eq v4, v6, :cond_1

    const/16 v6, 0x7e

    if-eq v4, v6, :cond_1

    if-eq v4, v2, :cond_1

    const/16 v2, 0x85

    if-eq v4, v2, :cond_1

    packed-switch v4, :pswitch_data_0

    iget-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x16

    iget v5, p0, Lfreemarker/core/FMParser;->u:I

    aput v5, v2, v4

    goto :goto_2

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v2

    iget v4, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v4

    :cond_2
    const/16 v6, 0x7b

    const/16 v7, 0x79

    if-eq v4, v7, :cond_4

    if-ne v4, v6, :cond_3

    invoke-virtual {p0, v6}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v1, 0x13

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, v0, v1

    invoke-virtual {p0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_4
    invoke-virtual {p0, v7}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v4

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->O4(Lfreemarker/core/t0;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v2, v5, :cond_5

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_5
    if-eq v2, v7, :cond_6

    iget-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x14

    iget v5, p0, Lfreemarker/core/FMParser;->u:I

    aput v5, v2, v4

    :goto_2
    const/16 v2, 0x81

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    new-instance v4, Lfreemarker/core/v0;

    invoke-direct {v4, v0, v1}, Lfreemarker/core/v0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, p0, v3, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4

    :cond_6
    invoke-virtual {p0, v7}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v2

    iget v4, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v4, v5, :cond_7

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v4

    :cond_7
    if-eq v4, v7, :cond_9

    if-ne v4, v6, :cond_8

    invoke-virtual {p0, v6}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v1, 0x15

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, v0, v1

    invoke-virtual {p0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_9
    invoke-virtual {p0, v7}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_3
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v4

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->O4(Lfreemarker/core/t0;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final A0(Lfreemarker/core/t0;)Lfreemarker/core/t0;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/FMParser;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/FMParser;->i:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/core/p0;

    invoke-virtual {p0, p1}, Lfreemarker/core/p0;->l0(Lfreemarker/core/t0;)Lfreemarker/core/t0;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final A1()Z
    .locals 2

    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->S3()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final A2()Z
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final A3()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x59

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final A4()I
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iget-object v1, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v1, p0, Lfreemarker/core/FMParser;->o:Lfreemarker/core/Token;

    if-nez v1, :cond_0

    iget-object v1, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-virtual {v1}, Lfreemarker/core/u0;->j()Lfreemarker/core/Token;

    move-result-object v1

    iput-object v1, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iget v0, v1, Lfreemarker/core/Token;->kind:I

    iput v0, p0, Lfreemarker/core/FMParser;->p:I

    return v0

    :cond_0
    iget v0, v1, Lfreemarker/core/Token;->kind:I

    iput v0, p0, Lfreemarker/core/FMParser;->p:I

    return v0
.end method

.method public final B()V
    .locals 10

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x48

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x5a

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_0
    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_2
    const/16 v2, 0x45

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x5c

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_4
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :catch_0
    :cond_5
    :goto_1
    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_6
    const/16 v2, 0x85

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v1, 0x5b

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, v0, v1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    :goto_2
    return-void

    :cond_7
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v2, 0x61

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-virtual {v3, v0}, Lfreemarker/core/u0;->e(Lfreemarker/core/Token;)V

    iget-object v3, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    instance-of v6, v5, Lmga;

    if-eqz v6, :cond_8

    :try_start_1
    move-object v6, v2

    check-cast v6, Lmga;

    invoke-interface {v6}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Lfreemarker/template/TemplateModelException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :cond_8
    move-object v6, v4

    :goto_3
    iget-object v7, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    if-eqz v7, :cond_5

    const-string v7, "encoding"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v6, :cond_a

    iget-object v0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v0}, Lfreemarker/template/Template;->w0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    new-instance p0, Lfreemarker/template/Template$WrongEncodingException;

    invoke-direct {p0, v6, v0}, Lfreemarker/template/Template$WrongEncodingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lfreemarker/core/ParseException;

    const-string v0, "Expecting an encoding string."

    invoke-direct {p0, v0, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0

    :cond_b
    const-string v6, "STRIP_WHITESPACE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v6, "stripWhitespace"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto/16 :goto_b

    :cond_c
    const-string v6, "STRIP_TEXT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "stripText"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto/16 :goto_a

    :cond_d
    const-string v6, "STRICT_SYNTAX"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "strictSyntax"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_9

    :cond_e
    const-string v6, "ns_prefixes"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "nsPrefixes"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    goto/16 :goto_7

    :cond_f
    const-string v9, "attributes"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    instance-of v0, v5, Lpfa;

    if-eqz v0, :cond_10

    check-cast v5, Lpfa;

    :try_start_2
    invoke-interface {v5}, Lpfa;->keys()Lbfa;

    move-result-object v0

    invoke-interface {v0}, Lbfa;->iterator()Lbga;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Lbga;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lbga;->next()Lzfa;

    move-result-object v2

    check-cast v2, Lmga;

    invoke-interface {v2}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object v3

    invoke-static {v3}, Lru1;->b(Lzfa;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, v2, v3}, Lfreemarker/core/Configurable;->S(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lfreemarker/template/TemplateModelException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_10
    new-instance p0, Lfreemarker/core/ParseException;

    const-string v0, "Expecting a hash of attribute names to values."

    invoke-direct {p0, v0, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0

    :cond_11
    const-string v1, "charset"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v4, v7

    goto :goto_5

    :cond_12
    const-string v1, "xmlns"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    iget v1, v1, Lfreemarker/core/u0;->o:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_13

    move-object v4, v8

    goto :goto_5

    :cond_13
    move-object v4, v6

    :cond_14
    :goto_5
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unknown FTL header parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v4, :cond_15

    const-string v3, ""

    goto :goto_6

    :cond_15
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ". Did you mean "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_16
    :goto_7
    instance-of v0, v5, Lpfa;

    if-eqz v0, :cond_18

    check-cast v5, Lpfa;

    :try_start_3
    invoke-interface {v5}, Lpfa;->keys()Lbfa;

    move-result-object v0

    invoke-interface {v0}, Lbfa;->iterator()Lbga;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Lbga;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Lbga;->next()Lzfa;

    move-result-object v3

    check-cast v3, Lmga;

    invoke-interface {v3}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object v4

    instance-of v6, v4, Lmga;

    if-eqz v6, :cond_17

    check-cast v4, Lmga;

    invoke-interface {v4}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Lfreemarker/template/TemplateModelException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v6, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v6, v3, v4}, Lfreemarker/template/Template;->p0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lfreemarker/template/TemplateModelException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_8

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v3, Lfreemarker/core/ParseException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw v3

    :cond_17
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v3, "Non-string value in prefix to namespace hash."

    invoke-direct {v0, v3, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw v0
    :try_end_5
    .catch Lfreemarker/template/TemplateModelException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_18
    new-instance p0, Lfreemarker/core/ParseException;

    const-string v0, "Expecting a hash of prefixes to namespace URI\'s."

    invoke-direct {p0, v0, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0

    :cond_19
    :goto_9
    iget-object v0, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->D0(Lfreemarker/core/t0;)Z

    move-result v2

    iput-boolean v2, v0, Lfreemarker/core/u0;->h:Z

    goto/16 :goto_1

    :cond_1a
    :goto_a
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->D0(Lfreemarker/core/t0;)Z

    move-result v0

    iput-boolean v0, p0, Lfreemarker/core/FMParser;->d:Z

    goto/16 :goto_1

    :cond_1b
    :goto_b
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->D0(Lfreemarker/core/t0;)Z

    move-result v0

    iput-boolean v0, p0, Lfreemarker/core/FMParser;->c:Z

    goto/16 :goto_1

    :catch_3
    move-exception p0

    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not evaluate expression: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " \nUnderlying cause: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final B0()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    iget p0, p0, Lfreemarker/core/u0;->o:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    const-string p0, "#forEach"

    goto :goto_0

    :cond_0
    const-string p0, "#foreach"

    :goto_0
    return-object p0
.end method

.method public final B1()Z
    .locals 2

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->n2()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final B2()Z
    .locals 1

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B3()Z
    .locals 3

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->O3()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_1
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final B4()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfreemarker/core/FMParser;->x:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lfreemarker/core/FMParser;->w:[Lfreemarker/core/FMParser$a;

    aget-object v2, v2, v1

    :cond_0
    iget v3, v2, Lfreemarker/core/FMParser$a;->a:I

    iget v4, p0, Lfreemarker/core/FMParser;->u:I

    if-le v3, v4, :cond_1

    iget v3, v2, Lfreemarker/core/FMParser$a;->c:I

    iput v3, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v3, v2, Lfreemarker/core/FMParser$a;->b:Lfreemarker/core/Token;

    iput-object v3, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v3, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->k4()Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->j4()Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->i4()Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->h4()Z

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->g4()Z

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->f4()Z

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->e4()Z

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->s4()Z

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->r4()Z

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->q4()Z

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->p4()Z

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->o4()Z

    goto :goto_1

    :pswitch_c
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->n4()Z

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->m4()Z

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->l4()Z

    goto :goto_1

    :pswitch_f
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->d4()Z

    :cond_1
    :goto_1
    iget-object v2, v2, Lfreemarker/core/FMParser$a;->d:Lfreemarker/core/FMParser$a;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lfreemarker/core/FMParser;->x:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final C()Lfreemarker/core/x0;
    .locals 3

    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    new-instance v1, Lfreemarker/core/x0;

    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v1, v2}, Lfreemarker/core/x0;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, v0, v0}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1
.end method

.method public C0()Lfreemarker/core/ParseException;
    .locals 8

    iget-object v0, p0, Lfreemarker/core/FMParser;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/16 v0, 0x95

    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aput-boolean v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lfreemarker/core/FMParser;->C:I

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    aput-boolean v4, v1, v3

    const/4 v3, -0x1

    iput v3, p0, Lfreemarker/core/FMParser;->C:I

    :cond_1
    move v3, v2

    :goto_1
    const/16 v5, 0x5f

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lfreemarker/core/FMParser;->v:[I

    aget v5, v5, v3

    iget v6, p0, Lfreemarker/core/FMParser;->u:I

    if-ne v5, v6, :cond_7

    move v5, v2

    :goto_2
    const/16 v6, 0x20

    if-ge v5, v6, :cond_7

    sget-object v6, Lfreemarker/core/FMParser;->F:[I

    aget v6, v6, v3

    shl-int v7, v4, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    aput-boolean v4, v1, v5

    :cond_2
    sget-object v6, Lfreemarker/core/FMParser;->G:[I

    aget v6, v6, v3

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    add-int/lit8 v6, v5, 0x20

    aput-boolean v4, v1, v6

    :cond_3
    sget-object v6, Lfreemarker/core/FMParser;->H:[I

    aget v6, v6, v3

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    add-int/lit8 v6, v5, 0x40

    aput-boolean v4, v1, v6

    :cond_4
    sget-object v6, Lfreemarker/core/FMParser;->I:[I

    aget v6, v6, v3

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    add-int/lit8 v6, v5, 0x60

    aput-boolean v4, v1, v6

    :cond_5
    sget-object v6, Lfreemarker/core/FMParser;->J:[I

    aget v6, v6, v3

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    add-int/lit16 v6, v5, 0x80

    aput-boolean v4, v1, v6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_a

    aget-boolean v5, v1, v3

    if-eqz v5, :cond_9

    new-array v5, v4, [I

    iput-object v5, p0, Lfreemarker/core/FMParser;->B:[I

    aput v3, v5, v2

    iget-object v6, p0, Lfreemarker/core/FMParser;->A:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    iput v2, p0, Lfreemarker/core/FMParser;->E:I

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->B4()V

    invoke-virtual {p0, v2, v2}, Lfreemarker/core/FMParser;->t4(II)V

    iget-object v0, p0, Lfreemarker/core/FMParser;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[I

    :goto_4
    iget-object v1, p0, Lfreemarker/core/FMParser;->A:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_b

    iget-object v1, p0, Lfreemarker/core/FMParser;->A:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    new-instance v1, Lfreemarker/core/ParseException;

    iget-object p0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    sget-object v2, Lyk3;->D1:[Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lfreemarker/core/ParseException;-><init>(Lfreemarker/core/Token;[[I[Ljava/lang/String;)V

    return-object v1
.end method

.method public final C1()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->o2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C2()Z
    .locals 1

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C3()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x55

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->P3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C4(II)V
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->w:[Lfreemarker/core/FMParser$a;

    aget-object p1, v0, p1

    :goto_0
    iget v0, p1, Lfreemarker/core/FMParser$a;->a:I

    iget v1, p0, Lfreemarker/core/FMParser;->u:I

    if-le v0, v1, :cond_1

    iget-object v0, p1, Lfreemarker/core/FMParser$a;->d:Lfreemarker/core/FMParser$a;

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/core/FMParser$a;

    invoke-direct {v0}, Lfreemarker/core/FMParser$a;-><init>()V

    iput-object v0, p1, Lfreemarker/core/FMParser$a;->d:Lfreemarker/core/FMParser$a;

    move-object p1, v0

    goto :goto_1

    :cond_0
    move-object p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lfreemarker/core/FMParser;->u:I

    add-int/2addr v0, p2

    iget v1, p0, Lfreemarker/core/FMParser;->s:I

    sub-int/2addr v0, v1

    iput v0, p1, Lfreemarker/core/FMParser$a;->a:I

    iget-object p0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object p0, p1, Lfreemarker/core/FMParser$a;->b:Lfreemarker/core/Token;

    iput p2, p1, Lfreemarker/core/FMParser$a;->c:I

    return-void
.end method

.method public final D()Lfreemarker/core/t0;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x55

    if-eq v0, v2, :cond_2

    const/16 v2, 0x56

    if-eq v0, v2, :cond_2

    const/16 v2, 0x85

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->C()Lfreemarker/core/x0;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0xc

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->l0(Z)Lfreemarker/core/r1;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final D0(Lfreemarker/core/t0;)Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    instance-of v0, p0, Lfreemarker/template/a;

    if-eqz v0, :cond_0

    :try_start_1
    move-object v0, p0

    check-cast v0, Lfreemarker/template/a;

    invoke-interface {v0}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result p0
    :try_end_1
    .catch Lfreemarker/template/TemplateModelException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    :cond_0
    instance-of v0, p0, Lmga;

    if-eqz v0, :cond_1

    :try_start_2
    check-cast p0, Lmga;

    invoke-interface {p0}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln0a;->u(Ljava/lang/String;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\nExpecting boolean (true/false), found: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw v0

    :cond_1
    new-instance p0, Lfreemarker/core/ParseException;

    const-string v0, "Expecting boolean (true/false) parameter"

    invoke-direct {p0, v0, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0

    :catch_2
    move-exception p0

    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\nCould not evaluate expression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final D1()Z
    .locals 1

    const/16 v0, 0x60

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final D2()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final D3()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Q3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->R3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final D4(I)Z
    .locals 5

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iget-object v1, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v1, p0, Lfreemarker/core/FMParser;->s:I

    sub-int/2addr v1, v2

    iput v1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v1, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    if-nez v1, :cond_0

    iget-object v1, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-virtual {v1}, Lfreemarker/core/u0;->j()Lfreemarker/core/Token;

    move-result-object v1

    iput-object v1, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v1, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v1, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v1, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :goto_0
    iget-boolean v0, p0, Lfreemarker/core/FMParser;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    if-eq v0, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v3}, Lfreemarker/core/FMParser;->t4(II)V

    :cond_3
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iget v3, v0, Lfreemarker/core/Token;->kind:I

    if-eq v3, p1, :cond_4

    return v2

    :cond_4
    iget p1, p0, Lfreemarker/core/FMParser;->s:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    if-eq v0, p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lfreemarker/core/FMParser;->z:Lfreemarker/core/FMParser$LookaheadSuccess;

    throw p0

    :cond_6
    :goto_2
    return v1
.end method

.method public final E()Lifa;
    .locals 7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    const/16 v2, 0x8b

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v2

    new-instance v3, Lme1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lme1;-><init>(Lfreemarker/core/t0;Lifa;I)V

    iget-object v1, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/t1;->C(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/t1;)V

    new-instance v1, Lqx4;

    invoke-direct {v1, v3}, Lqx4;-><init>(Lme1;)V

    :goto_0
    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_0
    const/16 v4, 0x9

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x18

    iget v5, p0, Lfreemarker/core/FMParser;->u:I

    aput v5, v2, v4

    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_1
    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v3, 0x19

    iget v4, p0, Lfreemarker/core/FMParser;->u:I

    aput v4, v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v3

    new-instance v4, Lme1;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v3, v6}, Lme1;-><init>(Lfreemarker/core/t0;Lifa;I)V

    iget-object v5, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, v5, v2, v3}, Lfreemarker/core/t1;->C(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/t1;)V

    invoke-virtual {v1, v4}, Lqx4;->l0(Lme1;)V

    :goto_1
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, v0, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    :cond_3
    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v3

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v4

    new-instance v5, Lme1;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v4, v6}, Lme1;-><init>(Lfreemarker/core/t0;Lifa;I)V

    iget-object v3, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v5, v3, v2, v4}, Lfreemarker/core/t1;->C(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/t1;)V

    invoke-virtual {v1, v5}, Lqx4;->l0(Lme1;)V

    goto :goto_0
.end method

.method public final E0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->d4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final E1()Z
    .locals 1

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final E2()Z
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->H2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->I2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/4 p0, 0x0

    return p0
.end method

.method public final E3()Z
    .locals 2

    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->S3()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final E4(Lfreemarker/core/t0;Ljava/lang/String;)V
    .locals 2

    instance-of p0, p1, Lfreemarker/core/i;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ". Expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0
.end method

.method public final F()Lfreemarker/core/b1;
    .locals 6

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    move-result-object v3

    new-instance v4, Lfreemarker/core/b1;

    iget-object v5, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    iget-object v2, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v4, v5, v1, v2}, Lfreemarker/core/b1;-><init>(Lfreemarker/template/Template;Lfreemarker/core/t0;Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {p0, v4}, Lfreemarker/template/Template;->n0(Lfreemarker/core/b1;)V

    return-object v4
.end method

.method public final F0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0x9

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->e4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final F1()Z
    .locals 1

    const/16 v0, 0x5e

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final F2()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->J2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final F3()Z
    .locals 1

    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final F4(Lfreemarker/core/t0;Ljava/lang/String;)V
    .locals 2

    instance-of p0, p1, Lfreemarker/core/v0;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Found hash literal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ". Expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0
.end method

.method public final G()Lbz4;
    .locals 12

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v3

    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_0
    const/16 v4, 0x7a

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x32

    iget v5, p0, Lfreemarker/core/FMParser;->u:I

    aput v5, v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_0
    const/4 v1, 0x0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    :goto_1
    iget v7, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v7, v2, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v7

    :cond_2
    const/16 v8, 0x85

    if-eq v7, v8, :cond_3

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x33

    iget v7, p0, Lfreemarker/core/FMParser;->u:I

    aput v7, v1, v2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    move-result-object v7

    new-instance v8, Lbz4;

    iget-object v2, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lbz4;-><init>(Lfreemarker/template/Template;Lfreemarker/core/t0;Lfreemarker/core/t0;Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v8, p0, v0, v7}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v8

    :cond_3
    invoke-virtual {p0, v8}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v7

    const/16 v8, 0x61

    invoke-virtual {p0, v8}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v8

    iget-object v9, v7, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const-string v10, "parse"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v5, v8

    goto :goto_1

    :cond_4
    const-string v10, "encoding"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v4, v8

    goto :goto_1

    :cond_5
    const-string v6, "ignore_missing"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "ignoreMissing"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v1, v6

    :cond_7
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported named #include parameter: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\". Supported parameters are: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\"parse\", \"encoding\", \"ignore_missing\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v1, :cond_8

    const-string v1, ""

    goto :goto_2

    :cond_8
    const-string v1, " Supporting camelCase parameter names is planned for FreeMarker 2.4.0; check if an update is available, and if it indeed supports camel case."

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v0, v1, p0, v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :cond_9
    :goto_3
    iget-object v6, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-virtual {v6, v7}, Lfreemarker/core/u0;->e(Lfreemarker/core/Token;)V

    move-object v6, v8

    goto/16 :goto_1
.end method

.method public final G0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xa

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->f4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final G1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->E2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final G2()Z
    .locals 3

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x48

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K2()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->L2()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->M2()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final G3()Z
    .locals 2

    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F2()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final G4(Lfreemarker/core/t0;Ljava/lang/String;)V
    .locals 2

    instance-of p0, p1, Lfreemarker/core/c1;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Found list literal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ". Expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0
.end method

.method public final H()Lfreemarker/core/y0;
    .locals 7

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    const/16 v2, 0x8b

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K4()Lfreemarker/core/FMParser$b;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lfreemarker/core/FMParser$b;->a(Lfreemarker/core/FMParser$b;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-static {v2}, Lfreemarker/core/FMParser$b;->c(Lfreemarker/core/FMParser$b;)I

    move-result v1

    if-eq v1, v5, :cond_1

    invoke-static {v2}, Lfreemarker/core/FMParser$b;->c(Lfreemarker/core/FMParser$b;)I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "Can\'t nest #items into each other that belong to the same #list."

    goto :goto_0

    :cond_0
    const-string v1, "The parent #list of the #items must not have \"as loopVar\" parameter."

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->B0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " doesn\'t support nested #items."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Lfreemarker/core/ParseException;

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v2, v1, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v2

    :cond_2
    invoke-static {v2, v4}, Lfreemarker/core/FMParser$b;->d(Lfreemarker/core/FMParser$b;I)I

    iget-object v3, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-static {v2, v3}, Lfreemarker/core/FMParser$b;->b(Lfreemarker/core/FMParser$b;Ljava/lang/String;)Ljava/lang/String;

    iget v3, p0, Lfreemarker/core/FMParser;->f:I

    add-int/2addr v3, v5

    iput v3, p0, Lfreemarker/core/FMParser;->f:I

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v3

    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v4

    iget v6, p0, Lfreemarker/core/FMParser;->f:I

    sub-int/2addr v6, v5

    iput v6, p0, Lfreemarker/core/FMParser;->f:I

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lfreemarker/core/FMParser$b;->b(Lfreemarker/core/FMParser$b;Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Lfreemarker/core/y0;

    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lfreemarker/core/y0;-><init>(Ljava/lang/String;Lifa;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, p0, v0, v4}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v2

    :cond_3
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "#items must be inside a #list block."

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final H0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xb

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->g4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final H1()Z
    .locals 1

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final H2()Z
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->N2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->O2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/4 p0, 0x0

    return p0
.end method

.method public final H3()Z
    .locals 2

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final H4(Lfreemarker/core/t0;Ljava/lang/String;)V
    .locals 2

    instance-of p0, p1, Lfreemarker/core/k1;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Found number literal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ". Expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0
.end method

.method public final I()Lifa;
    .locals 8

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_0
    const/16 v4, 0x83

    const/4 v5, 0x0

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x1b

    iget v6, p0, Lfreemarker/core/FMParser;->u:I

    aput v6, v2, v4

    move-object v2, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    :goto_0
    const/16 v4, 0x8b

    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->M4()Lfreemarker/core/FMParser$b;

    move-result-object v4

    if-eqz v2, :cond_2

    iget-object v6, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-static {v4, v6}, Lfreemarker/core/FMParser$b;->b(Lfreemarker/core/FMParser$b;Ljava/lang/String;)Ljava/lang/String;

    iget v6, p0, Lfreemarker/core/FMParser;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lfreemarker/core/FMParser;->f:I

    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v6

    if-eqz v2, :cond_3

    iget v4, p0, Lfreemarker/core/FMParser;->f:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lfreemarker/core/FMParser;->f:I

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lfreemarker/core/FMParser$b;->c(Lfreemarker/core/FMParser$b;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_8

    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->L4()V

    iget v4, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v4, v3, :cond_4

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v4

    :cond_4
    const/16 v3, 0x30

    if-eq v4, v3, :cond_5

    iget-object v3, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x1c

    iget v7, p0, Lfreemarker/core/FMParser;->u:I

    aput v7, v3, v4

    move-object v3, v5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->q()Lv83;

    move-result-object v3

    :goto_2
    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v4

    new-instance v7, Lfreemarker/core/z0;

    if-eqz v2, :cond_6

    iget-object v5, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    :cond_6
    const/4 v2, 0x0

    invoke-direct {v7, v1, v5, v6, v2}, Lfreemarker/core/z0;-><init>(Lfreemarker/core/t0;Ljava/lang/String;Lifa;Z)V

    iget-object v1, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v7, v1, v0, v4}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance v1, Lsl5;

    invoke-direct {v1, v7, v3}, Lsl5;-><init>(Lfreemarker/core/z0;Lv83;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, v0, v4}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    move-object v7, v1

    :goto_3
    return-object v7

    :cond_8
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "#list must have either \"as loopVar\" parameter or nested #items that belongs to it."

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final I0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xc

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->h4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final I1()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final I2()Z
    .locals 3

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->P2()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Q2()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->H2()Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final I3()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->T3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->U3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->V3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->X3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Y3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final I4(Lfreemarker/core/t0;Ljava/lang/String;)V
    .locals 2

    instance-of p0, p1, Lfreemarker/core/r1;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Found string literal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ". Expecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0
.end method

.method public final J()Lfreemarker/core/c1;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->a0()Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    new-instance v3, Lfreemarker/core/c1;

    invoke-direct {v3, v1}, Lfreemarker/core/c1;-><init>(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final J0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xd

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->i4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final J1()Z
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final J2()Z
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->R2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->S2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/4 p0, 0x0

    return p0
.end method

.method public final J3()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Z3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->a4()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final J4(Lfreemarker/core/t0;)V
    .locals 1

    const-string v0, "number"

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->I4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->G4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->F4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->E4(Lfreemarker/core/t0;Ljava/lang/String;)V

    return-void
.end method

.method public final K()Lfreemarker/core/Token;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x8b

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8c

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x50

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final K0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xe

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->j4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final K1()Z
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final K2()Z
    .locals 2

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F2()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final K3()Z
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->b4()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->b4()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/4 p0, 0x0

    return p0
.end method

.method public final K4()Lfreemarker/core/FMParser$b;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/core/FMParser$b;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final L()Lfreemarker/core/e1;
    .locals 16

    move-object/from16 v0, p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lfreemarker/core/FMParser;->p:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_0
    const/16 v6, 0x15

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v2, v6, :cond_2

    const/16 v6, 0x16

    if-ne v2, v6, :cond_1

    invoke-virtual {v0, v6}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    move-object v9, v2

    move v6, v8

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x34

    iget v3, v0, Lfreemarker/core/FMParser;->u:I

    aput v3, v1, v2

    invoke-virtual {v0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {v0, v6}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    move-object v9, v2

    move v6, v7

    :goto_0
    iget-boolean v2, v0, Lfreemarker/core/FMParser;->g:Z

    if-nez v2, :cond_1d

    iget-boolean v2, v0, Lfreemarker/core/FMParser;->h:Z

    if-nez v2, :cond_1d

    if-eqz v6, :cond_3

    iput-boolean v7, v0, Lfreemarker/core/FMParser;->h:Z

    goto :goto_1

    :cond_3
    iput-boolean v7, v0, Lfreemarker/core/FMParser;->g:Z

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->D()Lfreemarker/core/t0;

    move-result-object v2

    instance-of v10, v2, Lfreemarker/core/r1;

    if-eqz v10, :cond_4

    check-cast v2, Lfreemarker/core/r1;

    invoke-virtual {v2}, Lfreemarker/core/r1;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    check-cast v2, Lfreemarker/core/x0;

    invoke-virtual {v2}, Lfreemarker/core/x0;->X()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget v10, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v10, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v10

    :cond_5
    const/16 v11, 0x7e

    if-eq v10, v11, :cond_6

    iget-object v10, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v11, 0x35

    iget v12, v0, Lfreemarker/core/FMParser;->u:I

    aput v12, v10, v11

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v11}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_3
    const/4 v10, 0x0

    move v12, v8

    move v13, v12

    move-object v11, v10

    :goto_4
    iget v14, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v14, v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v14

    :cond_7
    const/16 v15, 0x85

    if-eq v14, v15, :cond_11

    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v7, 0x36

    iget v12, v0, Lfreemarker/core/FMParser;->u:I

    aput v12, v1, v7

    iget v1, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v1, v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_8
    const/16 v7, 0x7f

    if-eq v1, v7, :cond_9

    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v7, 0x3a

    iget v12, v0, Lfreemarker/core/FMParser;->u:I

    aput v12, v1, v7

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v7}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_5
    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    iget-object v1, v0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    iput-object v10, v0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    iget v7, v0, Lfreemarker/core/FMParser;->k:I

    sget v10, Ld1d;->f:I

    if-lt v7, v10, :cond_a

    iget v7, v0, Lfreemarker/core/FMParser;->f:I

    iput v8, v0, Lfreemarker/core/FMParser;->f:I

    goto :goto_6

    :cond_a
    move v7, v8

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v12

    iget v13, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v13, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v13

    :cond_b
    const/16 v14, 0x2b

    if-eq v13, v14, :cond_e

    const/16 v14, 0x2c

    if-ne v13, v14, :cond_d

    invoke-virtual {v0, v14}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v5

    if-nez v6, :cond_c

    :goto_7
    move-object v13, v5

    goto :goto_8

    :cond_c
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "Expected function end tag here."

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v0, v9}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_d
    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x3b

    iget v3, v0, Lfreemarker/core/FMParser;->u:I

    aput v3, v1, v2

    invoke-virtual {v0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :cond_e
    invoke-virtual {v0, v14}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v5

    if-eqz v6, :cond_10

    goto :goto_7

    :goto_8
    iput-object v1, v0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    iget v1, v0, Lfreemarker/core/FMParser;->k:I

    if-lt v1, v10, :cond_f

    iput v7, v0, Lfreemarker/core/FMParser;->f:I

    :cond_f
    iput-boolean v8, v0, Lfreemarker/core/FMParser;->h:Z

    iput-boolean v8, v0, Lfreemarker/core/FMParser;->g:Z

    new-instance v8, Lfreemarker/core/e1;

    move-object v1, v8

    move-object v5, v11

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lfreemarker/core/e1;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLifa;)V

    iget-object v1, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v8, v1, v9, v13}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v0, v8}, Lfreemarker/template/Template;->o0(Lfreemarker/core/e1;)V

    return-object v8

    :cond_10
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "Expected macro end tag here."

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v0, v9}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_11
    invoke-virtual {v0, v15}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v14

    iget v15, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v15, v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v15

    :cond_12
    const/16 v7, 0x73

    if-eq v15, v7, :cond_13

    iget-object v7, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v15, 0x37

    iget v8, v0, Lfreemarker/core/FMParser;->u:I

    aput v8, v7, v15

    goto :goto_9

    :cond_13
    invoke-virtual {v0, v7}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/4 v12, 0x1

    :goto_9
    iget v7, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v7, v5, :cond_14

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v7

    :cond_14
    const/16 v8, 0x61

    if-eq v7, v8, :cond_15

    iget-object v7, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v8, 0x38

    iget v15, v0, Lfreemarker/core/FMParser;->u:I

    aput v15, v7, v8

    move-object v7, v10

    goto :goto_a

    :cond_15
    invoke-virtual {v0, v8}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v7

    iget-object v8, v14, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    :goto_a
    iget v8, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v8, v5, :cond_16

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v8

    :cond_16
    const/16 v15, 0x79

    if-eq v8, v15, :cond_17

    iget-object v8, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v15, 0x39

    iget v5, v0, Lfreemarker/core/FMParser;->u:I

    aput v5, v8, v15

    goto :goto_b

    :cond_17
    invoke-virtual {v0, v15}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_b
    if-nez v11, :cond_1c

    if-eqz v12, :cond_19

    if-nez v7, :cond_18

    iget-object v11, v14, Lfreemarker/core/Token;->image:Ljava/lang/String;

    :goto_c
    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_18
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "\"Catch-all\" macro parameter may not have a default value."

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v0, v14}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_19
    iget-object v5, v14, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_1b

    if-eqz v7, :cond_1a

    goto :goto_d

    :cond_1a
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "In a macro declaration, parameters without a default value must all occur before the parameters with default values."

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v0, v14}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_1b
    :goto_d
    iget-object v5, v14, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_1c
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "There may only be one \"catch-all\" parameter in a macro declaration, and it must be the last parameter."

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v0, v14}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_1d
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "Macros cannot be nested."

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v0, v9}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final L0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xf

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->k4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final L1()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->p2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->q2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->r2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final L2()Z
    .locals 1

    const/16 v0, 0x39

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final L3()Z
    .locals 1

    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final L4()V
    .locals 1

    iget-object p0, p0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final M(Lfreemarker/core/t0;)Lfreemarker/core/g1;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->a0()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    new-instance v2, Lfreemarker/core/g1;

    invoke-direct {v2, p1, v0}, Lfreemarker/core/g1;-><init>(Lfreemarker/core/t0;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, p0, p1, v1}, Lfreemarker/core/t1;->B(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final M0(I)Z
    .locals 2

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->l4()Z

    move-result v1
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v1, v0

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v1

    :catch_0
    invoke-virtual {p0, v0, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final M1()Z
    .locals 1

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final M2()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->T2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final M3()Z
    .locals 1

    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final M4()Lfreemarker/core/FMParser$b;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    :cond_0
    new-instance v0, Lfreemarker/core/FMParser$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/core/FMParser$b;-><init>(Lxk3;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final N()Laq6;
    .locals 9

    new-instance v0, Laq6;

    invoke-direct {v0}, Laq6;-><init>()V

    iget v1, p0, Lfreemarker/core/FMParser;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/core/FMParser;->j:I

    const/4 v1, 0x0

    :cond_0
    :pswitch_0
    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_1
    const/16 v4, 0x43

    const/16 v5, 0x41

    const/16 v6, 0x8

    const/4 v7, 0x6

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v1, 0x55

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->V()Lj47;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->m0()Lrw2;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Y()Lxga;

    move-result-object v2

    goto :goto_0

    :cond_2
    :pswitch_4
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->z()Lifa;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_3

    move-object v1, v2

    :cond_3
    invoke-virtual {v0, v2}, Laq6;->l0(Lifa;)V

    iget v8, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v8, v3, :cond_4

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v8

    :cond_4
    if-eq v8, v7, :cond_0

    if-eq v8, v6, :cond_0

    if-eq v8, v5, :cond_0

    if-eq v8, v4, :cond_0

    packed-switch v8, :pswitch_data_5

    packed-switch v8, :pswitch_data_6

    packed-switch v8, :pswitch_data_7

    packed-switch v8, :pswitch_data_8

    packed-switch v8, :pswitch_data_9

    iget-object v3, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x56

    iget v5, p0, Lfreemarker/core/FMParser;->u:I

    aput v5, v3, v4

    iget v3, p0, Lfreemarker/core/FMParser;->j:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lfreemarker/core/FMParser;->j:I

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v0, p0, v1, v2}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x48
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x31
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x48
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final N0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->m4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final N1()Z
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final N2()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->U2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->V2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final N3()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->c4()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->U0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->V0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->X0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Y0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Z0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->a1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->b1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->c1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->d1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->e1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->f1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->g1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->h1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->i1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->j1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->k1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->l1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->m1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->n1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->o1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->p1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->q1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->r1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->s1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->t1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->v1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public N4(Lfreemarker/template/Template;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    return-void
.end method

.method public final O()Lfreemarker/core/t0;
    .locals 4

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->q0()Lfreemarker/core/t0;

    move-result-object v0

    :goto_0
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->N0(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_0
    const/16 v3, 0x71

    if-eq v1, v3, :cond_3

    const/16 v3, 0x74

    if-eq v1, v3, :cond_2

    const/16 v3, 0x75

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/4 v1, 0x5

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->q0()Lfreemarker/core/t0;

    move-result-object v2

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->J4(Lfreemarker/core/t0;)V

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->J4(Lfreemarker/core/t0;)V

    new-instance v3, Lfreemarker/core/d;

    invoke-direct {v3, v0, v2, v1}, Lfreemarker/core/d;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;I)V

    iget-object v1, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    move-object v0, v3

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final O0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->n4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final O1()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->s2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final O2()Z
    .locals 3

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->X2()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Y2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Z2()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->N2()Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final O3()Z
    .locals 3

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F2()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v2, 0x79

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F2()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->w1()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/4 p0, 0x0

    return p0
.end method

.method public final O4(Lfreemarker/core/t0;)V
    .locals 1

    const-string v0, "string"

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->H4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->G4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->F4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->E4(Lfreemarker/core/t0;Ljava/lang/String;)V

    return-void
.end method

.method public final P()Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    const/16 v3, 0x61

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    iget-object v3, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lfreemarker/core/u0;->c(I)V

    iget-object v3, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lfreemarker/core/u0;->m:Z

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v3

    iget-object v2, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_1
    if-eq v2, v1, :cond_0

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x45

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v1, v2

    iget-object p0, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lfreemarker/core/u0;->m:Z

    return-object v0
.end method

.method public final P0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->o4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final P1()Z
    .locals 1

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final P2()Z
    .locals 1

    const/16 v0, 0x6f

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final P3()Z
    .locals 1

    const/16 v0, 0x56

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Q()Lifa;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->a0()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    move-result-object v2

    new-instance v3, Lfreemarker/core/h;

    invoke-direct {v3, v1}, Lfreemarker/core/h;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x24

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    new-instance v3, Lfreemarker/core/h;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lfreemarker/core/h;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v0}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    :goto_0
    iget-boolean v1, p0, Lfreemarker/core/FMParser;->g:Z

    if-eqz v1, :cond_3

    return-object v3

    :cond_3
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot use a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " instruction outside a macro."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final Q0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->p4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final Q1()Z
    .locals 1

    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Q2()Z
    .locals 1

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Q3()Z
    .locals 1

    const/16 v0, 0x57

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final R()Ly07;
    .locals 5

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/FMParser;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfreemarker/core/FMParser;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v3

    iget-object v4, p0, Lfreemarker/core/FMParser;->i:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    new-instance v1, Ly07;

    invoke-direct {v1, v2}, Ly07;-><init>(Lifa;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, v0, v3}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    :cond_0
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "#noescape with no matching #escape encountered."

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final R0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->q4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final R1()Z
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final R2()Z
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->a3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->b3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/4 p0, 0x0

    return p0
.end method

.method public final R3()Z
    .locals 1

    const/16 v0, 0x58

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final S()Lxga;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lfreemarker/core/FMParser;->t0(Lfreemarker/core/Token;Ljava/lang/StringBuffer;)Lfreemarker/core/Token;

    move-result-object v2

    new-instance v3, Lxga;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lxga;-><init>(Ljava/lang/String;Z)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v1, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final S0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x7

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->r4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final S1()Z
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final S2()Z
    .locals 2

    const/16 v0, 0x77

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->R2()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final S3()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->x1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final T()Lfreemarker/core/t0;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_1
    if-eq v2, v1, :cond_0

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/4 v2, 0x2

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v1, v2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->b0()Lfreemarker/core/t0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    new-instance v2, Lfreemarker/core/j1;

    invoke-direct {v2, v1}, Lfreemarker/core/j1;-><init>(Lfreemarker/core/t0;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/Token;

    iget-object v5, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, v5, v4, v1}, Lfreemarker/core/t1;->C(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/t1;)V

    add-int/lit8 v3, v3, 0x1

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final T0(I)Z
    .locals 3

    iput p1, p0, Lfreemarker/core/FMParser;->s:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->r:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->s4()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/FMParser;->C4(II)V

    return v0
.end method

.method public final T1()Z
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final T2()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->c3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final T3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->y1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final U()Lfreemarker/core/t0;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x59

    if-eq v0, v2, :cond_2

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0xb

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    new-instance v2, Lfreemarker/core/k1;

    iget-object v3, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3}, Lfreemarker/core/Configurable;->f()Lfreemarker/core/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfreemarker/core/c;->l(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v2, v1}, Lfreemarker/core/k1;-><init>(Ljava/lang/Number;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, p0, v0, v0}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final U0()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->J1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final U1()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final U2()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->d3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final U3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->z1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final V()Lj47;
    .locals 14

    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->J4(Lfreemarker/core/t0;)V

    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_0
    const/16 v4, 0x7a

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x17

    iget v5, p0, Lfreemarker/core/FMParser;->u:I

    aput v5, v2, v4

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    :goto_0
    const/16 v4, 0x81

    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v4

    if-eqz v2, :cond_f

    new-instance v5, Ljava/util/StringTokenizer;

    iget-object v6, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const-string v7, "mM"

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x2d

    move v7, v3

    move v8, v7

    :goto_1
    move v9, v6

    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x6d

    const/16 v12, 0x4d

    if-eq v9, v6, :cond_6

    const-string v13, "Invalid formatting string"

    if-eq v9, v12, :cond_4

    if-ne v9, v11, :cond_3

    if-ne v8, v3, :cond_2

    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_2
    new-instance v0, Lfreemarker/core/ParseException;

    iget-object v1, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v0, v13, v1, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :cond_3
    new-instance v0, Lfreemarker/core/ParseException;

    iget-object v1, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v0, v13, v1, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :cond_4
    if-ne v7, v3, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_5
    new-instance v0, Lfreemarker/core/ParseException;

    iget-object v1, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v0, v13, v1, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :cond_6
    const-string v9, "m"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v11

    goto :goto_2

    :cond_7
    const-string v9, "M"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v12

    goto :goto_2

    :cond_8
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0
    :try_end_0
    .catch Lfreemarker/core/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid number in the format specifier "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v0, v1, p0, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :catch_1
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid format specifier "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v0, v1, p0, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :cond_9
    if-ne v7, v3, :cond_b

    if-eq v8, v3, :cond_a

    move v7, v8

    goto :goto_3

    :cond_a
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "Invalid format specification, at least one of m and M must be specified!"

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v0, v1, p0, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :cond_b
    if-ne v8, v3, :cond_c

    const/4 v8, 0x0

    :cond_c
    :goto_3
    if-gt v8, v7, :cond_e

    const/16 v3, 0x32

    if-gt v8, v3, :cond_d

    if-gt v7, v3, :cond_d

    new-instance v2, Lj47;

    invoke-direct {v2, v1, v8, v7}, Lj47;-><init>(Lfreemarker/core/t0;II)V

    goto :goto_4

    :cond_d
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "Cannot specify more than 50 fraction digits"

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v0, v1, p0, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :cond_e
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "Invalid format specification, min cannot be greater than max!"

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v0, v1, p0, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :cond_f
    new-instance v2, Lj47;

    invoke-direct {v2, v1}, Lj47;-><init>(Lfreemarker/core/t0;)V

    :goto_4
    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, p0, v0, v4}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final V0()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final V1()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final V2()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->e3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final V3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final W()Lifa;
    .locals 3

    sget-object v0, Lxga;->o:Lxga;

    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_0
    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x41

    if-eq v1, v2, :cond_1

    const/16 v2, 0x43

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x59

    iget p0, p0, Lfreemarker/core/FMParser;->u:I

    aput p0, v1, v2

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->N()Laq6;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x48
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final W0()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->L1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final W1()Z
    .locals 1

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final W2()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->f3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final W3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->B1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final X()Lfreemarker/core/t0;
    .locals 4

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->c()Lfreemarker/core/t0;

    move-result-object v0

    :goto_0
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->c()Lfreemarker/core/t0;

    move-result-object v1

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->x0(Lfreemarker/core/t0;)V

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->x0(Lfreemarker/core/t0;)V

    new-instance v2, Lfreemarker/core/l1;

    invoke-direct {v2, v0, v1}, Lfreemarker/core/l1;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    iget-object v3, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, v3, v0, v1}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final X0()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->M1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final X1()Z
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final X2()Z
    .locals 1

    const/16 v0, 0x71

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final X3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->C1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Y()Lxga;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    iget v5, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v5

    :cond_0
    packed-switch v5, :pswitch_data_0

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v1, 0x52

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, v0, v1

    invoke-virtual {p0, v6}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_0
    const/16 v2, 0x4a

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x49

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    const/16 v4, 0x48

    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    :goto_1
    iget-object v5, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    if-eqz v4, :cond_2

    iput-object v1, v4, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    :cond_2
    const v5, 0x7fffffff

    invoke-virtual {p0, v5}, Lfreemarker/core/FMParser;->K0(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lfreemarker/core/FMParser;->d:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lfreemarker/core/FMParser;->j:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    sget-object p0, Lxga;->o:Lxga;

    return-object p0

    :cond_4
    new-instance v1, Lxga;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lxga;-><init>(Ljava/lang/String;Z)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, v3, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Y0()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->N1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Y1()Z
    .locals 1

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Y2()Z
    .locals 1

    const/16 v0, 0x74

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Y3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->D1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Z()Lfreemarker/core/t0;
    .locals 4

    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    new-instance v3, Lfreemarker/core/m1;

    invoke-direct {v3, v1}, Lfreemarker/core/m1;-><init>(Lfreemarker/core/t0;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final Z0()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->O1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Z1()Z
    .locals 1

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Z2()Z
    .locals 1

    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Z3()Z
    .locals 3

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->E1()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F1()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->E2()Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Lfreemarker/core/t0;)Lfreemarker/core/t0;
    .locals 3

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x5b

    if-eq v0, v2, :cond_6

    const/16 v2, 0x78

    if-eq v0, v2, :cond_5

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_4

    const/16 v2, 0x7e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x90

    if-eq v0, v2, :cond_5

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x60

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1}, Lfreemarker/core/FMParser;->t(Lfreemarker/core/t0;)Lfreemarker/core/t0;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v0, 0xd

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, p1, v0

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, p1}, Lfreemarker/core/FMParser;->h(Lfreemarker/core/t0;)Lfreemarker/core/t0;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lfreemarker/core/FMParser;->M(Lfreemarker/core/t0;)Lfreemarker/core/g1;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lfreemarker/core/FMParser;->p(Lfreemarker/core/t0;)Lfreemarker/core/t0;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lfreemarker/core/FMParser;->n(Lfreemarker/core/t0;)Lfreemarker/core/t0;

    move-result-object p0

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lfreemarker/core/FMParser;->o(Lfreemarker/core/t0;)Lfreemarker/core/t0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final a0()Ljava/util/ArrayList;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_0
    const/16 v3, 0x85

    const/16 v4, 0x80

    const/16 v5, 0x7e

    const/16 v6, 0x7c

    const/16 v7, 0x78

    const/16 v8, 0x70

    const/16 v9, 0x6f

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_1

    if-eq v1, v7, :cond_1

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x48

    iget p0, p0, Lfreemarker/core/FMParser;->u:I

    aput p0, v1, v2

    goto :goto_1

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_2
    const/16 v10, 0x79

    if-eq v1, v9, :cond_3

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_3

    if-eq v1, v10, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x46

    iget p0, p0, Lfreemarker/core/FMParser;->u:I

    aput p0, v1, v2

    :goto_1
    return-object v0

    :cond_3
    :pswitch_1
    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_4
    if-eq v1, v10, :cond_5

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v10, 0x47

    iget v11, p0, Lfreemarker/core/FMParser;->u:I

    aput v11, v1, v10

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v10}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->P1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a2()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->t2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a3()Z
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->g3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->h3()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final a4()Z
    .locals 2

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->G1()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Lfreemarker/core/t0;
    .locals 5

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->O()Lfreemarker/core/t0;

    move-result-object v0

    :goto_0
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->M0(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x6f

    if-eq v1, v4, :cond_2

    const/16 v4, 0x70

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/4 v1, 0x4

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->O()Lfreemarker/core/t0;

    move-result-object v2

    if-eqz v1, :cond_3

    new-instance v1, Lfreemarker/core/a;

    invoke-direct {v1, v0, v2}, Lfreemarker/core/a;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->J4(Lfreemarker/core/t0;)V

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->J4(Lfreemarker/core/t0;)V

    new-instance v1, Lfreemarker/core/d;

    invoke-direct {v1, v0, v2, v3}, Lfreemarker/core/d;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;I)V

    :goto_2
    iget-object v3, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, v3, v0, v2}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final b0()Lfreemarker/core/t0;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x7c

    if-eq v0, v2, :cond_4

    const/16 v2, 0x7e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x80

    if-eq v0, v2, :cond_2

    const/16 v2, 0x85

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/4 v2, 0x0

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->i()Lfreemarker/core/j0;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->U()Lfreemarker/core/t0;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->f()Lfreemarker/core/t0;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->l0(Z)Lfreemarker/core/r1;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->C()Lfreemarker/core/x0;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A()Lfreemarker/core/v0;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Z()Lfreemarker/core/t0;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->J()Lfreemarker/core/c1;

    move-result-object v0

    :goto_0
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->E0(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->a(Lfreemarker/core/t0;)Lfreemarker/core/t0;

    move-result-object v0

    goto :goto_0

    :cond_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Q1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b2()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x33

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->v2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b3()Z
    .locals 2

    const/16 v0, 0x76

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->a3()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final b4()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->H1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x49

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x4a

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Lfreemarker/core/t0;
    .locals 4

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->r()Lfreemarker/core/t0;

    move-result-object v0

    :goto_0
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->R0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x76

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->r()Lfreemarker/core/t0;

    move-result-object v1

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->x0(Lfreemarker/core/t0;)V

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->x0(Lfreemarker/core/t0;)V

    new-instance v2, Lfreemarker/core/b;

    invoke-direct {v2, v0, v1}, Lfreemarker/core/b;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    iget-object v3, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, v3, v0, v1}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final c0()Lfreemarker/core/t0;
    .locals 6

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->b()Lfreemarker/core/t0;

    move-result-object v0

    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0xa

    iget p0, p0, Lfreemarker/core/FMParser;->u:I

    aput p0, v1, v2

    goto/16 :goto_4

    :pswitch_0
    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_1
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_1

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v1, 0x9

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_1
    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_2
    const/16 v4, 0x5d

    if-eq v1, v4, :cond_4

    const/16 v4, 0x5e

    if-ne v1, v4, :cond_3

    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v1, 0x8

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_4
    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->b()Lfreemarker/core/t0;

    move-result-object v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->Q0(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->b()Lfreemarker/core/t0;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    move v5, v2

    move-object v2, v1

    move v1, v5

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->J4(Lfreemarker/core/t0;)V

    if-eqz v3, :cond_6

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->J4(Lfreemarker/core/t0;)V

    :cond_6
    new-instance v4, Lfreemarker/core/o1;

    invoke-direct {v4, v0, v3, v1}, Lfreemarker/core/o1;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;I)V

    if-eqz v3, :cond_7

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, p0, v0, v3}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, p0, v0, v2}, Lfreemarker/core/t1;->B(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/Token;)V

    :goto_3
    move-object v0, v4

    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5c
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final c1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->R1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c2()Z
    .locals 1

    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c3()Z
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->i3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->i3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/4 p0, 0x0

    return p0
.end method

.method public final c4()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->I1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Lifa;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lfreemarker/core/FMParser;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_0
    const/4 v4, 0x3

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x26

    iget v4, v0, Lfreemarker/core/FMParser;->u:I

    aput v4, v1, v2

    invoke-virtual {v0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_0
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    iget-boolean v7, v0, Lfreemarker/core/FMParser;->g:Z

    if-nez v7, :cond_2

    iget-boolean v7, v0, Lfreemarker/core/FMParser;->h:Z

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v3, "Local variable assigned outside a macro."

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v3, v0, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_2
    :goto_0
    const/4 v7, 0x2

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    move v7, v4

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    move v7, v6

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->D()Lfreemarker/core/t0;

    move-result-object v8

    instance-of v9, v8, Lfreemarker/core/r1;

    if-eqz v9, :cond_3

    move-object v9, v8

    check-cast v9, Lfreemarker/core/r1;

    invoke-virtual {v9}, Lfreemarker/core/r1;->getAsString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_3
    move-object v9, v8

    check-cast v9, Lfreemarker/core/x0;

    invoke-virtual {v9}, Lfreemarker/core/x0;->X()Ljava/lang/String;

    move-result-object v9

    :goto_2
    iget v10, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v10, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v10

    :cond_4
    const/16 v11, 0x28

    const/16 v12, 0x29

    const/16 v13, 0x2a

    const-string v14, "Cannot assign to namespace here."

    const/16 v15, 0x82

    const/16 v5, 0x61

    const/16 v16, 0x0

    if-eq v10, v5, :cond_d

    const/16 v5, 0x8b

    if-eq v10, v15, :cond_5

    if-eq v10, v5, :cond_5

    packed-switch v10, :pswitch_data_1

    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x31

    iget v4, v0, Lfreemarker/core/FMParser;->u:I

    aput v4, v1, v2

    invoke-virtual {v0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :cond_5
    iget v1, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v1, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_6
    if-eq v1, v15, :cond_7

    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v8, 0x2f

    iget v10, v0, Lfreemarker/core/FMParser;->u:I

    aput v10, v1, v8

    :goto_3
    move-object/from16 v1, v16

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v15}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v16

    if-ne v7, v6, :cond_c

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v5

    iget v8, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v8, v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v8

    :cond_8
    const-string v10, "Mismatched assignment tags."

    packed-switch v8, :pswitch_data_2

    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x30

    iget v4, v0, Lfreemarker/core/FMParser;->u:I

    aput v4, v1, v2

    invoke-virtual {v0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_3
    invoke-virtual {v0, v13}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v3

    if-ne v7, v6, :cond_9

    goto :goto_5

    :cond_9
    new-instance v1, Lfreemarker/core/ParseException;

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v10, v0, v3}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :pswitch_4
    invoke-virtual {v0, v12}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v3

    if-ne v7, v4, :cond_a

    goto :goto_5

    :cond_a
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "Mismatched assignment tags"

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v0, v3}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :pswitch_5
    invoke-virtual {v0, v11}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v3

    const/4 v4, 0x2

    if-ne v7, v4, :cond_b

    :goto_5
    new-instance v4, Lfreemarker/core/g;

    invoke-direct {v4, v5, v9, v7, v1}, Lfreemarker/core/g;-><init>(Lifa;Ljava/lang/String;ILfreemarker/core/t0;)V

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, v0, v2, v3}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4

    :cond_b
    new-instance v1, Lfreemarker/core/ParseException;

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v10, v0, v3}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_c
    new-instance v2, Lfreemarker/core/ParseException;

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v2, v14, v0, v1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v2

    :cond_d
    :pswitch_6
    iget v4, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v4, v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v4

    :cond_e
    const/16 v15, 0x67

    const/16 v13, 0x68

    const/16 v5, 0x6a

    const/16 v10, 0x69

    const/16 v6, 0x61

    if-eq v4, v6, :cond_12

    packed-switch v4, :pswitch_data_3

    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    iget v2, v0, Lfreemarker/core/FMParser;->u:I

    aput v2, v1, v12

    invoke-virtual {v0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_7
    iget v4, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v4, v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v4

    :cond_f
    if-eq v4, v10, :cond_11

    if-ne v4, v5, :cond_10

    invoke-virtual {v0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_6

    :cond_10
    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    iget v2, v0, Lfreemarker/core/FMParser;->u:I

    aput v2, v1, v11

    invoke-virtual {v0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :cond_11
    invoke-virtual {v0, v10}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_6
    iget-object v4, v0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    move-object/from16 v6, v16

    goto :goto_8

    :cond_12
    :pswitch_8
    iget v4, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v4, v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v4

    :cond_13
    const/16 v6, 0x61

    if-eq v4, v6, :cond_14

    packed-switch v4, :pswitch_data_4

    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x27

    iget v4, v0, Lfreemarker/core/FMParser;->u:I

    aput v4, v1, v2

    invoke-virtual {v0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_9
    invoke-virtual {v0, v13}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_7

    :pswitch_a
    invoke-virtual {v0, v15}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_7

    :pswitch_b
    const/16 v4, 0x66

    invoke-virtual {v0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_7

    :pswitch_c
    const/16 v4, 0x65

    invoke-virtual {v0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_7

    :pswitch_d
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_7

    :cond_14
    move v4, v6

    invoke-virtual {v0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_7
    iget-object v4, v0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v6

    :goto_8
    new-instance v11, Lfreemarker/core/e;

    iget v12, v4, Lfreemarker/core/Token;->kind:I

    invoke-direct {v11, v9, v12, v6, v7}, Lfreemarker/core/e;-><init>(Ljava/lang/String;ILfreemarker/core/t0;I)V

    if-eqz v6, :cond_15

    iget-object v4, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v11, v4, v8, v6}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    goto :goto_9

    :cond_15
    iget-object v6, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v11, v6, v8, v4}, Lfreemarker/core/t1;->B(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/Token;)V

    :goto_9
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Lfreemarker/core/FMParser;->F0(I)Z

    move-result v4

    if-eqz v4, :cond_21

    iget v4, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v4, v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v4

    :cond_16
    const/16 v6, 0x79

    if-eq v4, v6, :cond_17

    iget-object v4, v0, Lfreemarker/core/FMParser;->v:[I

    iget v6, v0, Lfreemarker/core/FMParser;->u:I

    const/16 v8, 0x2a

    aput v6, v4, v8

    goto :goto_b

    :cond_17
    const/16 v8, 0x2a

    invoke-virtual {v0, v6}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->D()Lfreemarker/core/t0;

    move-result-object v4

    instance-of v6, v4, Lfreemarker/core/r1;

    if-eqz v6, :cond_18

    move-object v6, v4

    check-cast v6, Lfreemarker/core/r1;

    invoke-virtual {v6}, Lfreemarker/core/r1;->getAsString()Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :cond_18
    move-object v6, v4

    check-cast v6, Lfreemarker/core/x0;

    invoke-virtual {v6}, Lfreemarker/core/x0;->X()Ljava/lang/String;

    move-result-object v6

    :goto_c
    iget v9, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v9, v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v9

    :cond_19
    const/16 v11, 0x61

    if-eq v9, v11, :cond_1d

    packed-switch v9, :pswitch_data_5

    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x2d

    iget v4, v0, Lfreemarker/core/FMParser;->u:I

    aput v4, v1, v2

    invoke-virtual {v0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_e
    iget v9, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v9, v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v9

    :cond_1a
    if-eq v9, v10, :cond_1c

    if-ne v9, v5, :cond_1b

    invoke-virtual {v0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_d

    :cond_1b
    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x2c

    iget v4, v0, Lfreemarker/core/FMParser;->u:I

    aput v4, v1, v2

    invoke-virtual {v0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :cond_1c
    invoke-virtual {v0, v10}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_d
    iget-object v9, v0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    move-object v5, v9

    move-object/from16 v8, v16

    const/16 v11, 0x65

    const/16 v12, 0x64

    goto :goto_12

    :cond_1d
    :pswitch_f
    iget v9, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v9, v3, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v9

    :cond_1e
    const/16 v11, 0x61

    if-eq v9, v11, :cond_1f

    packed-switch v9, :pswitch_data_6

    iget-object v1, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x2b

    iget v4, v0, Lfreemarker/core/FMParser;->u:I

    aput v4, v1, v2

    invoke-virtual {v0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_10
    invoke-virtual {v0, v13}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_e
    const/16 v9, 0x66

    :goto_f
    const/16 v11, 0x65

    :goto_10
    const/16 v12, 0x64

    goto :goto_11

    :pswitch_11
    invoke-virtual {v0, v15}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_e

    :pswitch_12
    const/16 v9, 0x66

    invoke-virtual {v0, v9}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_f

    :pswitch_13
    const/16 v9, 0x66

    const/16 v11, 0x65

    invoke-virtual {v0, v11}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_10

    :pswitch_14
    const/16 v9, 0x66

    const/16 v11, 0x65

    const/16 v12, 0x64

    invoke-virtual {v0, v12}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    goto :goto_11

    :cond_1f
    move v5, v11

    const/16 v9, 0x66

    const/16 v11, 0x65

    const/16 v12, 0x64

    invoke-virtual {v0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_11
    iget-object v5, v0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v17

    move-object/from16 v8, v17

    :goto_12
    new-instance v9, Lfreemarker/core/e;

    iget v10, v5, Lfreemarker/core/Token;->kind:I

    invoke-direct {v9, v6, v10, v8, v7}, Lfreemarker/core/e;-><init>(Ljava/lang/String;ILfreemarker/core/t0;I)V

    if-eqz v8, :cond_20

    iget-object v5, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v9, v5, v4, v8}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    goto :goto_13

    :cond_20
    iget-object v6, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v9, v6, v4, v5}, Lfreemarker/core/t1;->B(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/Token;)V

    :goto_13
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x6a

    const/16 v10, 0x69

    goto/16 :goto_a

    :cond_21
    iget v4, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v4, v3, :cond_22

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v4

    :cond_22
    const/16 v3, 0x82

    if-eq v4, v3, :cond_23

    iget-object v3, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x2e

    iget v5, v0, Lfreemarker/core/FMParser;->u:I

    aput v5, v3, v4

    move-object/from16 v3, v16

    const/4 v4, 0x1

    goto :goto_14

    :cond_23
    invoke-virtual {v0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v16

    const/4 v4, 0x1

    if-ne v7, v4, :cond_26

    move-object/from16 v3, v16

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    if-ne v6, v4, :cond_24

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/e;

    invoke-virtual {v1, v3}, Lfreemarker/core/e;->n0(Lfreemarker/core/t0;)V

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, v0, v2, v5}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    :cond_24
    new-instance v4, Lbj;

    invoke-direct {v4, v7}, Lbj;-><init>(I)V

    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v8, v6, :cond_25

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfreemarker/core/e;

    invoke-virtual {v4, v6}, Lbj;->l0(Lfreemarker/core/e;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_25
    invoke-virtual {v4, v3}, Lbj;->m0(Lfreemarker/core/t0;)V

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, v0, v2, v5}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4

    :cond_26
    new-instance v1, Lfreemarker/core/ParseException;

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v14, v0, v3}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x64
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x64
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x64
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x64
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final d0()Lxo8;
    .locals 3

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v1

    new-instance v2, Lxo8;

    invoke-direct {v2, v1}, Lxo8;-><init>(Lifa;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, p0, v0, v1}, Lfreemarker/core/t1;->C(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/t1;)V

    return-object v2
.end method

.method public final d1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->S1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d2()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->w2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->x2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->y2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->z2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d3()Z
    .locals 3

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6f

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->j3()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->f3()Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final d4()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x7c

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x7e

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x60

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Ldl;
    .locals 6

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->d0()Lxo8;

    move-result-object v2

    iget v3, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v3

    :cond_0
    const/16 v5, 0x25

    if-eq v3, v5, :cond_2

    const/16 v5, 0x26

    if-ne v3, v5, :cond_1

    invoke-virtual {p0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v1, 0x1a

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, v0, v1

    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v3

    :goto_0
    new-instance v4, Ldl;

    invoke-direct {v4, v1, v2}, Ldl;-><init>(Lifa;Lxo8;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, p0, v0, v3}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4
.end method

.method public final e0()Lfreemarker/core/p1;
    .locals 7

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x3c

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_5

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_1
    const/16 v4, 0x6f

    if-eq v2, v4, :cond_2

    const/16 v4, 0x70

    if-eq v2, v4, :cond_2

    const/16 v4, 0x78

    if-eq v2, v4, :cond_2

    const/16 v4, 0x7c

    if-eq v2, v4, :cond_2

    const/16 v4, 0x7e

    if-eq v2, v4, :cond_2

    const/16 v4, 0x80

    if-eq v2, v4, :cond_2

    const/16 v4, 0x85

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x1f

    iget v5, p0, Lfreemarker/core/FMParser;->u:I

    aput v5, v2, v4

    move-object v2, v3

    goto :goto_0

    :cond_2
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v2

    :goto_0
    iget v4, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v4, v1, :cond_3

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v4

    :cond_3
    const/16 v1, 0x84

    if-eq v4, v1, :cond_4

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x20

    iget v5, p0, Lfreemarker/core/FMParser;->u:I

    aput v5, v1, v4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v3

    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    move-result-object v1

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x21

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_6
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    move-object v1, v3

    move-object v2, v1

    :goto_2
    if-nez v3, :cond_7

    move-object v3, v0

    :cond_7
    new-instance v4, Lfreemarker/core/p1;

    invoke-direct {v4, v2, v1}, Lfreemarker/core/p1;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, p0, v0, v3}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->T1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e2()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->B2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e3()Z
    .locals 3

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->k3()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->k3()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->f3()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final e4()Z
    .locals 3

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x79

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x55

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Lfreemarker/core/t0;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x57

    if-eq v0, v2, :cond_2

    const/16 v2, 0x58

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    new-instance v1, Lfreemarker/core/i;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lfreemarker/core/i;-><init>(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x12

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    new-instance v1, Lfreemarker/core/i;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfreemarker/core/i;-><init>(Z)V

    :goto_0
    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, v0, v0}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1
.end method

.method public final f0()Lfreemarker/core/t0;
    .locals 4

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->c0()Lfreemarker/core/t0;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->P0(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_0
    const/16 v3, 0x8d

    if-eq v1, v3, :cond_2

    const/16 v3, 0x8e

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/4 v1, 0x7

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_0
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->c0()Lfreemarker/core/t0;

    move-result-object v2

    const-string v3, "scalar"

    invoke-virtual {p0, v0, v3}, Lfreemarker/core/FMParser;->F4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lfreemarker/core/FMParser;->F4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lfreemarker/core/FMParser;->G4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lfreemarker/core/FMParser;->G4(Lfreemarker/core/t0;Ljava/lang/String;)V

    const-string v3, "number"

    invoke-virtual {p0, v0, v3}, Lfreemarker/core/FMParser;->I4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lfreemarker/core/FMParser;->I4(Lfreemarker/core/t0;Ljava/lang/String;)V

    new-instance v3, Lfreemarker/core/k0;

    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Lfreemarker/core/k0;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;Ljava/lang/String;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v2}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    move-object v0, v3

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x6b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->U1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f2()Z
    .locals 1

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f3()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->l3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->m3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->n3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->o3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->p3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->q3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->r3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->s3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->t3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/4 p0, 0x0

    return p0
.end method

.method public final f4()Z
    .locals 2

    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x61

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final g()Lfreemarker/core/BreakInstruction;
    .locals 4

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    iget v1, p0, Lfreemarker/core/FMParser;->f:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    new-instance v1, Lfreemarker/core/BreakInstruction;

    invoke-direct {v1}, Lfreemarker/core/BreakInstruction;-><init>()V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, v0, v0}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    :cond_0
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " must be nested inside a directive that supports it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " #list with \"as\", #items, #switch (or the deprecated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->B0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final g0()Lfreemarker/core/ReturnInstruction;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x1a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x32

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x22

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    move-result-object v2

    :goto_0
    iget-boolean v3, p0, Lfreemarker/core/FMParser;->g:Z

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "A macro cannot return a value"

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_4
    iget-boolean v3, p0, Lfreemarker/core/FMParser;->h:Z

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "A function must return a value"

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_6
    if-eqz v1, :cond_7

    :goto_1
    new-instance v3, Lfreemarker/core/ReturnInstruction;

    invoke-direct {v3, v1}, Lfreemarker/core/ReturnInstruction;-><init>(Lfreemarker/core/t0;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3

    :cond_7
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "A return instruction can only occur inside a macro or function"

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final g1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->V1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g2()Z
    .locals 1

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g3()Z
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->v3()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final g4()Z
    .locals 1

    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h(Lfreemarker/core/t0;)Lfreemarker/core/t0;
    .locals 4

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-virtual {v1, v0}, Lfreemarker/core/u0;->e(Lfreemarker/core/Token;)V

    iget v1, p0, Lfreemarker/core/FMParser;->k:I

    iget-object v2, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-static {v1, p1, v0, v2}, Lfreemarker/core/j;->e0(ILfreemarker/core/t0;Lfreemarker/core/Token;Lfreemarker/core/u0;)Lfreemarker/core/j;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, p1, v0}, Lfreemarker/core/t1;->B(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/Token;)V

    instance-of v2, v1, Lqu9;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v1, Lfreemarker/core/l;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lfreemarker/core/x0;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lfreemarker/core/x0;

    invoke-virtual {v2}, Lfreemarker/core/x0;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v0}, Lfreemarker/core/FMParser;->y0(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/Token;)V

    move-object p0, v1

    check-cast p0, Lfreemarker/core/l;

    invoke-virtual {p0, v2}, Lfreemarker/core/l;->h0(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance p0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expression used as the left hand operand of ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " must be a simple loop variable name."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0

    :cond_2
    instance-of v0, v1, Lfreemarker/core/m;

    if-eqz v0, :cond_3

    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->a0()Ljava/util/ArrayList;

    move-result-object v2

    const/16 v3, 0x7f

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v3

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, p1, v3}, Lfreemarker/core/t1;->B(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/Token;)V

    move-object p0, v1

    check-cast p0, Lfreemarker/core/m;

    invoke-virtual {p0, v2, v0, v3}, Lfreemarker/core/m;->h0(Ljava/util/List;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Unhandled "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lfreemarker/core/FMParser;->K:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "freemarker.core.SpecialBuiltIn"

    invoke-static {v0}, Lfreemarker/core/FMParser;->z0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/FMParser;->K:Ljava/lang/Class;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " subclass: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public final h0()Lifa;
    .locals 2

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->L0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->B()V

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {v0}, Lifa;->i0()V

    iget-boolean p0, p0, Lfreemarker/core/FMParser;->c:Z

    invoke-virtual {v0, p0}, Lifa;->e0(Z)Lifa;

    move-result-object p0

    invoke-virtual {p0}, Lifa;->i0()V

    return-object p0
.end method

.method public final h1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h2()Z
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h3()Z
    .locals 3

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x63

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x62

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->g3()Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final h4()Z
    .locals 2

    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x61

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final i()Lfreemarker/core/j0;
    .locals 4

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-virtual {v2, v1}, Lfreemarker/core/u0;->e(Lfreemarker/core/Token;)V

    new-instance v2, Lfreemarker/core/j0;

    iget-object v3, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-direct {v2, v1, v3}, Lfreemarker/core/j0;-><init>(Lfreemarker/core/Token;Lfreemarker/core/u0;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, p0, v0, v1}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final i0()Lfreemarker/core/q1;
    .locals 5

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K4()Lfreemarker/core/FMParser$b;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_0
    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v3, 0x1d

    iget v4, p0, Lfreemarker/core/FMParser;->u:I

    aput v4, v2, v3

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    :goto_0
    new-instance v3, Lfreemarker/core/q1;

    invoke-direct {v3, v1}, Lfreemarker/core/q1;-><init>(Lifa;)V

    if-eqz v2, :cond_2

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v1}, Lfreemarker/core/t1;->C(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/t1;)V

    :goto_1
    return-object v3

    :cond_3
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "#sep must be inside a #list (or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->B0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ") block."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final i1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->X1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i2()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->C2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i3()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->w3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->x3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->y3()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->z3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i4()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->G2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j()Lifa;
    .locals 7

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const v2, 0x7fffffff

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->I0(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->P()Ljava/util/HashMap;

    move-result-object v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->H0(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x7e

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->a0()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v3

    :cond_2
    const/16 v5, 0x7f

    if-eq v3, v5, :cond_3

    iget-object v3, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v5, 0x44

    iget v6, p0, Lfreemarker/core/FMParser;->u:I

    aput v6, v3, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_0
    move-object v3, v4

    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    move-result-object v5

    if-eqz v2, :cond_4

    new-instance v3, Lfreemarker/core/v1;

    new-instance v6, Lfreemarker/core/x0;

    invoke-direct {v6, v1}, Lfreemarker/core/x0;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6, v2, v4, v4}, Lfreemarker/core/v1;-><init>(Lfreemarker/core/t0;Ljava/util/List;Lifa;Ljava/util/List;)V

    goto :goto_2

    :cond_4
    new-instance v2, Lfreemarker/core/v1;

    new-instance v6, Lfreemarker/core/x0;

    invoke-direct {v6, v1}, Lfreemarker/core/x0;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6, v3, v4, v4}, Lfreemarker/core/v1;-><init>(Lfreemarker/core/t0;Ljava/util/Map;Lifa;Ljava/util/List;)V

    move-object v3, v2

    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, v3, Lfreemarker/core/v1;->p:Z

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v5}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final j0()Lfreemarker/core/n1;
    .locals 7

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    const/16 v2, 0x61

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    move-result-object v3

    iget-object v4, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-virtual {v4, v1}, Lfreemarker/core/u0;->e(Lfreemarker/core/Token;)V

    new-instance v4, Lfreemarker/core/n1;

    iget-object v5, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    iget-object v6, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v6}, Lfreemarker/template/Template;->t0()Lxe1;

    move-result-object v6

    invoke-direct {v4, v1, v5, v2, v6}, Lfreemarker/core/n1;-><init>(Lfreemarker/core/Token;Lfreemarker/core/u0;Lfreemarker/core/t0;Lxe1;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, p0, v0, v3}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4
.end method

.method public final j1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Y1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j2()Z
    .locals 1

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j3()Z
    .locals 1

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j4()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x48

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x49

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x4a

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k()Lyr0;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x48

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x4e

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_0
    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_2
    const/16 v2, 0xf

    if-eq v0, v2, :cond_4

    const/16 v2, 0x39

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x4f

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_4
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    const/16 v2, 0x8b

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v2

    new-instance v3, Lyr0;

    invoke-direct {v3, v1, v2}, Lyr0;-><init>(Lfreemarker/core/t0;Lifa;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v2}, Lfreemarker/core/t1;->C(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/t1;)V

    return-object v3
.end method

.method public final k0()Lsx9;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x19

    if-eq v0, v2, :cond_2

    const/16 v2, 0x33

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x23

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    :goto_0
    new-instance v2, Lsx9;

    invoke-direct {v2, v1}, Lsx9;-><init>(Lfreemarker/core/t0;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, p0, v0, v0}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final k1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Z1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k2()Z
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k3()Z
    .locals 1

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k4()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x48

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x46

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final l()Lda1;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_0
    const/16 v3, 0x1e

    if-eq v1, v3, :cond_2

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v1, 0x49

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lfreemarker/core/FMParser;->t0(Lfreemarker/core/Token;Ljava/lang/StringBuffer;)Lfreemarker/core/Token;

    move-result-object v2

    new-instance v3, Lda1;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lda1;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v1, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final l0(Z)Lfreemarker/core/r1;
    .locals 5

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x55

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x56

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v0, 0x11

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, p1, v0

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static {v2}, Ln0a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lfreemarker/core/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v3, Lfreemarker/core/r1;

    invoke-direct {v3, v2}, Lfreemarker/core/r1;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, v2, v0, v0}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    if-eqz p1, :cond_5

    if-nez v1, :cond_5

    iget-object p1, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const-string v1, "${"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_4

    iget-object p1, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const-string v0, "#{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_5

    :cond_4
    iget-object p0, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-virtual {v3, p0}, Lfreemarker/core/r1;->Y(Lfreemarker/core/u0;)V

    :cond_5
    return-object v3

    :catch_0
    move-exception p0

    iget p1, v0, Lfreemarker/core/Token;->beginLine:I

    iput p1, p0, Lfreemarker/core/ParseException;->lineNumber:I

    iget p1, v0, Lfreemarker/core/Token;->beginColumn:I

    iput p1, p0, Lfreemarker/core/ParseException;->columnNumber:I

    iget p1, v0, Lfreemarker/core/Token;->endLine:I

    iput p1, p0, Lfreemarker/core/ParseException;->endLineNumber:I

    iget p1, v0, Lfreemarker/core/Token;->endColumn:I

    iput p1, p0, Lfreemarker/core/ParseException;->endColumnNumber:I

    throw p0
.end method

.method public final l1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->a2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l2()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x79

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F2()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final l3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l4()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6f

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m()Lwd1;
    .locals 4

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    new-instance v3, Lwd1;

    invoke-direct {v3, v1}, Lwd1;-><init>(Lifa;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final m0()Lrw2;
    .locals 5

    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    const-string v2, "string or something automatically convertible to string (number, date or boolean)"

    invoke-virtual {p0, v1, v2}, Lfreemarker/core/FMParser;->F4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lfreemarker/core/FMParser;->G4(Lfreemarker/core/t0;Ljava/lang/String;)V

    const/16 v2, 0x81

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    new-instance v3, Lrw2;

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->A0(Lfreemarker/core/t0;)Lfreemarker/core/t0;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lrw2;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v2}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final m1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->b2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m2()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x57

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x58

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x83

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->B3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m4()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x71

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x74

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n(Lfreemarker/core/t0;)Lfreemarker/core/t0;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x78

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/16 v2, 0x90

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v0, 0xe

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, p1, v0

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->T0(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v3

    :cond_3
    :goto_0
    new-instance v1, Lfreemarker/core/l0;

    invoke-direct {v1, p1, v3}, Lfreemarker/core/l0;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    if-nez v3, :cond_4

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, p1, v0}, Lfreemarker/core/t1;->B(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/Token;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, p1, v3}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    :goto_1
    return-object v1
.end method

.method public final n0()Lfreemarker/core/s1;
    .locals 6

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    const/16 v2, 0x8b

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    iget v2, p0, Lfreemarker/core/FMParser;->f:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lfreemarker/core/FMParser;->f:I

    new-instance v2, Lfreemarker/core/s1;

    invoke-direct {v2, v1}, Lfreemarker/core/s1;-><init>(Lfreemarker/core/t0;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->J0(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->k()Lyr0;

    move-result-object v4

    iget-object v5, v4, Lyr0;->n:Lfreemarker/core/t0;

    if-nez v5, :cond_1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "You can only have one default case in a switch statement"

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_1
    :goto_1
    invoke-virtual {v2, v4}, Lfreemarker/core/s1;->l0(Lyr0;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_3
    const/16 v4, 0x48

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x4d

    iget v5, p0, Lfreemarker/core/FMParser;->u:I

    aput v5, v1, v4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_2
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    iget v4, p0, Lfreemarker/core/FMParser;->f:I

    sub-int/2addr v4, v3

    iput v4, p0, Lfreemarker/core/FMParser;->f:I

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, p0, v0, v1}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final n1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->c2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n2()Z
    .locals 2

    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->S3()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final n3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->C3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n4()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x63

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x62

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o(Lfreemarker/core/t0;)Lfreemarker/core/t0;
    .locals 5

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x58

    const/16 v3, 0x57

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    const/16 v4, 0x71

    if-eq v0, v4, :cond_2

    const/16 v4, 0x72

    if-eq v0, v4, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    iget-object p1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v0, 0x10

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, p1, v0

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_0
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    :pswitch_1
    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_4
    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    iget-object p1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v0, 0xf

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, p1, v0

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_2
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    const-string v1, "hash"

    invoke-virtual {p0, p1, v1}, Lfreemarker/core/FMParser;->G4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lfreemarker/core/FMParser;->I4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lfreemarker/core/FMParser;->E4(Lfreemarker/core/t0;Ljava/lang/String;)V

    new-instance v1, Lfreemarker/core/m0;

    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lfreemarker/core/m0;-><init>(Lfreemarker/core/t0;Ljava/lang/String;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, p1, v0}, Lfreemarker/core/t1;->B(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/Token;)V

    return-object v1

    :cond_7
    new-instance p1, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " is not a valid identifier."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {p1, v1, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x6b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x82
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6b
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x82
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final o0()Lw6b;
    .locals 8

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_0
    const/16 v4, 0x7a

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x4a

    iget v5, p0, Lfreemarker/core/FMParser;->u:I

    aput v5, v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_0
    const/4 v2, 0x0

    move-object v4, v2

    :goto_1
    iget v5, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v5, v3, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v5

    :cond_2
    const/16 v6, 0x85

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v6, 0x4b

    iget v7, p0, Lfreemarker/core/FMParser;->u:I

    aput v7, v5, v6

    iget v5, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v5, v3, :cond_3

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v5

    :cond_3
    const/16 v6, 0x8b

    if-eq v5, v6, :cond_5

    const/16 v6, 0x8c

    if-ne v5, v6, :cond_4

    invoke-virtual {p0, v6}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v1, 0x4c

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_5
    invoke-virtual {p0, v6}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v3

    :goto_2
    new-instance v5, Lw6b;

    invoke-direct {v5, v1, v4, v2}, Lw6b;-><init>(Lfreemarker/core/t0;Ljava/util/Map;Lifa;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v5, p0, v0, v3}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v5

    :cond_6
    invoke-virtual {p0, v6}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v5

    const/16 v6, 0x61

    invoke-virtual {p0, v6}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v6

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_7
    iget-object v5, v5, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final o1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->d2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o2()Z
    .locals 2

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->D2()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final o3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->D3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o4()Z
    .locals 3

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x8e

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p(Lfreemarker/core/t0;)Lfreemarker/core/t0;
    .locals 3

    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    const-string v2, "list or hash"

    invoke-virtual {p0, p1, v2}, Lfreemarker/core/FMParser;->E4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lfreemarker/core/FMParser;->H4(Lfreemarker/core/t0;Ljava/lang/String;)V

    new-instance v2, Lfreemarker/core/n0;

    invoke-direct {v2, p1, v0}, Lfreemarker/core/n0;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, p0, p1, v1}, Lfreemarker/core/t1;->B(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final p0()Lifa;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x25

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_0
    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    new-instance v1, Lz9b;

    invoke-direct {v1, v3, v3}, Lz9b;-><init>(ZZ)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    new-instance v1, Lz9b;

    invoke-direct {v1, v3, v2}, Lz9b;-><init>(ZZ)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    new-instance v1, Lz9b;

    invoke-direct {v1, v2, v3}, Lz9b;-><init>(ZZ)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    new-instance v1, Lz9b;

    invoke-direct {v1, v2, v2}, Lz9b;-><init>(ZZ)V

    :goto_0
    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, v0, v0}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->e2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p2()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->E3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p4()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->E2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q()Lv83;
    .locals 3

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v1

    new-instance v2, Lv83;

    invoke-direct {v2, v1}, Lv83;-><init>(Lifa;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v2, p0, v0, v1}, Lfreemarker/core/t1;->C(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/t1;)V

    return-object v2
.end method

.method public final q0()Lfreemarker/core/t0;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x6f

    if-eq v0, v2, :cond_3

    const/16 v2, 0x70

    if-eq v0, v2, :cond_3

    const/16 v2, 0x78

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x80

    if-eq v0, v2, :cond_1

    const/16 v2, 0x85

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/4 v2, 0x1

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->b0()Lfreemarker/core/t0;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->T()Lfreemarker/core/t0;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->r0()Lfreemarker/core/t0;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final q1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->f2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q2()Z
    .locals 1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q4()Z
    .locals 1

    const/16 v0, 0x76

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r()Lfreemarker/core/t0;
    .locals 4

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->f0()Lfreemarker/core/t0;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->O0(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/4 v1, 0x6

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_0
    const/16 v1, 0x63

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x62

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->f0()Lfreemarker/core/t0;

    move-result-object v2

    const-string v3, "scalar"

    invoke-virtual {p0, v0, v3}, Lfreemarker/core/FMParser;->F4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lfreemarker/core/FMParser;->F4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lfreemarker/core/FMParser;->G4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lfreemarker/core/FMParser;->G4(Lfreemarker/core/t0;Ljava/lang/String;)V

    new-instance v3, Lfreemarker/core/k0;

    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Lfreemarker/core/k0;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;Ljava/lang/String;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v2}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    move-object v0, v3

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r0()Lfreemarker/core/t0;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/16 v2, 0x6f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x70

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/4 v2, 0x3

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->b0()Lfreemarker/core/t0;

    move-result-object v2

    new-instance v3, Lfreemarker/core/u1;

    invoke-direct {v3, v2, v1}, Lfreemarker/core/u1;-><init>(Lfreemarker/core/t0;Z)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v2}, Lfreemarker/core/t1;->C(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/t1;)V

    return-object v3
.end method

.method public final r1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->g2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r2()Z
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->G3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r4()Z
    .locals 1

    const/16 v0, 0x77

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s()Lfreemarker/core/p0;
    .locals 5

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v2

    const/16 v3, 0x8b

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v3, Lfreemarker/core/p0;

    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->A0(Lfreemarker/core/t0;)Lfreemarker/core/t0;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lfreemarker/core/p0;-><init>(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    iget-object v1, p0, Lfreemarker/core/FMParser;->i:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v1

    invoke-virtual {v3, v1}, Lfreemarker/core/p0;->m0(Lifa;)V

    iget-object v1, p0, Lfreemarker/core/FMParser;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v3, p0, v0, v1}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final s0()Lifa;
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v3

    instance-of v4, v3, Lfreemarker/core/x0;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    instance-of v4, v3, Lfreemarker/core/m0;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lfreemarker/core/m0;

    invoke-virtual {v4}, Lfreemarker/core/m0;->Y()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v3

    :goto_1
    iget v6, v0, Lfreemarker/core/FMParser;->p:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v6

    :cond_2
    const/16 v8, 0x8f

    if-eq v6, v8, :cond_3

    iget-object v6, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v9, 0x3c

    iget v10, v0, Lfreemarker/core/FMParser;->u:I

    aput v10, v6, v9

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v8}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_2
    const v6, 0x7fffffff

    invoke-virtual {v0, v6}, Lfreemarker/core/FMParser;->G0(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->P()Ljava/util/HashMap;

    move-result-object v6

    move-object v9, v5

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->a0()Ljava/util/ArrayList;

    move-result-object v6

    move-object v9, v6

    move-object v6, v5

    :goto_3
    iget v10, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v10, v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v10

    :cond_5
    const/16 v11, 0x7a

    if-eq v10, v11, :cond_6

    iget-object v8, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v10, 0x42

    iget v11, v0, Lfreemarker/core/FMParser;->u:I

    aput v11, v8, v10

    move-object v10, v5

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v11}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget v11, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v11, v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v11

    :cond_7
    const/16 v12, 0x85

    if-eq v11, v12, :cond_8

    if-eq v11, v8, :cond_8

    iget-object v8, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v11, 0x41

    iget v12, v0, Lfreemarker/core/FMParser;->u:I

    aput v12, v8, v11

    goto :goto_6

    :cond_8
    iget v11, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v11, v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v11

    :cond_9
    if-eq v11, v8, :cond_a

    iget-object v11, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v13, 0x3d

    iget v14, v0, Lfreemarker/core/FMParser;->u:I

    aput v14, v11, v13

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v8}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_4
    invoke-virtual {v0, v12}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v11

    iget-object v11, v11, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    iget v11, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v11, v7, :cond_b

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v11

    :cond_b
    const/16 v13, 0x79

    if-eq v11, v13, :cond_18

    if-eq v11, v8, :cond_18

    iget-object v8, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v11, 0x3e

    iget v12, v0, Lfreemarker/core/FMParser;->u:I

    aput v12, v8, v11

    :goto_6
    iget v8, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v8, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v8

    :cond_c
    const/16 v11, 0x8b

    if-eq v8, v11, :cond_e

    const/16 v4, 0x8c

    if-ne v8, v4, :cond_d

    invoke-virtual {v0, v4}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    goto/16 :goto_c

    :cond_d
    iget-object v2, v0, Lfreemarker/core/FMParser;->v:[I

    iget v3, v0, Lfreemarker/core/FMParser;->u:I

    aput v3, v2, v1

    invoke-virtual {v0, v7}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :cond_e
    invoke-virtual {v0, v11}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    const/4 v1, 0x3

    if-eqz v10, :cond_11

    iget-object v7, v0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    if-eqz v7, :cond_11

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, v0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ge v11, v8, :cond_12

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    add-int/lit8 v14, v7, -0x1

    :goto_8
    if-ltz v14, :cond_10

    iget-object v15, v0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lfreemarker/core/FMParser$b;

    invoke-static {v15}, Lfreemarker/core/FMParser$b;->a(Lfreemarker/core/FMParser$b;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_f

    invoke-static {v15}, Lfreemarker/core/FMParser$b;->a(Lfreemarker/core/FMParser$b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v15}, Lfreemarker/core/FMParser$b;->c(Lfreemarker/core/FMParser$b;)I

    move-result v5

    if-eq v5, v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->M4()Lfreemarker/core/FMParser$b;

    move-result-object v5

    invoke-static {v5, v13}, Lfreemarker/core/FMParser$b;->b(Lfreemarker/core/FMParser$b;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5, v1}, Lfreemarker/core/FMParser$b;->d(Lfreemarker/core/FMParser$b;I)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    :cond_10
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_11
    const/4 v12, 0x0

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v5

    const/16 v7, 0x44

    invoke-virtual {v0, v7}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v7

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v12, :cond_13

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->L4()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_13
    iget-object v8, v7, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_16

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_b

    :cond_14
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expecting </@> or </@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v0, v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_15
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "Expecting </@>"

    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v0, v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_16
    :goto_b
    move-object v1, v7

    :goto_c
    new-instance v4, Lfreemarker/core/v1;

    if-eqz v9, :cond_17

    invoke-direct {v4, v3, v9, v5, v10}, Lfreemarker/core/v1;-><init>(Lfreemarker/core/t0;Ljava/util/List;Lifa;Ljava/util/List;)V

    goto :goto_d

    :cond_17
    invoke-direct {v4, v3, v6, v5, v10}, Lfreemarker/core/v1;-><init>(Lfreemarker/core/t0;Ljava/util/Map;Lifa;Ljava/util/List;)V

    :goto_d
    iget-object v0, v0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, v0, v2, v1}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4

    :cond_18
    iget v11, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v11, v7, :cond_19

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v11

    :cond_19
    if-eq v11, v8, :cond_1a

    iget-object v11, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v14, 0x3f

    iget v15, v0, Lfreemarker/core/FMParser;->u:I

    aput v15, v11, v14

    goto :goto_e

    :cond_1a
    invoke-virtual {v0, v8}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_e
    invoke-virtual {v0, v13}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    iget v11, v0, Lfreemarker/core/FMParser;->p:I

    if-ne v11, v7, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v11

    :cond_1b
    if-eq v11, v8, :cond_1c

    iget-object v11, v0, Lfreemarker/core/FMParser;->v:[I

    const/16 v13, 0x40

    iget v14, v0, Lfreemarker/core/FMParser;->u:I

    aput v14, v11, v13

    goto :goto_f

    :cond_1c
    invoke-virtual {v0, v8}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    :goto_f
    invoke-virtual {v0, v12}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v11

    iget-object v11, v11, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5
.end method

.method public final s1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->h2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s2()Z
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->H3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s4()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t(Lfreemarker/core/t0;)Lfreemarker/core/t0;
    .locals 2

    const/16 v0, 0x60

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    new-instance v1, Lfreemarker/core/s0;

    invoke-direct {v1, p1}, Lfreemarker/core/s0;-><init>(Lfreemarker/core/t0;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, p1, v0}, Lfreemarker/core/t1;->B(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/Token;)V

    return-object v1
.end method

.method public final t0(Lfreemarker/core/Token;Ljava/lang/StringBuffer;)Lfreemarker/core/Token;
    .locals 4

    :pswitch_0
    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 p2, 0x53

    iget v0, p0, Lfreemarker/core/FMParser;->u:I

    aput v0, p1, p2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_1
    const/16 v0, 0x94

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x93

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x92

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x91

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    :goto_0
    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_1
    packed-switch v2, :pswitch_data_1

    iget-object v1, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x54

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v1, v2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object p2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-static {p2}, Ld1d;->f(Lfreemarker/template/Template;)I

    move-result p2

    sget v1, Ld1d;->d:I

    if-ge p2, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unclosed \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {p2, v0, p0, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw p2

    :cond_3
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x91
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x91
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final t1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->i2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t2()Z
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->I3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t4(II)V
    .locals 7

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lfreemarker/core/FMParser;->E:I

    add-int/lit8 v1, v0, 0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lfreemarker/core/FMParser;->D:[I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfreemarker/core/FMParser;->E:I

    aput p1, p2, v0

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_8

    new-array v0, v0, [I

    iput-object v0, p0, Lfreemarker/core/FMParser;->B:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lfreemarker/core/FMParser;->E:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lfreemarker/core/FMParser;->B:[I

    iget-object v3, p0, Lfreemarker/core/FMParser;->D:[I

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lfreemarker/core/FMParser;->A:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    move v2, v0

    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    array-length v5, v3

    iget-object v6, p0, Lfreemarker/core/FMParser;->B:[I

    array-length v6, v6

    if-ne v5, v6, :cond_3

    move v2, v0

    :goto_1
    iget-object v5, p0, Lfreemarker/core/FMParser;->B:[I

    array-length v6, v5

    if-ge v2, v6, :cond_5

    aget v6, v3, v2

    aget v5, v5, v2

    if-eq v6, v5, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_2
    if-eqz v2, :cond_3

    :cond_6
    if-nez v2, :cond_7

    iget-object v0, p0, Lfreemarker/core/FMParser;->A:Ljava/util/Vector;

    iget-object v1, p0, Lfreemarker/core/FMParser;->B:[I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    if-eqz p2, :cond_8

    iget-object v0, p0, Lfreemarker/core/FMParser;->D:[I

    iput p2, p0, Lfreemarker/core/FMParser;->E:I

    sub-int/2addr p2, v4

    aput p1, v0, p2

    :cond_8
    :goto_3
    return-void
.end method

.method public final u()Lfreemarker/core/t0;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->X()Lfreemarker/core/t0;

    move-result-object p0

    return-object p0
.end method

.method public final u0()Lfreemarker/core/w1;
    .locals 5

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_0
    const/16 v3, 0x84

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v3, 0x1e

    iget v4, p0, Lfreemarker/core/FMParser;->u:I

    aput v4, v2, v3

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K()Lfreemarker/core/Token;

    move-result-object v3

    new-instance v4, Lfreemarker/core/w1;

    invoke-direct {v4, v1, v2}, Lfreemarker/core/w1;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v4, p0, v0, v3}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4
.end method

.method public final u1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->j2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u2()Z
    .locals 1

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u3()Z
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->E2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->J3()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final u4(I)Lfreemarker/core/Token;
    .locals 3

    iget-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iget-object v1, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    invoke-virtual {v1}, Lfreemarker/core/u0;->j()Lfreemarker/core/Token;

    move-result-object v1

    iput-object v1, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v1, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lfreemarker/core/FMParser;->p:I

    iget-object v1, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iget v1, v1, Lfreemarker/core/Token;->kind:I

    if-ne v1, p1, :cond_4

    iget p1, p0, Lfreemarker/core/FMParser;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/core/FMParser;->u:I

    iget p1, p0, Lfreemarker/core/FMParser;->y:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/core/FMParser;->y:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lfreemarker/core/FMParser;->y:I

    :goto_1
    iget-object v0, p0, Lfreemarker/core/FMParser;->w:[Lfreemarker/core/FMParser$a;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    aget-object v0, v0, p1

    :goto_2
    if-eqz v0, :cond_2

    iget v1, v0, Lfreemarker/core/FMParser$a;->a:I

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lfreemarker/core/FMParser$a;->b:Lfreemarker/core/Token;

    :cond_1
    iget-object v0, v0, Lfreemarker/core/FMParser$a;->d:Lfreemarker/core/FMParser$a;

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    return-object p0

    :cond_4
    iput-object v0, p0, Lfreemarker/core/FMParser;->n:Lfreemarker/core/Token;

    iput p1, p0, Lfreemarker/core/FMParser;->C:I

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->C0()Lfreemarker/core/ParseException;

    move-result-object p0

    throw p0
.end method

.method public final v()Lzo3;
    .locals 3

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    iget-boolean v1, p0, Lfreemarker/core/FMParser;->g:Z

    if-eqz v1, :cond_0

    new-instance v1, Lzo3;

    invoke-direct {v1}, Lzo3;-><init>()V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, v0, v0}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    :cond_0
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "Cannot fall back outside a macro."

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-direct {v1, v2, p0, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public v0()I
    .locals 0

    iget-object p0, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    iget p0, p0, Lfreemarker/core/u0;->o:I

    return p0
.end method

.method public final v1()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->k2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v2()Z
    .locals 1

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v3()Z
    .locals 3

    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x8e

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u3()Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final w()Lifa;
    .locals 2

    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    new-instance v1, Lb24;

    invoke-direct {v1}, Lb24;-><init>()V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v1, p0, v0, v0}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1
.end method

.method public w0()I
    .locals 0

    iget-object p0, p0, Lfreemarker/core/FMParser;->l:Lfreemarker/core/u0;

    iget-boolean p0, p0, Lfreemarker/core/u0;->j:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final w1()Z
    .locals 3

    const/16 v0, 0x79

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F2()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F2()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final w2()Z
    .locals 1

    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->K3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final x()Lfreemarker/core/z0;
    .locals 7

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u()Lfreemarker/core/t0;

    move-result-object v2

    const/16 v3, 0x8b

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->M4()Lfreemarker/core/FMParser$b;

    move-result-object v3

    iget-object v4, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-static {v3, v4}, Lfreemarker/core/FMParser$b;->b(Lfreemarker/core/FMParser$b;Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lfreemarker/core/FMParser$b;->d(Lfreemarker/core/FMParser$b;I)I

    iget v3, p0, Lfreemarker/core/FMParser;->f:I

    add-int/2addr v3, v4

    iput v3, p0, Lfreemarker/core/FMParser;->f:I

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->W()Lifa;

    move-result-object v3

    const/16 v5, 0x27

    invoke-virtual {p0, v5}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    move-result-object v5

    iget v6, p0, Lfreemarker/core/FMParser;->f:I

    sub-int/2addr v6, v4

    iput v6, p0, Lfreemarker/core/FMParser;->f:I

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->L4()V

    new-instance v6, Lfreemarker/core/z0;

    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v6, v2, v1, v3, v4}, Lfreemarker/core/z0;-><init>(Lfreemarker/core/t0;Ljava/lang/String;Lifa;Z)V

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v6, p0, v0, v5}, Lfreemarker/core/t1;->E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v6
.end method

.method public final x0(Lfreemarker/core/t0;)V
    .locals 1

    const-string v0, "boolean (true/false)"

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->I4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->G4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->F4(Lfreemarker/core/t0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->H4(Lfreemarker/core/t0;Ljava/lang/String;)V

    return-void
.end method

.method public final x1()Z
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->l2()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/4 p0, 0x0

    return p0
.end method

.method public final x2()Z
    .locals 1

    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final x3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->L3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y()Lifa;
    .locals 6

    new-instance v0, Laq6;

    invoke-direct {v0}, Laq6;-><init>()V

    const/4 v1, 0x0

    :pswitch_0
    iget v2, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v2

    :cond_0
    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v1, 0x57

    iget v2, p0, Lfreemarker/core/FMParser;->u:I

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->V()Lj47;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->m0()Lrw2;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Y()Lxga;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v2}, Laq6;->l0(Lifa;)V

    iget v4, p0, Lfreemarker/core/FMParser;->p:I

    if-ne v4, v3, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v4

    :cond_2
    packed-switch v4, :pswitch_data_1

    iget-object v3, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v4, 0x58

    iget v5, p0, Lfreemarker/core/FMParser;->u:I

    aput v5, v3, v4

    iget-object p0, p0, Lfreemarker/core/FMParser;->b:Lfreemarker/template/Template;

    invoke-virtual {v0, p0, v1, v2}, Lfreemarker/core/t1;->A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final y0(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/Token;)V
    .locals 4

    iget-object v0, p0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    const-string v1, "The left hand operand of ?"

    if-ltz v0, :cond_3

    iget-object v2, p0, Lfreemarker/core/FMParser;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/FMParser$b;

    invoke-static {v2}, Lfreemarker/core/FMParser$b;->a(Lfreemarker/core/FMParser$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lfreemarker/core/FMParser$b;->c(Lfreemarker/core/FMParser$b;)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p3, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " can\'t be the loop variable of an user defined directive: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    new-instance p0, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p3, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " must be a loop variable, "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "but there\'s no loop variable in scope with this name: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/t1;)V

    throw p0
.end method

.method public final y1()Z
    .locals 3

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v2, 0x71

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    const/16 v2, 0x72

    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lfreemarker/core/FMParser;->q:Lfreemarker/core/Token;

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->m2()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final y2()Z
    .locals 1

    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->M3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Lifa;
    .locals 4

    iget v0, p0, Lfreemarker/core/FMParser;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->A4()I

    move-result v0

    :cond_0
    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0x41

    if-eq v0, v2, :cond_2

    const/16 v2, 0x43

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    iget-object v0, p0, Lfreemarker/core/FMParser;->v:[I

    const/16 v2, 0x51

    iget v3, p0, Lfreemarker/core/FMParser;->u:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->u4(I)Lfreemarker/core/Token;

    new-instance p0, Lfreemarker/core/ParseException;

    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->s()Lfreemarker/core/p0;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->v()Lzo3;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->e0()Lfreemarker/core/p1;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Q()Lifa;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->p0()Lifa;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->w()Lifa;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->g()Lfreemarker/core/BreakInstruction;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->S()Lxga;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->l()Lda1;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->m()Lwd1;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->j0()Lfreemarker/core/n1;

    move-result-object p0

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->j()Lifa;

    move-result-object p0

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->g0()Lfreemarker/core/ReturnInstruction;

    move-result-object p0

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->k0()Lsx9;

    move-result-object p0

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->u0()Lfreemarker/core/w1;

    move-result-object p0

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->o0()Lw6b;

    move-result-object p0

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->L()Lfreemarker/core/e1;

    move-result-object p0

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F()Lfreemarker/core/b1;

    move-result-object p0

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->G()Lbz4;

    move-result-object p0

    goto :goto_0

    :pswitch_13
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->d()Lifa;

    move-result-object p0

    goto :goto_0

    :pswitch_14
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->n0()Lfreemarker/core/s1;

    move-result-object p0

    goto :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->x()Lfreemarker/core/z0;

    move-result-object p0

    goto :goto_0

    :pswitch_16
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->i0()Lfreemarker/core/q1;

    move-result-object p0

    goto :goto_0

    :pswitch_17
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->H()Lfreemarker/core/y0;

    move-result-object p0

    goto :goto_0

    :pswitch_18
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->I()Lifa;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->s0()Lifa;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->R()Ly07;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->E()Lifa;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->e()Ldl;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3a
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final z1()Z
    .locals 2

    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->F2()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final z2()Z
    .locals 1

    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->D4(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z3()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/FMParser;->N3()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
