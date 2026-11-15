.class public Lwdb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwdb$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Lsr3;

.field public i:Ljava/lang/Float;

.field public j:[B

.field public k:[B

.field public l:J

.field public m:Landroid/content/Context;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/Long;

.field public p:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xa00000

    .line 3
    iput-wide v0, p0, Lwdb;->c:J

    const-wide/32 v0, 0x240c8400

    .line 4
    iput-wide v0, p0, Lwdb;->d:J

    const-wide/32 v0, 0x36ee80

    .line 5
    iput-wide v0, p0, Lwdb;->e:J

    const-wide/16 v0, 0x1f4

    .line 6
    iput-wide v0, p0, Lwdb;->f:J

    const-wide/32 v0, 0x3200000

    .line 7
    iput-wide v0, p0, Lwdb;->g:J

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lwdb;->l:J

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lwdb;->n:Ljava/lang/String;

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lwdb;->p:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lxdb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwdb;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lwdb;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lwdb;->r(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lwdb;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwdb;->u(J)V

    return-void
.end method

.method public static bridge synthetic c(Lwdb;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lwdb;->v([B)V

    return-void
.end method

.method public static bridge synthetic d(Lwdb;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lwdb;->w([B)V

    return-void
.end method

.method public static bridge synthetic e(Lwdb;Lsr3;)V
    .locals 0

    invoke-virtual {p0, p1}, Lwdb;->x(Lsr3;)V

    return-void
.end method

.method public static bridge synthetic f(Lwdb;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwdb;->A(J)V

    return-void
.end method

.method public static bridge synthetic g(Lwdb;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwdb;->B(J)V

    return-void
.end method

.method public static bridge synthetic h(Lwdb;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lwdb;->C(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(Lwdb;Ljava/lang/Float;)V
    .locals 0

    invoke-virtual {p0, p1}, Lwdb;->D(Ljava/lang/Float;)V

    return-void
.end method

.method public static bridge synthetic j(Lwdb;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwdb;->E(J)V

    return-void
.end method


# virtual methods
.method public final A(J)V
    .locals 0

    iput-wide p1, p0, Lwdb;->c:J

    return-void
.end method

.method public final B(J)V
    .locals 0

    iput-wide p1, p0, Lwdb;->g:J

    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwdb;->b:Ljava/lang/String;

    return-void
.end method

.method public final D(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lwdb;->i:Ljava/lang/Float;

    return-void
.end method

.method public final E(J)V
    .locals 0

    iput-wide p1, p0, Lwdb;->l:J

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwdb;->n:Ljava/lang/String;

    return-object p0
.end method

.method public l()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lwdb;->o:Ljava/lang/Long;

    return-object p0
.end method

.method public m()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lwdb;->m:Landroid/content/Context;

    return-object p0
.end method

.method public n()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lwdb;->p:Ljava/lang/Boolean;

    return-object p0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lwdb;->l:J

    return-wide v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lwdb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwdb;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwdb;->j:[B

    if-eqz v0, :cond_0

    iget-object p0, p0, Lwdb;->k:[B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwdb;->n:Ljava/lang/String;

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwdb;->a:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lwdb;->o:Ljava/lang/Long;

    return-void
.end method

.method public t(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lwdb;->m:Landroid/content/Context;

    return-void
.end method

.method public final u(J)V
    .locals 0

    iput-wide p1, p0, Lwdb;->d:J

    return-void
.end method

.method public final v([B)V
    .locals 0

    iput-object p1, p0, Lwdb;->k:[B

    return-void
.end method

.method public final w([B)V
    .locals 0

    iput-object p1, p0, Lwdb;->j:[B

    return-void
.end method

.method public final x(Lsr3;)V
    .locals 0

    iput-object p1, p0, Lwdb;->h:Lsr3;

    return-void
.end method

.method public y(J)V
    .locals 0

    iput-wide p1, p0, Lwdb;->e:J

    return-void
.end method

.method public z(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lwdb;->p:Ljava/lang/Boolean;

    return-void
.end method
