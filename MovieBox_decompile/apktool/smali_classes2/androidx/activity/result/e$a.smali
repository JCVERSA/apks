.class public final Landroidx/activity/result/e$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lf/g$f;

.field private b:I

.field private c:Z

.field private d:Lf/g$b;

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lf/g$c;->a:Lf/g$c;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/activity/result/e$a;->a:Lf/g$f;

    .line 7
    .line 8
    sget-object v0, Lf/e;->b:Lf/e$a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lf/e$a;->a()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Landroidx/activity/result/e$a;->b:I

    .line 15
    .line 16
    sget-object v0, Lf/g$b$a;->a:Lf/g$b$a;

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/activity/result/e$a;->d:Lf/g$b;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Landroidx/activity/result/e;
    .locals 3

    .line 1
    new-instance v0, Landroidx/activity/result/e;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/activity/result/e;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/activity/result/e$a;->a:Lf/g$f;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/activity/result/e;->k(Lf/g$f;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/activity/result/e$a;->b:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/activity/result/e;->j(I)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Landroidx/activity/result/e$a;->c:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/activity/result/e;->l(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroidx/activity/result/e$a;->d:Lf/g$b;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/activity/result/e;->i(Lf/g$b;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Landroidx/activity/result/e$a;->e:Z

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/activity/result/e;->h(Z)V

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Landroidx/activity/result/e$a;->f:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroidx/activity/result/e;->g(J)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final b(Lf/g$b;)Landroidx/activity/result/e$a;
    .locals 1

    .line 1
    const-string v0, "defaultTab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/activity/result/e$a;->d:Lf/g$b;

    .line 7
    .line 8
    return-object p0
.end method

.method public final c(I)Landroidx/activity/result/e$a;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/activity/result/e$a;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Lf/g$f;)Landroidx/activity/result/e$a;
    .locals 1

    .line 1
    const-string v0, "mediaType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/activity/result/e$a;->a:Lf/g$f;

    .line 7
    .line 8
    return-object p0
.end method

.method public final e(Z)Landroidx/activity/result/e$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/activity/result/e$a;->c:Z

    .line 2
    .line 3
    return-object p0
.end method
