.class public abstract Li1;
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

    new-instance v0, Li1$a;

    const-class v1, Li1;

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Li1$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Li1;->c:Ld2;

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lci;->f([B)[B

    move-result-object p1

    :cond_0
    iput-object p1, p0, Li1;->b:[B

    return-void
.end method

.method public static w([B)Li1;
    .locals 2

    new-instance v0, Lvp1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvp1;-><init>([BZ)V

    return-object v0
.end method


# virtual methods
.method public final getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li1;->b:[B

    invoke-static {p0}, Lu0a;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Li1;->b:[B

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    return p0
.end method

.method public final m(Lp1;)Z
    .locals 1

    instance-of v0, p1, Li1;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Li1;

    iget-object p0, p0, Li1;->b:[B

    iget-object p1, p1, Li1;->b:[B

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0

    return p0
.end method

.method public final n(Lo1;Z)V
    .locals 1

    const/16 v0, 0x12

    iget-object p0, p0, Li1;->b:[B

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

    iget-object p0, p0, Li1;->b:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lo1;->g(ZI)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Li1;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
