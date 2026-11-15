.class Lhy/g$s;
.super Lhy/g$q;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
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
    sput-object v0, Lhy/g$s;->b:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x404146
        0x404148
        0x404151
        0x404171
        0x404251
        0x404256
        0x404541
        0x404546
        0x404551
        0x404556
        0x404562
        0x404569
        0x404571
        0x405441
        0x405445
        0x405641
        0x406254
        0x406954
        0x417140
        0x454041
        0x454042
        0x454045
        0x454054
        0x454056
        0x454069
        0x454641
        0x464140
        0x465540
        0x465740
        0x466840
        0x467140
        0x514045
        0x514540
        0x514671
        0x515155
        0x515540
        0x515740
        0x516840
        0x517140
        0x544041
        0x544045
        0x544140
        0x544540
        0x554041
        0x554042
        0x554045
        0x554054
        0x554056
        0x554069
        0x564540
        0x574045
        0x584540
        0x585140
        0x585155
        0x625440
        0x684045
        0x685155
        0x695440
        0x714041
        0x714042
        0x714045
        0x714054
        0x714056
        0x714069
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
    const-string v0, "IBM424_rtl"

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lhy/a;)Lhy/b;
    .locals 3

    .line 1
    sget-object v0, Lhy/g$s;->b:[I

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
