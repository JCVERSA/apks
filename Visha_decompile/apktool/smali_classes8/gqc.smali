.class public Lgqc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lmca$b;

.field public b:Lld4;


# direct methods
.method public constructor <init>(Lmca$b;ZLld4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgqc;->a:Lmca$b;

    iput-object p3, p0, Lgqc;->b:Lld4;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lmca$b;->p()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lmca$b;->m()Lgk3;

    move-result-object p1

    sget-object p2, Lbk3;->r:Ll1;

    invoke-virtual {p1, p2}, Lgk3;->n(Ll1;)Lbk3;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbk3;->q()Lx0;

    move-result-object p1

    invoke-static {p1}, Lld4;->o(Ljava/lang/Object;)Lld4;

    move-result-object p1

    iput-object p1, p0, Lgqc;->b:Lld4;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lld4;
    .locals 0

    iget-object p0, p0, Lgqc;->b:Lld4;

    return-object p0
.end method
