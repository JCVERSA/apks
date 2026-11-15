.class public Lu06;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:Lu06;


# instance fields
.field public a:Lyj;

.field public b:Lfw3;

.field public c:I

.field public d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lu06;->c:I

    return-void
.end method

.method public static c()Lu06;
    .locals 2

    sget-object v0, Lu06;->e:Lu06;

    if-nez v0, :cond_1

    const-class v0, Lu06;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu06;->e:Lu06;

    if-nez v1, :cond_0

    new-instance v1, Lu06;

    invoke-direct {v1}, Lu06;-><init>()V

    sput-object v1, Lu06;->e:Lu06;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lu06;->e:Lu06;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lu06;->a:Lyj;

    if-nez v0, :cond_1

    iget-object p0, p0, Lu06;->b:Lfw3;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "you have not been called init method"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lu06;->d:Landroid/content/Context;

    return-object p0
.end method

.method public final d(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lu06;->d:Landroid/content/Context;

    iput p2, p0, Lu06;->c:I

    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;IIZZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lu06;->f(Landroid/content/Context;Ljava/lang/String;IZI)V

    iget p1, p0, Lu06;->c:I

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lu06;->a:Lyj;

    invoke-virtual {p1, p5}, Lyj;->b(Z)V

    :cond_1
    iget p1, p0, Lu06;->c:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    if-ne p1, p2, :cond_3

    :cond_2
    iget-object p0, p0, Lu06;->b:Lfw3;

    invoke-virtual {p0, p5}, Lfw3;->g(Z)V

    :cond_3
    return-void
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;IZI)V
    .locals 1

    invoke-virtual {p0, p1, p5}, Lu06;->d(Landroid/content/Context;I)V

    iget p1, p0, Lu06;->c:I

    const/4 p5, 0x2

    if-eqz p1, :cond_0

    if-ne p1, p5, :cond_1

    :cond_0
    new-instance p1, Lyj;

    iget-object v0, p0, Lu06;->d:Landroid/content/Context;

    invoke-direct {p1, v0, p2, p4, p3}, Lyj;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    iput-object p1, p0, Lu06;->a:Lyj;

    :cond_1
    iget p1, p0, Lu06;->c:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    if-ne p1, p5, :cond_3

    :cond_2
    new-instance p1, Lfw3;

    iget-object p3, p0, Lu06;->d:Landroid/content/Context;

    invoke-direct {p1, p3, p2}, Lfw3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lu06;->b:Lfw3;

    :cond_3
    return-void
.end method

.method public g()V
    .locals 3

    invoke-virtual {p0}, Lu06;->a()V

    iget v0, p0, Lu06;->c:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lu06;->a:Lyj;

    invoke-virtual {v0}, Lyj;->a()V

    :cond_1
    iget v0, p0, Lu06;->c:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object p0, p0, Lu06;->b:Lfw3;

    invoke-virtual {p0}, Lfw3;->f()V

    :cond_3
    return-void
.end method

.method public h(Z)V
    .locals 3

    invoke-virtual {p0}, Lu06;->a()V

    iget v0, p0, Lu06;->c:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lu06;->a:Lyj;

    invoke-virtual {v0, p1}, Lyj;->c(Z)V

    :cond_1
    iget v0, p0, Lu06;->c:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object p0, p0, Lu06;->b:Lfw3;

    invoke-virtual {p0, p1}, Lfw3;->i(Z)V

    :cond_3
    return-void
.end method

.method public i(Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 3

    invoke-virtual {p0}, Lu06;->a()V

    iget v0, p0, Lu06;->c:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lu06;->a:Lyj;

    invoke-virtual {v0, p1, p2, p3, p4}, Lyj;->d(Ljava/lang/String;Landroid/os/Bundle;J)V

    :cond_1
    iget v0, p0, Lu06;->c:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object p0, p0, Lu06;->b:Lfw3;

    invoke-virtual {p0, p1, p2, p3, p4}, Lfw3;->j(Ljava/lang/String;Landroid/os/Bundle;J)V

    :cond_3
    return-void
.end method

.method public j(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 2

    invoke-virtual {p0}, Lu06;->a()V

    iget v0, p0, Lu06;->c:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lu06;->a:Lyj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lyj;->e(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    :cond_1
    return-void
.end method
