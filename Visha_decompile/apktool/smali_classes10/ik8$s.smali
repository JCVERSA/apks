.class public Lik8$s;
.super Lik8$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
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
    invoke-direct {p0}, Lik8$s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1a;Ljava/lang/Object;)Ldj;
    .locals 0

    new-instance p0, Lzy8;

    invoke-virtual {p1}, Ls1a;->o()Ls0;

    move-result-object p2

    invoke-virtual {p2}, Ls0;->x()[B

    move-result-object p2

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object p1

    invoke-virtual {p1}, Loa;->p()Lx0;

    move-result-object p1

    invoke-static {p1}, Lny8;->m(Ljava/lang/Object;)Lny8;

    move-result-object p1

    invoke-static {p1}, Lslb;->G(Lny8;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lzy8;-><init>([BLjava/lang/String;)V

    return-object p0
.end method
