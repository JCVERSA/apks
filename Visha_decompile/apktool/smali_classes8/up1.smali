.class public Lup1;
.super Lh1;
.source "SourceFile"


# static fields
.field public static final c:Lup1;

.field public static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lup1;

    invoke-direct {v0}, Lup1;-><init>()V

    sput-object v0, Lup1;->c:Lup1;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lup1;->d:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh1;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Lo1;Z)V
    .locals 1

    const/4 p0, 0x5

    sget-object v0, Lup1;->d:[B

    invoke-virtual {p1, p2, p0, v0}, Lo1;->o(ZI[B)V

    return-void
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public q(Z)I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lo1;->g(ZI)I

    move-result p0

    return p0
.end method
