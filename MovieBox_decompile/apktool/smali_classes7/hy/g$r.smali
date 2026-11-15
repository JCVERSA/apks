.class Lhy/g$r;
.super Lhy/g$q;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "r"
.end annotation


# static fields
.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lhy/g$r;->b:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x404146
        0x404154
        0x404551
        0x404554
        0x404556
        0x404558
        0x405158
        0x405462
        0x405469
        0x405546
        0x405551
        0x405746
        0x405751
        0x406846
        0x406851
        0x407141
        0x407146
        0x407151
        0x414045
        0x414054
        0x414055
        0x414071
        0x414540
        0x414645
        0x415440    # 5.99953E-39f
        0x415640    # 6.000248E-39f
        0x424045
        0x424055
        0x424071
        0x454045
        0x454051
        0x454054
        0x454055
        0x454057
        0x454068
        0x454071
        0x455440
        0x464140
        0x464540
        0x484140
        0x514140
        0x514240
        0x514540
        0x544045
        0x544055
        0x544071
        0x546240
        0x546940
        0x555151
        0x555158
        0x555168
        0x564045
        0x564055
        0x564071
        0x564240
        0x564540
        0x624540
        0x694045
        0x694055
        0x694071
        0x694540
        0x714140
        0x714540
        0x714651
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/g$q;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "IBM424_ltr"

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lhy/a;)Lhy/b;
    .locals 3

    .line 1
    sget-object v0, Lhy/g$r;->b:[I

    .line 2
    .line 3
    sget-object v1, Lhy/g$q;->a:[B

    .line 4
    .line 5
    const/16 v2, 0x40

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0, v1, v2}, Lhy/g;->e(Lhy/a;[I[BB)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Lhy/b;

    .line 16
    .line 17
    invoke-direct {v1, p1, p0, v0}, Lhy/b;-><init>(Lhy/a;Lhy/h;I)V

    .line 18
    .line 19
    .line 20
    move-object p1, v1

    .line 21
    :goto_0
    return-object p1
.end method
