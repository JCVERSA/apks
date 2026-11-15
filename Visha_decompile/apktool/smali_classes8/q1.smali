.class public abstract Lq1;
.super Lp1;
.source "SourceFile"

# interfaces
.implements Lv1;


# static fields
.field public static final c:Ld2;


# instance fields
.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq1$a;

    const-class v1, Lq1;

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lq1$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lq1;->c:Ld2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p2, :cond_1

    invoke-static {p1}, Lq1;->x(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "string contains illegal characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lu0a;->e(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lq1;->b:[B

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lci;->f([B)[B

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lq1;->b:[B

    return-void
.end method

.method public static w([B)Lq1;
    .locals 2

    new-instance v0, Lzp1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzp1;-><init>([BZ)V

    return-object v0
.end method

.method public static x(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    return v4

    :cond_0
    const/16 v3, 0x61

    if-gt v3, v2, :cond_1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x41

    if-gt v3, v2, :cond_2

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x30

    if-gt v3, v2, :cond_3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x20

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    return v4

    :cond_4
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lq1;->b:[B

    invoke-static {p0}, Lu0a;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lq1;->b:[B

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    return p0
.end method

.method public final m(Lp1;)Z
    .locals 1

    instance-of v0, p1, Lq1;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lq1;

    iget-object p0, p0, Lq1;->b:[B

    iget-object p1, p1, Lq1;->b:[B

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0

    return p0
.end method

.method public final n(Lo1;Z)V
    .locals 1

    const/16 v0, 0x13

    iget-object p0, p0, Lq1;->b:[B

    invoke-virtual {p1, p2, v0, p0}, Lo1;->o(ZI[B)V

    return-void
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final q(Z)I
    .locals 0

    iget-object p0, p0, Lq1;->b:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lo1;->g(ZI)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lq1;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
