.class public final Ldja$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldja;->i(Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ldja;

.field public final synthetic c:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;


# direct methods
.method public constructor <init>(Ldja;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 0

    iput-object p1, p0, Ldja$c;->b:Ldja;

    iput-object p2, p0, Ldja$c;->c:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Ldja$c;->b:Ldja;

    invoke-virtual {v0}, Ldja;->r()Lbja;

    move-result-object v0

    invoke-virtual {v0}, Lbja;->g()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Li81;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

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

    iget-object v3, p0, Ldja$c;->b:Ldja;

    invoke-static {v3}, Ldja;->d(Ldja;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrka;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lrka;->g()V

    :cond_0
    iget-object v3, p0, Ldja$c;->b:Ldja;

    invoke-static {v3}, Ldja;->e(Ldja;)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Ldja$c;->b:Ldja;

    invoke-virtual {v3}, Ldja;->r()Lbja;

    move-result-object v3

    invoke-virtual {v3, v2}, Lbja;->D(I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldja$c;->b:Ldja;

    invoke-virtual {v1}, Ldja;->q()Ldja$a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Ldja$c;->c:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-interface {v1, v0, p0}, Ldja$a;->e(Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ldja$c;->a()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
