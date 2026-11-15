.class public final Lavh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldvh;


# static fields
.field public static final e:Lavh;


# instance fields
.field public a:Ljava/util/Date;

.field public b:Z

.field public final c:Levh;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lavh;

    new-instance v1, Levh;

    invoke-direct {v1}, Levh;-><init>()V

    invoke-direct {v0, v1}, Lavh;-><init>(Levh;)V

    sput-object v0, Lavh;->e:Lavh;

    return-void
.end method

.method public constructor <init>(Levh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavh;->c:Levh;

    return-void
.end method

.method public static a()Lavh;
    .locals 1

    sget-object v0, Lavh;->e:Lavh;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lavh;->a:Ljava/util/Date;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lavh;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lavh;->c:Levh;

    invoke-virtual {v0, p1}, Levh;->d(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Levh;->e(Ldvh;)V

    invoke-virtual {v0}, Levh;->f()V

    iget-boolean p1, v0, Levh;->c:Z

    iput-boolean p1, p0, Lavh;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lavh;->b:Z

    :cond_0
    return-void
.end method

.method public final zzc(Z)V
    .locals 3

    iget-boolean v0, p0, Lavh;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lavh;->a:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v0, p0, Lavh;->a:Ljava/util/Date;

    iget-boolean v0, p0, Lavh;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcvh;->a()Lcvh;

    move-result-object v0

    invoke-virtual {v0}, Lcvh;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsuh;

    invoke-virtual {v1}, Lsuh;->g()Lrvh;

    move-result-object v1

    invoke-virtual {p0}, Lavh;->b()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrvh;->g(Ljava/util/Date;)V

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lavh;->d:Z

    return-void
.end method
