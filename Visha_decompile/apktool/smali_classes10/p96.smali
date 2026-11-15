.class public Lp96;
.super Ln96;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:Lx94;

.field public g:Ltc8;

.field public h:Lu08;

.field public i:Lu94;

.field public j:[Ltc8;


# direct methods
.method public constructor <init>(IILx94;Ltc8;Lu08;Ljava/lang/String;)V
    .locals 8

    .line 2
    invoke-static {p3, p4}, Lfj4;->a(Lx94;Ltc8;)Lu94;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lp96;-><init>(IILx94;Ltc8;Lu94;Lu08;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILx94;Ltc8;Lu94;Lu08;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p7}, Ln96;-><init>(ZLjava/lang/String;)V

    iput p1, p0, Lp96;->d:I

    iput p2, p0, Lp96;->e:I

    iput-object p3, p0, Lp96;->f:Lx94;

    iput-object p4, p0, Lp96;->g:Ltc8;

    iput-object p5, p0, Lp96;->i:Lu94;

    iput-object p6, p0, Lp96;->h:Lu08;

    new-instance p1, Lvc8;

    invoke-direct {p1, p3, p4}, Lvc8;-><init>(Lx94;Ltc8;)V

    invoke-virtual {p1}, Lvc8;->c()[Ltc8;

    move-result-object p1

    iput-object p1, p0, Lp96;->j:[Ltc8;

    return-void
.end method


# virtual methods
.method public c()Lx94;
    .locals 0

    iget-object p0, p0, Lp96;->f:Lx94;

    return-object p0
.end method

.method public d()Ltc8;
    .locals 0

    iget-object p0, p0, Lp96;->g:Ltc8;

    return-object p0
.end method

.method public e()Lu94;
    .locals 0

    iget-object p0, p0, Lp96;->i:Lu94;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lp96;->e:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lp96;->d:I

    return p0
.end method

.method public h()Lu08;
    .locals 0

    iget-object p0, p0, Lp96;->h:Lu08;

    return-object p0
.end method

.method public i()[Ltc8;
    .locals 0

    iget-object p0, p0, Lp96;->j:[Ltc8;

    return-object p0
.end method
