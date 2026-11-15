.class public final synthetic Lx1/h1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/common/util/t$a;


# instance fields
.field public final synthetic a:Lx1/c$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lx1/c$a;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/h1;->a:Lx1/c$a;

    .line 5
    .line 6
    iput p2, p0, Lx1/h1;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, Lx1/h1;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, Lx1/h1;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lx1/h1;->a:Lx1/c$a;

    .line 2
    .line 3
    iget v1, p0, Lx1/h1;->b:I

    .line 4
    .line 5
    iget-wide v2, p0, Lx1/h1;->c:J

    .line 6
    .line 7
    iget-wide v4, p0, Lx1/h1;->d:J

    .line 8
    .line 9
    move-object v6, p1

    .line 10
    check-cast v6, Lx1/c;

    .line 11
    .line 12
    invoke-static/range {v0 .. v6}, Lx1/s1;->W(Lx1/c$a;IJJLx1/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
