.class public final synthetic Lh3/u;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/common/util/m;


# instance fields
.field public final synthetic a:Lh3/v;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lh3/v;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh3/u;->a:Lh3/v;

    .line 5
    .line 6
    iput-wide p2, p0, Lh3/u;->b:J

    .line 7
    .line 8
    iput p4, p0, Lh3/u;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lh3/u;->a:Lh3/v;

    .line 2
    .line 3
    iget-wide v1, p0, Lh3/u;->b:J

    .line 4
    .line 5
    iget v3, p0, Lh3/u;->c:I

    .line 6
    .line 7
    check-cast p1, Lh3/e;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lh3/v;->h(Lh3/v;JILh3/e;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
