.class public final Lrp5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lwp5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrp5;->a:Z

    const/4 v0, 0x3

    iput v0, p0, Lrp5;->b:I

    const-string v0, ""

    iput-object v0, p0, Lrp5;->c:Ljava/lang/String;

    new-instance v0, Lh22;

    invoke-direct {v0}, Lh22;-><init>()V

    iput-object v0, p0, Lrp5;->d:Lwp5;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lrp5;->b:I

    return p0
.end method

.method public final b()Lwp5;
    .locals 0

    iget-object p0, p0, Lrp5;->d:Lwp5;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lrp5;->a:Z

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrp5;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lrp5;->b:I

    return-void
.end method

.method public final f(Lwp5;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lrp5;->d:Lwp5;

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lrp5;->a:Z

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lrp5;->c:Ljava/lang/String;

    return-void
.end method
