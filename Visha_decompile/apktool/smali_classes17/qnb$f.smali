.class public Lqnb$f;
.super Lqnb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lqnb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lqnb$f;->b:Ljava/lang/String;

    iput-wide p2, p0, Lqnb$f;->c:J

    invoke-virtual {p0}, Lqnb$f;->r()J

    move-result-wide p1

    iput-wide p1, p0, Lqnb$f;->d:J

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqnb$f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public r()J
    .locals 2

    iget-wide v0, p0, Lqnb$f;->c:J

    return-wide v0
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lqnb$f;->d:J

    return-wide v0
.end method

.method public t(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lqnb$f;->u(J)V

    return-void
.end method

.method public u(J)V
    .locals 2

    iget-wide v0, p0, Lqnb$f;->d:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lqnb$f;->d:J

    invoke-virtual {p0, p0}, Lqnb;->d(Lqnb;)V

    return-void
.end method
