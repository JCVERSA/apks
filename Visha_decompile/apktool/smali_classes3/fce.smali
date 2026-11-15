.class public final Lfce;
.super Lp9e;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lkae;

.field public final synthetic c:Lgce;


# direct methods
.method public constructor <init>(Lgce;Lkae;Lkae;)V
    .locals 0

    iput-object p3, p0, Lfce;->b:Lkae;

    iput-object p1, p0, Lfce;->c:Lgce;

    invoke-direct {p0, p2}, Lp9e;-><init>(Lkae;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 6

    iget-object v0, p0, Lfce;->b:Lkae;

    invoke-interface {v0, p1, p2}, Lkae;->a(J)Lz9e;

    move-result-object p1

    iget-object p2, p1, Lz9e;->a:Llae;

    iget-wide v0, p2, Llae;->b:J

    iget-object p0, p0, Lfce;->c:Lgce;

    new-instance v2, Lz9e;

    new-instance v3, Llae;

    invoke-static {p0}, Lgce;->a(Lgce;)J

    move-result-wide v4

    add-long/2addr v0, v4

    iget-wide v4, p2, Llae;->a:J

    invoke-direct {v3, v4, v5, v0, v1}, Llae;-><init>(JJ)V

    iget-object p1, p1, Lz9e;->b:Llae;

    iget-wide v0, p1, Llae;->b:J

    new-instance p2, Llae;

    invoke-static {p0}, Lgce;->a(Lgce;)J

    move-result-wide v4

    add-long/2addr v0, v4

    iget-wide p0, p1, Llae;->a:J

    invoke-direct {p2, p0, p1, v0, v1}, Llae;-><init>(JJ)V

    invoke-direct {v2, v3, p2}, Lz9e;-><init>(Llae;Llae;)V

    return-object v2
.end method
