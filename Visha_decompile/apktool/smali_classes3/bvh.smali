.class public final Lbvh;
.super Levh;
.source "SourceFile"


# static fields
.field public static final e:Lbvh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbvh;

    invoke-direct {v0}, Lbvh;-><init>()V

    sput-object v0, Lbvh;->e:Lbvh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Levh;-><init>()V

    return-void
.end method

.method public static i()Lbvh;
    .locals 1

    sget-object v0, Lbvh;->e:Lbvh;

    return-object v0
.end method


# virtual methods
.method public final b(Z)V
    .locals 1

    invoke-static {}, Lcvh;->a()Lcvh;

    move-result-object p0

    invoke-virtual {p0}, Lcvh;->c()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsuh;

    invoke-virtual {v0}, Lsuh;->g()Lrvh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrvh;->k(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    invoke-static {}, Lcvh;->a()Lcvh;

    move-result-object p0

    invoke-virtual {p0}, Lcvh;->b()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsuh;

    invoke-virtual {v0}, Lsuh;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
