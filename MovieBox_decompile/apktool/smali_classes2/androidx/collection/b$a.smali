.class final Landroidx/collection/b$a;
.super Landroidx/collection/k;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Landroidx/collection/b;


# direct methods
.method public constructor <init>(Landroidx/collection/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/collection/b$a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/collection/b;->i()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Landroidx/collection/k;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/b$a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/b;->o(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/b$a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/b;->j(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
