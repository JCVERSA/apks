.class public final Lqoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcrj;


# instance fields
.field public a:J

.field public b:J

.field public c:Lbrj;

.field public d:Lqoj;


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p3, 0x10000

    invoke-virtual {p0, p1, p2, p3}, Lqoj;->c(JI)V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    iget-wide v0, p0, Lqoj;->a:J

    sub-long/2addr p1, v0

    iget-object p0, p0, Lqoj;->c:Lbrj;

    iget p0, p0, Lbrj;->b:I

    long-to-int p0, p1

    return p0
.end method

.method public final b()Lqoj;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lqoj;->c:Lbrj;

    iget-object v1, p0, Lqoj;->d:Lqoj;

    iput-object v0, p0, Lqoj;->d:Lqoj;

    return-object v1
.end method

.method public final c(JI)V
    .locals 2

    iget-object p3, p0, Lqoj;->c:Lbrj;

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Ln7g;->f(Z)V

    iput-wide p1, p0, Lqoj;->a:J

    const-wide/32 v0, 0x10000

    add-long/2addr p1, v0

    iput-wide p1, p0, Lqoj;->b:J

    return-void
.end method

.method public final zzc()Lbrj;
    .locals 0

    iget-object p0, p0, Lqoj;->c:Lbrj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final zzd()Lcrj;
    .locals 1

    iget-object p0, p0, Lqoj;->d:Lqoj;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lqoj;->c:Lbrj;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
