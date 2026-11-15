.class public Lik8$j;
.super Lik8$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
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
    invoke-direct {p0}, Lik8$j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1a;Ljava/lang/Object;)Ldj;
    .locals 2

    invoke-virtual {p1}, Ls1a;->p()Lp1;

    move-result-object p0

    invoke-static {p0}, Lq96;->o(Ljava/lang/Object;)Lq96;

    move-result-object p0

    new-instance p1, Lr96;

    invoke-virtual {p0}, Lq96;->p()I

    move-result p2

    invoke-virtual {p0}, Lq96;->q()I

    move-result v0

    invoke-virtual {p0}, Lq96;->n()Lu94;

    move-result-object v1

    invoke-virtual {p0}, Lq96;->m()Loa;

    move-result-object p0

    invoke-virtual {p0}, Loa;->m()Ll1;

    move-result-object p0

    invoke-static {p0}, Lslb;->k(Ll1;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, v0, v1, p0}, Lr96;-><init>(IILu94;Ljava/lang/String;)V

    return-object p1
.end method
