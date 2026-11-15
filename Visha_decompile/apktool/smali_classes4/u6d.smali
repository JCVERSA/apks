.class public Lu6d;
.super Lr9d;
.source "SourceFile"


# static fields
.field public static e:Lu6d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu6d;

    invoke-direct {v0}, Lu6d;-><init>()V

    sput-object v0, Lu6d;->e:Lu6d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr9d;-><init>()V

    return-void
.end method

.method public static k()Lu6d;
    .locals 1

    sget-object v0, Lu6d;->e:Lu6d;

    return-object v0
.end method


# virtual methods
.method public f(Z)V
    .locals 1

    invoke-static {}, Li8d;->e()Li8d;

    move-result-object p0

    invoke-virtual {p0}, Li8d;->c()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le3d;

    invoke-virtual {v0}, Le3d;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->k(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    invoke-static {}, Li8d;->e()Li8d;

    move-result-object p0

    invoke-virtual {p0}, Li8d;->a()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le3d;

    invoke-virtual {v0}, Le3d;->m()Landroid/view/View;

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
