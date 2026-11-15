.class public final Lr6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr6$b;->a:Z

    iput-boolean v0, p0, Lr6$b;->b:Z

    const/16 v1, 0xc8

    iput v1, p0, Lr6$b;->d:I

    iput-boolean v0, p0, Lr6$b;->e:Z

    iput-boolean v0, p0, Lr6$b;->f:Z

    return-void
.end method

.method public static synthetic a(Lr6$b;)Z
    .locals 0

    iget-boolean p0, p0, Lr6$b;->f:Z

    return p0
.end method

.method public static synthetic b(Lr6$b;)Z
    .locals 0

    iget-boolean p0, p0, Lr6$b;->a:Z

    return p0
.end method

.method public static synthetic d(Lr6$b;)Z
    .locals 0

    iget-boolean p0, p0, Lr6$b;->b:Z

    return p0
.end method

.method public static synthetic e(Lr6$b;)Z
    .locals 0

    iget-boolean p0, p0, Lr6$b;->c:Z

    return p0
.end method

.method public static synthetic f(Lr6$b;)I
    .locals 0

    iget p0, p0, Lr6$b;->d:I

    return p0
.end method

.method public static synthetic g(Lr6$b;)Z
    .locals 0

    iget-boolean p0, p0, Lr6$b;->e:Z

    return p0
.end method


# virtual methods
.method public c()Lr6$a;
    .locals 1

    new-instance v0, Lr6$a;

    invoke-direct {v0, p0}, Lr6$a;-><init>(Lr6$b;)V

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lr6$b;
    .locals 0

    sput-object p1, Lr6;->b:Ljava/lang/String;

    return-object p0
.end method

.method public i(Z)Lr6$b;
    .locals 1

    iput-boolean p1, p0, Lr6$b;->a:Z

    iput-boolean p1, p0, Lr6$b;->b:Z

    invoke-static {p1}, Lul4;->l(Z)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-boolean v0, p0, Lr6$b;->a:Z

    invoke-virtual {p1, v0}, Lja1;->setLogSwitch(Z)V

    sget-object p1, Lja1;->NET_LOG:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {p1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->m()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object p1

    iget-boolean v0, p0, Lr6$b;->a:Z

    invoke-virtual {p1, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->q(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    return-object p0
.end method

.method public j(I)Lr6$b;
    .locals 0

    iput p1, p0, Lr6$b;->d:I

    return-object p0
.end method

.method public k(Z)Lr6$b;
    .locals 0

    invoke-static {p1}, Lr6;->i(Z)Z

    return-object p0
.end method

.method public l(Z)Lr6$b;
    .locals 0

    invoke-static {p1}, Lr6;->g(Z)Z

    return-object p0
.end method

.method public m(J)Lr6$b;
    .locals 1

    invoke-static {}, Lr6;->c()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-object p0
.end method

.method public n(Z)Lr6$b;
    .locals 0

    invoke-static {p1}, Lr6;->e(Z)Z

    return-object p0
.end method

.method public o(Z)Lr6$b;
    .locals 0

    iput-boolean p1, p0, Lr6$b;->e:Z

    return-object p0
.end method

.method public p(Z)Lr6$b;
    .locals 0

    iput-boolean p1, p0, Lr6$b;->c:Z

    return-object p0
.end method
