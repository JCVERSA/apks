.class public final Ldv0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ldv0;

.field public static final b:[C

.field public static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldv0;

    invoke-direct {v0}, Ldv0;-><init>()V

    sput-object v0, Ldv0;->a:Ldv0;

    const/16 v1, 0x75

    new-array v1, v1, [C

    sput-object v1, Ldv0;->b:[C

    const/16 v1, 0x7e

    new-array v1, v1, [B

    sput-object v1, Ldv0;->c:[B

    invoke-virtual {v0}, Ldv0;->f()V

    invoke-virtual {v0}, Ldv0;->e()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(CC)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ldv0;->b(IC)V

    return-void
.end method

.method public final b(IC)V
    .locals 0

    const/16 p0, 0x75

    if-eq p2, p0, :cond_0

    sget-object p0, Ldv0;->b:[C

    int-to-char p1, p1

    aput-char p1, p0, p2

    :cond_0
    return-void
.end method

.method public final c(CB)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ldv0;->d(IB)V

    return-void
.end method

.method public final d(IB)V
    .locals 0

    sget-object p0, Ldv0;->c:[B

    aput-byte p2, p0, p1

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Ldv0;->d(IB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ldv0;->d(IB)V

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v1}, Ldv0;->d(IB)V

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v1}, Ldv0;->d(IB)V

    const/16 v2, 0x20

    invoke-virtual {p0, v2, v1}, Ldv0;->d(IB)V

    const/16 v1, 0x2c

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ldv0;->c(CB)V

    const/16 v1, 0x3a

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ldv0;->c(CB)V

    const/16 v1, 0x7b

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Ldv0;->c(CB)V

    const/16 v1, 0x7d

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Ldv0;->c(CB)V

    const/16 v1, 0x5b

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ldv0;->c(CB)V

    const/16 v1, 0x5d

    invoke-virtual {p0, v1, v0}, Ldv0;->c(CB)V

    const/16 v0, 0x22

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ldv0;->c(CB)V

    const/16 v0, 0x5c

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ldv0;->c(CB)V

    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0x75

    invoke-virtual {p0, v0, v1}, Ldv0;->b(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    const/16 v1, 0x62

    invoke-virtual {p0, v0, v1}, Ldv0;->b(IC)V

    const/16 v0, 0x9

    const/16 v1, 0x74

    invoke-virtual {p0, v0, v1}, Ldv0;->b(IC)V

    const/16 v0, 0xa

    const/16 v1, 0x6e

    invoke-virtual {p0, v0, v1}, Ldv0;->b(IC)V

    const/16 v0, 0xc

    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Ldv0;->b(IC)V

    const/16 v0, 0xd

    const/16 v1, 0x72

    invoke-virtual {p0, v0, v1}, Ldv0;->b(IC)V

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v0}, Ldv0;->a(CC)V

    const/16 v0, 0x22

    invoke-virtual {p0, v0, v0}, Ldv0;->a(CC)V

    const/16 v0, 0x5c

    invoke-virtual {p0, v0, v0}, Ldv0;->a(CC)V

    return-void
.end method
