.class public final Laij;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lggj;

.field public c:Z

.field public final d:Lyhj;

.field public final e:Lzhj;

.field public f:Lcij;

.field public g:Lvhj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laij;->a:Landroid/content/Context;

    sget-object p1, Lggj;->c:Lggj;

    iput-object p1, p0, Laij;->b:Lggj;

    sget-object p1, Lyhj;->a:Lyhj;

    iput-object p1, p0, Laij;->d:Lyhj;

    sget-object p1, Lzhj;->a:Lzhj;

    iput-object p1, p0, Laij;->e:Lzhj;

    return-void
.end method

.method public static bridge synthetic a(Laij;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Laij;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Laij;)Lggj;
    .locals 0

    iget-object p0, p0, Laij;->b:Lggj;

    return-object p0
.end method

.method public static bridge synthetic d(Laij;)Lcij;
    .locals 0

    iget-object p0, p0, Laij;->f:Lcij;

    return-object p0
.end method

.method public static bridge synthetic e(Laij;)Lvhj;
    .locals 0

    iget-object p0, p0, Laij;->g:Lvhj;

    return-object p0
.end method


# virtual methods
.method public final c()Lxij;
    .locals 2

    iget-boolean v0, p0, Laij;->c:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ln7g;->f(Z)V

    iput-boolean v1, p0, Laij;->c:Z

    iget-object v0, p0, Laij;->f:Lcij;

    if-nez v0, :cond_0

    new-instance v0, Lcij;

    const/4 v1, 0x0

    new-array v1, v1, [Lvqf;

    invoke-direct {v0, v1}, Lcij;-><init>([Lvqf;)V

    iput-object v0, p0, Laij;->f:Lcij;

    :cond_0
    iget-object v0, p0, Laij;->g:Lvhj;

    if-nez v0, :cond_1

    iget-object v0, p0, Laij;->a:Landroid/content/Context;

    new-instance v1, Lvhj;

    invoke-direct {v1, v0}, Lvhj;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Laij;->g:Lvhj;

    :cond_1
    new-instance v0, Lxij;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxij;-><init>(Laij;Lwij;)V

    return-object v0
.end method
