.class public final synthetic Lo6/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo6/c;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroidx/recyclerview/widget/DiffUtil$d;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lo6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo6/b;->a:Lo6/c;

    .line 5
    .line 6
    iput p2, p0, Lo6/b;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lo6/b;->c:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lo6/b;->d:Landroidx/recyclerview/widget/DiffUtil$d;

    .line 11
    .line 12
    iput-object p5, p0, Lo6/b;->e:Ljava/lang/Runnable;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo6/b;->a:Lo6/c;

    .line 2
    .line 3
    iget v1, p0, Lo6/b;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lo6/b;->c:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lo6/b;->d:Landroidx/recyclerview/widget/DiffUtil$d;

    .line 8
    .line 9
    iget-object v4, p0, Lo6/b;->e:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lo6/c;->b(Lo6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
