.class public final Landroidx/media3/datasource/c$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/media3/datasource/HttpDataSource$b;

.field private b:Lw1/n;

.field private c:Lcom/google/common/base/n;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$b;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/datasource/HttpDataSource$b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/datasource/c$b;->a:Landroidx/media3/datasource/HttpDataSource$b;

    .line 10
    .line 11
    const/16 v0, 0x1f40

    .line 12
    .line 13
    iput v0, p0, Landroidx/media3/datasource/c$b;->e:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/media3/datasource/c$b;->f:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/datasource/c;
    .locals 11

    .line 1
    new-instance v10, Landroidx/media3/datasource/c;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/datasource/c$b;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/datasource/c$b;->e:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/media3/datasource/c$b;->f:I

    .line 8
    .line 9
    iget-boolean v4, p0, Landroidx/media3/datasource/c$b;->g:Z

    .line 10
    .line 11
    iget-boolean v5, p0, Landroidx/media3/datasource/c$b;->h:Z

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/media3/datasource/c$b;->a:Landroidx/media3/datasource/HttpDataSource$b;

    .line 14
    .line 15
    iget-object v7, p0, Landroidx/media3/datasource/c$b;->c:Lcom/google/common/base/n;

    .line 16
    .line 17
    iget-boolean v8, p0, Landroidx/media3/datasource/c$b;->i:Z

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    move-object v0, v10

    .line 21
    invoke-direct/range {v0 .. v9}, Landroidx/media3/datasource/c;-><init>(Ljava/lang/String;IIZZLandroidx/media3/datasource/HttpDataSource$b;Lcom/google/common/base/n;ZLandroidx/media3/datasource/c$a;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/datasource/c$b;->b:Lw1/n;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v10, v0}, Lw1/a;->c(Lw1/n;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v10
.end method

.method public b(Ljava/util/Map;)Landroidx/media3/datasource/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/c$b;->a:Landroidx/media3/datasource/HttpDataSource$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$b;->a(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c(Ljava/lang/String;)Landroidx/media3/datasource/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/datasource/c$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/HttpDataSource;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/media3/datasource/c$b;->a()Landroidx/media3/datasource/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/datasource/c$b;->a()Landroidx/media3/datasource/c;

    move-result-object v0

    return-object v0
.end method
