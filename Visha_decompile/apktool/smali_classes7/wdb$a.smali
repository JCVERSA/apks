.class public final Lwdb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:J

.field public f:[B

.field public g:[B

.field public h:J

.field public i:Lsr3;

.field public j:Ljava/lang/Float;

.field public k:J

.field public l:Ljava/lang/String;

.field public m:Landroid/content/Context;

.field public n:Ljava/lang/Long;

.field public o:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lwdb$a;->c:J

    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lwdb$a;->d:J

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lwdb$a;->e:J

    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lwdb$a;->h:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lwdb$a;->k:J

    const-string v0, ""

    iput-object v0, p0, Lwdb$a;->l:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lwdb$a;->o:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Lwdb;
    .locals 3

    new-instance v0, Lwdb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwdb;-><init>(Lxdb;)V

    iget-object v1, p0, Lwdb$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lwdb;->a(Lwdb;Ljava/lang/String;)V

    iget-object v1, p0, Lwdb$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lwdb;->h(Lwdb;Ljava/lang/String;)V

    iget-wide v1, p0, Lwdb$a;->c:J

    invoke-static {v0, v1, v2}, Lwdb;->f(Lwdb;J)V

    iget-wide v1, p0, Lwdb$a;->h:J

    invoke-static {v0, v1, v2}, Lwdb;->g(Lwdb;J)V

    iget-object v1, p0, Lwdb$a;->i:Lsr3;

    invoke-static {v0, v1}, Lwdb;->e(Lwdb;Lsr3;)V

    iget-object v1, p0, Lwdb$a;->j:Ljava/lang/Float;

    invoke-static {v0, v1}, Lwdb;->i(Lwdb;Ljava/lang/Float;)V

    iget-wide v1, p0, Lwdb$a;->d:J

    invoke-static {v0, v1, v2}, Lwdb;->b(Lwdb;J)V

    iget-wide v1, p0, Lwdb$a;->e:J

    invoke-virtual {v0, v1, v2}, Lwdb;->y(J)V

    iget-object v1, p0, Lwdb$a;->f:[B

    invoke-static {v0, v1}, Lwdb;->d(Lwdb;[B)V

    iget-object v1, p0, Lwdb$a;->g:[B

    invoke-static {v0, v1}, Lwdb;->c(Lwdb;[B)V

    iget-wide v1, p0, Lwdb$a;->k:J

    invoke-static {v0, v1, v2}, Lwdb;->j(Lwdb;J)V

    iget-object v1, p0, Lwdb$a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lwdb;->q(Ljava/lang/String;)V

    iget-object v1, p0, Lwdb$a;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lwdb;->t(Landroid/content/Context;)V

    iget-object v1, p0, Lwdb$a;->n:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lwdb;->s(Ljava/lang/Long;)V

    iget-object p0, p0, Lwdb$a;->o:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lwdb;->z(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lwdb$a;
    .locals 0

    iput-object p1, p0, Lwdb$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lwdb$a;
    .locals 0

    iput-object p1, p0, Lwdb$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/Long;)Lwdb$a;
    .locals 0

    iput-object p1, p0, Lwdb$a;->n:Ljava/lang/Long;

    return-object p0
.end method

.method public e(Landroid/content/Context;)Lwdb$a;
    .locals 0

    iput-object p1, p0, Lwdb$a;->m:Landroid/content/Context;

    return-object p0
.end method

.method public f([B)Lwdb$a;
    .locals 0

    iput-object p1, p0, Lwdb$a;->g:[B

    return-object p0
.end method

.method public g([B)Lwdb$a;
    .locals 0

    iput-object p1, p0, Lwdb$a;->f:[B

    return-object p0
.end method

.method public h(Ljava/lang/Boolean;)Lwdb$a;
    .locals 0

    iput-object p1, p0, Lwdb$a;->o:Ljava/lang/Boolean;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lwdb$a;
    .locals 0

    iput-object p1, p0, Lwdb$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public j(J)Lwdb$a;
    .locals 0

    iput-wide p1, p0, Lwdb$a;->k:J

    return-object p0
.end method
