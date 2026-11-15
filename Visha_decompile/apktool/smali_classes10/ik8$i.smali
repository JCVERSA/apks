.class public Lik8$i;
.super Lik8$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lik8$u;-><init>(Lik8$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lik8$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lik8$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1a;Ljava/lang/Object;)Ldj;
    .locals 1

    invoke-virtual {p1}, Ls1a;->p()Lp1;

    move-result-object p0

    invoke-static {p0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object p0

    invoke-virtual {p0}, Lm1;->z()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcv7;->a([BI)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x4

    if-ne p1, p2, :cond_0

    array-length p1, p0

    invoke-static {p0, v0, p1}, Lci;->q([BII)[B

    move-result-object p0

    invoke-static {p0}, Lki5;->b(Ljava/lang/Object;)Lki5;

    move-result-object p0

    return-object p0

    :cond_0
    array-length p1, p0

    const/16 p2, 0x40

    if-ne p1, p2, :cond_1

    array-length p1, p0

    invoke-static {p0, v0, p1}, Lci;->q([BII)[B

    move-result-object p0

    :cond_1
    invoke-static {p0}, Ldm4;->b(Ljava/lang/Object;)Ldm4;

    move-result-object p0

    return-object p0
.end method
