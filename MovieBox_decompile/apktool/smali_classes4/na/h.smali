.class public final synthetic Lna/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lna/m$h$a;


# instance fields
.field public final synthetic a:Lna/m;

.field public final synthetic b:Lna/m$d;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lna/m;Lna/m$d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lna/h;->a:Lna/m;

    .line 5
    .line 6
    iput-object p2, p0, Lna/h;->b:Lna/m$d;

    .line 7
    .line 8
    iput-boolean p3, p0, Lna/h;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(ILv9/w;[I)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lna/h;->a:Lna/m;

    .line 2
    .line 3
    iget-object v1, p0, Lna/h;->b:Lna/m$d;

    .line 4
    .line 5
    iget-boolean v2, p0, Lna/h;->c:Z

    .line 6
    .line 7
    move v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lna/m;->t(Lna/m;Lna/m$d;ZILv9/w;[I)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
