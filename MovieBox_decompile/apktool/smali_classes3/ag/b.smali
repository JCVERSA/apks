.class public final Lag/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/tn/lib/net/cons/HeaderType;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lag/b;->c:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/tn/lib/net/cons/HeaderType;->ONE_ROOM:Lcom/tn/lib/net/cons/HeaderType;

    .line 9
    .line 10
    iput-object v0, p0, Lag/b;->d:Lcom/tn/lib/net/cons/HeaderType;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/tn/lib/net/cons/HeaderType;
    .locals 1

    .line 1
    iget-object v0, p0, Lag/b;->d:Lcom/tn/lib/net/cons/HeaderType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lag/b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lag/b;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lag/b;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lag/b;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lag/b;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public final g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lag/b;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lag/b;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
