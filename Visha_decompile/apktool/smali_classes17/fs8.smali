.class public final Lfs8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmq4;

.field public final b:Lmq4;

.field public final c:Lmq4;

.field public final d:Lmq4;


# direct methods
.method public constructor <init>(Lmq4;Lmq4;Lmq4;Lmq4;)V
    .locals 1

    const-string v0, "measureFilter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutFilter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawFilter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totalFilter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfs8;->a:Lmq4;

    .line 3
    iput-object p2, p0, Lfs8;->b:Lmq4;

    .line 4
    iput-object p3, p0, Lfs8;->c:Lmq4;

    .line 5
    iput-object p4, p0, Lfs8;->d:Lmq4;

    return-void
.end method

.method public synthetic constructor <init>(Lmq4;Lmq4;Lmq4;Lmq4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 6
    sget-object p1, Lmq4;->a:Lmq4$a;

    invoke-virtual {p1}, Lmq4$a;->e()Lmq4;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 7
    sget-object p2, Lmq4;->a:Lmq4$a;

    invoke-virtual {p2}, Lmq4$a;->e()Lmq4;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 8
    sget-object p3, Lmq4;->a:Lmq4$a;

    invoke-virtual {p3}, Lmq4$a;->e()Lmq4;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 9
    sget-object p4, Lmq4;->a:Lmq4$a;

    invoke-virtual {p4}, Lmq4$a;->f()Lmq4;

    move-result-object p4

    .line 10
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lfs8;-><init>(Lmq4;Lmq4;Lmq4;Lmq4;)V

    return-void
.end method


# virtual methods
.method public final a()Lmq4;
    .locals 0

    iget-object p0, p0, Lfs8;->c:Lmq4;

    return-object p0
.end method

.method public final b()Lmq4;
    .locals 0

    iget-object p0, p0, Lfs8;->b:Lmq4;

    return-object p0
.end method

.method public final c()Lmq4;
    .locals 0

    iget-object p0, p0, Lfs8;->a:Lmq4;

    return-object p0
.end method

.method public final d()Lmq4;
    .locals 0

    iget-object p0, p0, Lfs8;->d:Lmq4;

    return-object p0
.end method
