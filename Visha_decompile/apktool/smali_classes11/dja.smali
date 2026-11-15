.class public final Ldja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzia$c;
.implements Laja;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldja$a;,
        Ldja$b;
    }
.end annotation


# static fields
.field public static final k:Ldja$b;


# instance fields
.field public final b:Lbja;

.field public c:Ldja$a;

.field public final d:Lzia;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldja$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldja$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldja;->k:Ldja$b;

    return-void
.end method

.method public constructor <init>(Lbja;)V
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldja;->b:Lbja;

    .line 3
    new-instance v0, Lzia;

    invoke-direct {v0, p1, p0}, Lzia;-><init>(Lbja;Lzia$c;)V

    iput-object v0, p0, Ldja;->d:Lzia;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Ldja;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p1

    iput-object p1, p0, Ldja;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    return-void
.end method

.method public synthetic constructor <init>(Lbja;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    .line 6
    new-instance p1, Lbja;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, p2}, Lbja;-><init>(Ljava/util/Random;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Ldja;-><init>(Lbja;)V

    return-void
.end method

.method public static final synthetic d(Ldja;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Ldja;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic e(Ldja;)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 0

    iget-object p0, p0, Ldja;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    return-object p0
.end method

.method public static final synthetic f(Ldja;)I
    .locals 0

    iget p0, p0, Ldja;->g:I

    return p0
.end method

.method public static final synthetic g(Ldja;)Lzia;
    .locals 0

    iget-object p0, p0, Ldja;->d:Lzia;

    return-object p0
.end method

.method public static final synthetic h(Ldja;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Ldja;->D(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Landroid/content/Context;III)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Ldja;->F(Landroid/content/Context;III)V

    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0}, Lbja;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ldja;->v(Landroid/content/Context;III)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ldja;->d:Lzia;

    invoke-virtual {v0, p1, p2, p3}, Lzia;->i(Landroid/content/Context;II)V

    invoke-virtual {p0, p1, p2, p3, p4}, Ldja;->w(Landroid/content/Context;III)V

    return-void
.end method

.method public final B()V
    .locals 1

    invoke-virtual {p0}, Ldja;->C()V

    iget-object v0, p0, Ldja;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->clear()V

    iget-object p0, p0, Ldja;->b:Lbja;

    invoke-virtual {p0}, Lbja;->B()V

    return-void
.end method

.method public final C()V
    .locals 2

    const-string v0, "TiktokFeedAdController"

    const-string v1, "releaseAllPrefetched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldja;->d:Lzia;

    invoke-virtual {v0}, Lzia;->f()V

    iget-object v0, p0, Ldja;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrka;

    invoke-virtual {v1}, Lrka;->g()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ldja;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final D(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCommittedSlotInternal release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TiktokFeedAdController"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0, p1}, Lbja;->u(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Lw7;->a(Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Z

    move-result v3

    iget-object v4, p0, Ldja;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrka;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lrka;->g()V

    :cond_0
    iget-object v4, p0, Ldja;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Ldja;->b:Lbja;

    invoke-virtual {v4, p1}, Lbja;->D(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v4, p0, Ldja;->c:Ldja$a;

    if-eqz v4, :cond_2

    invoke-interface {v4, p1, p2}, Ldja$a;->f(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCommittedSlotInternal pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    iget-object p2, p0, Ldja;->b:Lbja;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lbja;->y(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Ldja;->G(I)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final E(I)Lrka;
    .locals 1

    iget-object p0, p0, Ldja;->d:Lzia;

    invoke-virtual {p0}, Lzia;->j()Lrka;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lrka;->c()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final F(Landroid/content/Context;III)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ldja;->j:Landroid/content/Context;

    iput p2, p0, Ldja;->i:I

    iput p3, p0, Ldja;->g:I

    iput p4, p0, Ldja;->h:I

    return-void
.end method

.method public final G(I)V
    .locals 3

    iget-object v0, p0, Ldja;->j:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ldja;->b:Lbja;

    invoke-virtual {v1}, Lbja;->E()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Ldja;->b:Lbja;

    invoke-virtual {v1, p1}, Lbja;->k(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lwn8;->d(II)I

    move-result p1

    iget v1, p0, Ldja;->g:I

    iget v2, p0, Ldja;->h:I

    invoke-virtual {p0, v0, p1, v1, v2}, Ldja;->F(Landroid/content/Context;III)V

    iget v1, p0, Ldja;->g:I

    iget v2, p0, Ldja;->h:I

    invoke-virtual {p0, v0, p1, v1, v2}, Ldja;->H(Landroid/content/Context;III)V

    return-void
.end method

.method public final H(Landroid/content/Context;III)V
    .locals 1

    iget-object v0, p0, Ldja;->d:Lzia;

    invoke-virtual {v0, p1, p2, p3}, Lzia;->i(Landroid/content/Context;II)V

    invoke-virtual {p0, p1, p2, p3, p4}, Ldja;->w(Landroid/content/Context;III)V

    return-void
.end method

.method public final I(Ldja$a;)V
    .locals 0

    iput-object p1, p0, Ldja;->c:Ldja$a;

    return-void
.end method

.method public final J(II)Z
    .locals 4

    invoke-virtual {p0, p2}, Ldja;->E(I)Lrka;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lrka;->f()Z

    move-result v2

    const-string v3, "TiktokFeedAdController"

    if-nez v2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryAttachPendingToBound release "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lrka;->g()V

    iget-object p0, p0, Ldja;->d:Lzia;

    invoke-virtual {p0, v0}, Lzia;->h(Lrka;)V

    return v1

    :cond_1
    invoke-virtual {v0, p1}, Lrka;->h(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Ldja;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ldja;->d:Lzia;

    invoke-virtual {p0, v0}, Lzia;->h(Lrka;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tryAttachPendingToBound global="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " milestone="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public a(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrefetchLoaded milestone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cached, try insert if ready"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TiktokFeedAdController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ldja;->j:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldja;->b:Lbja;

    iget v1, p0, Ldja;->g:I

    invoke-virtual {v0, v1}, Lbja;->h(I)I

    move-result v0

    iget v1, p0, Ldja;->i:I

    iget v2, p0, Ldja;->g:I

    invoke-virtual {p0, p1, v1, v2, v0}, Ldja;->w(Landroid/content/Context;III)V

    return-void
.end method

.method public b(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 1

    const-string p0, "reason"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPrefetchFailed milestone="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (no slot insert)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokFeedAdController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c(Landroid/content/Context;IIII)V
    .locals 1

    iget-object v0, p0, Ldja;->d:Lzia;

    invoke-virtual {v0, p3}, Lzia;->g(I)V

    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0, p3}, Lbja;->y(I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p4, p5}, Ldja;->H(Landroid/content/Context;III)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 5

    const-string v0, "reason"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldja;->c:Ldja$a;

    if-eqz v0, :cond_0

    new-instance v1, Ldja$c;

    invoke-direct {v1, p0, p1}, Ldja$c;-><init>(Ldja;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    invoke-interface {v0, v1}, Ldja$a;->a(Lc74;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ldja;->r()Lbja;

    move-result-object v0

    invoke-virtual {v0}, Lbja;->g()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Li81;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearAllCommittedSlots release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TiktokFeedAdController"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ldja;->d(Ldja;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrka;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lrka;->g()V

    :cond_1
    invoke-static {p0}, Ldja;->e(Ldja;)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ldja;->r()Lbja;

    move-result-object v3

    invoke-virtual {v3, v2}, Lbja;->D(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ldja;->q()Ldja$a;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0, v0, p1}, Ldja$a;->e(Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final j(I)I
    .locals 0

    iget-object p0, p0, Ldja;->b:Lbja;

    invoke-virtual {p0, p1}, Lbja;->h(I)I

    move-result p0

    return p0
.end method

.method public final k(I)I
    .locals 0

    iget-object p0, p0, Ldja;->b:Lbja;

    invoke-virtual {p0, p1}, Lbja;->i(I)I

    move-result p0

    return p0
.end method

.method public final l()V
    .locals 1

    invoke-virtual {p0}, Ldja;->C()V

    iget-object v0, p0, Ldja;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->clear()V

    iget-object v0, p0, Ldja;->d:Lzia;

    invoke-virtual {v0}, Lzia;->k()V

    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0}, Lbja;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldja;->j:Landroid/content/Context;

    iput-object v0, p0, Ldja;->c:Ldja$a;

    return-void
.end method

.method public m(I)Lrka;
    .locals 4

    iget-object v0, p0, Ldja;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrka;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lrka;->f()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePrefetchedAd release "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TiktokFeedAdController"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lrka;->g()V

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->AD_EXPIRED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-virtual {p0, p1, v0}, Ldja;->n(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Lrka;->h(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lrka;->i(Z)V

    return-object v0
.end method

.method public n(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 2

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldja;->c:Ldja$a;

    if-eqz v0, :cond_0

    new-instance v1, Ldja$f;

    invoke-direct {v1, p0, p1, p2}, Ldja$f;-><init>(Ldja;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    invoke-interface {v0, v1}, Ldja$a;->a(Lc74;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Ldja;->h(Ldja;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Z

    :goto_0
    return-void
.end method

.method public o(ILrka;)Z
    .locals 4

    const-string v0, "prefetched"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0, p1}, Lbja;->t(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TiktokFeedAdController"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stashPrefetchedAdOnViewDestroy isNotCommittedAdPosition release "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lrka;->g()V

    return v1

    :cond_0
    invoke-virtual {p2}, Lrka;->f()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stashPrefetchedAdOnViewDestroy release "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lrka;->g()V

    sget-object p2, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->AD_EXPIRED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-virtual {p0, p1, p2}, Ldja;->n(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return v1

    :cond_1
    invoke-virtual {p2, p1}, Lrka;->h(I)V

    invoke-virtual {p2, v1}, Lrka;->i(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Ldja;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lrka;->c()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stashPrefetchedAd pos="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " milestone="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public p(I)V
    .locals 2

    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0, p1}, Lbja;->t(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldja;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0, p1}, Lbja;->u(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Ldja;->b:Lbja;

    invoke-virtual {v1, v0}, Lbja;->x(I)V

    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0}, Lbja;->w()V

    invoke-virtual {p0, p1}, Ldja;->G(I)V

    iget-object p1, p0, Ldja;->b:Lbja;

    invoke-virtual {p1}, Lbja;->E()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->DAILY_CAP_REACHED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-virtual {p0, p1}, Ldja;->i(Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    :cond_2
    return-void
.end method

.method public final q()Ldja$a;
    .locals 0

    iget-object p0, p0, Ldja;->c:Ldja$a;

    return-object p0
.end method

.method public final r()Lbja;
    .locals 0

    iget-object p0, p0, Ldja;->b:Lbja;

    return-object p0
.end method

.method public final s(I)Z
    .locals 0

    iget-object p0, p0, Ldja;->b:Lbja;

    invoke-virtual {p0, p1}, Lbja;->r(I)Z

    move-result p0

    return p0
.end method

.method public final t(I)Z
    .locals 3

    iget-object v0, p0, Ldja;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrka;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lrka;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasReadyBoundAd release "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TiktokFeedAdController"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ldja;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrka;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lrka;->g()V

    :cond_2
    return v1
.end method

.method public final u(I)Z
    .locals 0

    iget-object p0, p0, Ldja;->b:Lbja;

    invoke-virtual {p0, p1}, Lbja;->t(I)Z

    move-result p0

    return p0
.end method

.method public final v(Landroid/content/Context;III)Z
    .locals 7

    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0}, Lbja;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    :goto_0
    iget-object v2, p0, Ldja;->b:Lbja;

    invoke-virtual {v2}, Lbja;->z()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Ldja;->b:Lbja;

    invoke-virtual {v3, v0, v2}, Lbja;->s(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Ldja;->b:Lbja;

    invoke-virtual {v3, v2}, Lbja;->o(I)I

    move-result v3

    iget-object v4, p0, Ldja;->d:Lzia;

    invoke-virtual {v4, v2}, Lzia;->g(I)V

    iget-object v4, p0, Ldja;->b:Lbja;

    invoke-virtual {v4, v3}, Lbja;->t(I)Z

    move-result v4

    const-string v5, "TiktokFeedAdController"

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "maybeAbandonPassedMilestones revoke committed pos="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " milestone="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ldja;->c:Ldja$a;

    if-eqz p1, :cond_1

    new-instance p2, Ldja$d;

    invoke-direct {p2, p0, v3}, Ldja$d;-><init>(Ldja;I)V

    invoke-interface {p1, p2}, Ldja$a;->a(Lc74;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ldja;->r()Lbja;

    move-result-object p1

    invoke-virtual {p1, v3}, Lbja;->t(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->MILESTONE_PASSED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-static {p0, v3, p1}, Ldja;->h(Ldja;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Z

    :cond_2
    :goto_1
    return v6

    :cond_3
    iget-object v3, p0, Ldja;->b:Lbja;

    invoke-virtual {v3, v2}, Lbja;->y(I)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeAbandonPassedMilestones skip uncommitted milestone="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, p2, p3, p4}, Ldja;->H(Landroid/content/Context;III)V

    :cond_5
    return v1
.end method

.method public final w(Landroid/content/Context;III)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0}, Lbja;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ldja;->v(Landroid/content/Context;III)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0}, Lbja;->z()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, v4, -0x1

    const-string v3, " milestone="

    const-string v5, "TiktokFeedAdController"

    if-ge v1, v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "maybeInsertIfNear skip: not near enough effective="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Ldja;->b:Lbja;

    invoke-virtual {v2, v4}, Lbja;->o(I)I

    move-result v2

    iget-object v6, p0, Ldja;->b:Lbja;

    invoke-virtual {v6, v2}, Lbja;->t(I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "maybeInsertIfNear skip: already committed global="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0, v4}, Ldja;->E(I)Lrka;

    move-result-object v6

    const-string v7, ", retry prefetch"

    if-nez v6, :cond_4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maybeInsertIfNear skip: no pending milestone="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ldja;->d:Lzia;

    invoke-virtual {p0, p1, p2, p3}, Lzia;->i(Landroid/content/Context;II)V

    return-void

    :cond_4
    invoke-virtual {v6}, Lrka;->f()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v6}, Lrka;->g()V

    iget-object p4, p0, Ldja;->d:Lzia;

    invoke-virtual {p4, v6}, Lzia;->h(Lrka;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maybeInsertIfNear skip: pending invalid milestone="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ldja;->d:Lzia;

    invoke-virtual {p0, p1, p2, p3}, Lzia;->i(Landroid/content/Context;II)V

    return-void

    :cond_5
    iget-object v7, p0, Ldja;->b:Lbja;

    invoke-virtual {v7, v2, p3, p4}, Lbja;->d(III)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "maybeInsertIfNear skip: canInsertAt=false global="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " videoCount="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " itemCount="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " effective="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v1, p0, Ldja;->b:Lbja;

    invoke-virtual {v1, p2}, Lbja;->p(I)I

    move-result v1

    if-ge v2, v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maybeInsertIfNear late insert: planned="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lrka;->g()V

    iget-object v0, p0, Ldja;->d:Lzia;

    invoke-virtual {v0, v6}, Lzia;->h(Lrka;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ldja;->c(Landroid/content/Context;IIII)V

    return-void

    :cond_7
    iget-object p1, p0, Ldja;->c:Ldja$a;

    if-eqz p1, :cond_8

    new-instance p2, Ldja$e;

    invoke-direct {p2, p0, v2, v6, v4}, Ldja$e;-><init>(Ldja;ILrka;I)V

    invoke-interface {p1, p2}, Ldja$a;->a(Lc74;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Ldja;->r()Lbja;

    move-result-object p1

    invoke-virtual {p1}, Lbja;->E()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ldja;->r()Lbja;

    move-result-object p1

    invoke-virtual {p1, v2}, Lbja;->t(I)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Ldja;->r()Lbja;

    move-result-object p1

    invoke-static {p0}, Ldja;->f(Ldja;)I

    move-result p2

    invoke-virtual {p0}, Ldja;->r()Lbja;

    move-result-object p3

    invoke-static {p0}, Ldja;->f(Ldja;)I

    move-result p4

    invoke-virtual {p3, p4}, Lbja;->h(I)I

    move-result p3

    invoke-virtual {p1, v2, p2, p3}, Lbja;->d(III)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v6}, Lrka;->f()Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "maybeInsertIfNear isNotValid release "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lrka;->g()V

    invoke-static {p0}, Ldja;->g(Ldja;)Lzia;

    move-result-object p0

    invoke-virtual {p0, v6}, Lzia;->h(Lrka;)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Ldja;->r()Lbja;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lbja;->f(ILjava/lang/Integer;)Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "maybeInsertIfNear release "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lrka;->g()V

    goto :goto_0

    :cond_a
    invoke-virtual {v6, v2}, Lrka;->h(I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ldja;->d(Ldja;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-interface {p2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ldja;->g(Ldja;)Lzia;

    move-result-object p1

    invoke-virtual {p1, v6}, Lzia;->h(Lrka;)V

    invoke-virtual {p0}, Ldja;->q()Ldja$a;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, v2}, Ldja$a;->q(I)V

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "maybeInsertIfNear insert global="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_0
    return-void
.end method

.method public final x(I)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Ldja;->b:Lbja;

    invoke-virtual {p0, p1}, Lbja;->u(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final y(I)Z
    .locals 4

    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0, p1}, Lbja;->t(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Ldja;->t(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Ldja;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "TiktokFeedAdController"

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAdPageSelected: displayed ad, keep slot for rebind pos="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0, p1}, Lbja;->u(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ldja;->J(II)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdPageSelected: no ready ad, remove on arrival pos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->LOAD_FAILED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-virtual {p0, p1, v0}, Ldja;->n(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return v1
.end method

.method public final z(Landroid/content/Context;II)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldja;->j:Landroid/content/Context;

    iput p2, p0, Ldja;->g:I

    iput p3, p0, Ldja;->h:I

    if-lez p2, :cond_0

    iget-object v0, p0, Ldja;->b:Lbja;

    invoke-virtual {v0}, Lbja;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ldja;->i:I

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lwn8;->k(III)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Ldja;->A(Landroid/content/Context;III)V

    :cond_0
    return-void
.end method
