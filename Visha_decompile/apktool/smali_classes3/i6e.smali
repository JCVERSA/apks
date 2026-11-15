.class public final Li6e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public c:Lhlj;

.field public final d:Lpkj;

.field public e:Landroid/os/Handler;

.field public f:Ll7e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6e;->a:Landroid/content/Context;

    sget-object v0, Lhlj;->a:Lhlj;

    iput-object v0, p0, Li6e;->c:Lhlj;

    new-instance v0, Ljkj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Ljkj;-><init>(Landroid/content/Context;Lk3i;Lk3i;)V

    iput-object v0, p0, Li6e;->d:Lpkj;

    return-void
.end method

.method public static bridge synthetic a(Li6e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Li6e;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Li6e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Li6e;->e:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic c(Li6e;)Lpkj;
    .locals 0

    iget-object p0, p0, Li6e;->d:Lpkj;

    return-object p0
.end method

.method public static bridge synthetic d(Li6e;)Lhlj;
    .locals 0

    iget-object p0, p0, Li6e;->c:Lhlj;

    return-object p0
.end method

.method public static bridge synthetic i(Li6e;)Ll7e;
    .locals 0

    iget-object p0, p0, Li6e;->f:Ll7e;

    return-object p0
.end method


# virtual methods
.method public final e(Landroid/os/Handler;)Li6e;
    .locals 0

    iput-object p1, p0, Li6e;->e:Landroid/os/Handler;

    return-object p0
.end method

.method public final f(Ll7e;)Li6e;
    .locals 0

    iput-object p1, p0, Li6e;->f:Ll7e;

    return-object p0
.end method

.method public final g(Lhlj;)Li6e;
    .locals 0

    iput-object p1, p0, Li6e;->c:Lhlj;

    return-object p0
.end method

.method public final h()Lk6e;
    .locals 3

    iget-boolean v0, p0, Li6e;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ln7g;->f(Z)V

    iget-object v0, p0, Li6e;->e:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v2, p0, Li6e;->f:Ll7e;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v2, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li6e;->f:Ll7e;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    invoke-static {v2}, Ln7g;->f(Z)V

    iput-boolean v1, p0, Li6e;->b:Z

    new-instance v0, Lk6e;

    invoke-direct {v0, p0}, Lk6e;-><init>(Li6e;)V

    return-object v0
.end method
