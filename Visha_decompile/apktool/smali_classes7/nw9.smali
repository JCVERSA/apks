.class public Lnw9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StartUpProvider"

    iput-object v0, p0, Lnw9;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lnw9;->d:Ljava/lang/String;

    const-string v1, "doInitTask: start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lbx9;->F()V

    new-instance v0, Lqw9$a;

    invoke-direct {v0}, Lqw9$a;-><init>()V

    iget-boolean v1, p0, Lnw9;->b:Z

    if-eqz v1, :cond_0

    new-instance v1, Lv86;

    invoke-direct {v1}, Lv86;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    :cond_0
    new-instance v1, Lh9;

    invoke-direct {v1}, Lh9;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Li0;

    invoke-direct {v1}, Li0;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lbg;

    iget-boolean v2, p0, Lnw9;->a:Z

    iget-boolean v3, p0, Lnw9;->c:Z

    invoke-direct {v1, v2, v3}, Lbg;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lnp;

    invoke-direct {v1}, Lnp;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lte1;

    invoke-direct {v1}, Lte1;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lec2;

    invoke-direct {v1}, Lec2;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Li24;

    invoke-direct {v1}, Li24;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lp94;

    invoke-direct {v1}, Lp94;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lcom/transsion/launch/task/GlobalDownloadMangerTask;

    invoke-direct {v1}, Lcom/transsion/launch/task/GlobalDownloadMangerTask;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lhn5;

    invoke-direct {v1}, Lhn5;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Laq5;

    invoke-direct {v1}, Laq5;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lv06;

    invoke-direct {v1}, Lv06;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lgf6;

    invoke-direct {v1}, Lgf6;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lfl6;

    invoke-direct {v1}, Lfl6;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Llw5;

    invoke-direct {v1}, Llw5;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lum6;

    invoke-direct {v1}, Lum6;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Ly7;

    invoke-direct {v1}, Ly7;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Llz6;

    invoke-direct {v1}, Llz6;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lp88;

    invoke-direct {v1}, Lp88;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lwg8;

    invoke-direct {v1}, Lwg8;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lzi8;

    invoke-direct {v1}, Lzi8;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lrr8;

    invoke-direct {v1}, Lrr8;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lqr8;

    invoke-direct {v1}, Lqr8;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Loxa;

    invoke-direct {v1}, Loxa;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lnob;

    invoke-direct {v1}, Lnob;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lchb;

    invoke-direct {v1}, Lchb;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Loec;

    invoke-direct {v1}, Loec;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lve;

    invoke-direct {v1}, Lve;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lzz4;

    invoke-direct {v1}, Lzz4;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Ldec;

    invoke-direct {v1}, Ldec;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lfw6;

    invoke-direct {v1}, Lfw6;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lydb;

    invoke-direct {v1}, Lydb;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Lys1;

    invoke-direct {v1}, Lys1;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Ljh5;

    invoke-direct {v1}, Ljh5;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    new-instance v1, Ltr1;

    invoke-direct {v1}, Ltr1;-><init>()V

    invoke-virtual {v0, v1}, Lqw9$a;->a(Lpw9;)Lqw9$a;

    invoke-virtual {v0, p1}, Lqw9$a;->b(Landroid/content/Context;)Lqw9;

    move-result-object p1

    invoke-virtual {p1}, Lqw9;->c()Lqw9;

    move-result-object p1

    invoke-virtual {p1}, Lqw9;->a()V

    iget-object p0, p0, Lnw9;->d:Ljava/lang/String;

    const-string p1, "doInitTask: end"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Z)Lnw9;
    .locals 0

    iput-boolean p1, p0, Lnw9;->a:Z

    return-object p0
.end method

.method public c(Z)Lnw9;
    .locals 0

    iput-boolean p1, p0, Lnw9;->b:Z

    return-object p0
.end method

.method public d(Z)Lnw9;
    .locals 0

    iput-boolean p1, p0, Lnw9;->c:Z

    return-object p0
.end method
