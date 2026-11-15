.class public final synthetic Lo6/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo6/c;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lo6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo6/a;->a:Lo6/c;

    .line 5
    .line 6
    iput-object p2, p0, Lo6/a;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lo6/a;->c:Ljava/util/List;

    .line 9
    .line 10
    iput p4, p0, Lo6/a;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lo6/a;->e:Ljava/lang/Runnable;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo6/a;->a:Lo6/c;

    .line 2
    .line 3
    iget-object v1, p0, Lo6/a;->b:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lo6/a;->c:Ljava/util/List;

    .line 6
    .line 7
    iget v3, p0, Lo6/a;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Lo6/a;->e:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lo6/c;->a(Lo6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
