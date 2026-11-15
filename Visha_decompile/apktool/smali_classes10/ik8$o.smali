.class public Lik8$o;
.super Lik8$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
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
    invoke-direct {p0}, Lik8$o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1a;Ljava/lang/Object;)Ldj;
    .locals 0

    new-instance p0, Lsk8;

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object p2

    invoke-static {p2}, Lslb;->y(Loa;)I

    move-result p2

    invoke-virtual {p1}, Ls1a;->o()Ls0;

    move-result-object p1

    invoke-virtual {p1}, Ls0;->A()[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lsk8;-><init>(I[B)V

    return-object p0
.end method
