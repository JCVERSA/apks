.class public final Landroidx/media3/datasource/FileDataSource$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/datasource/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lw1/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/datasource/FileDataSource;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/datasource/FileDataSource;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/datasource/FileDataSource;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/datasource/FileDataSource$a;->a:Lw1/n;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lw1/a;->c(Lw1/n;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/datasource/FileDataSource$a;->a()Landroidx/media3/datasource/FileDataSource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
