.class public final Ldja$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldja;->w(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ldja;

.field public final synthetic c:I

.field public final synthetic d:Lrka;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Ldja;ILrka;I)V
    .locals 0

    iput-object p1, p0, Ldja$e;->b:Ldja;

    iput p2, p0, Ldja$e;->c:I

    iput-object p3, p0, Ldja$e;->d:Lrka;

    iput p4, p0, Ldja$e;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Ldja$e;->b:Ldja;

    invoke-virtual {v0}, Ldja;->r()Lbja;

    move-result-object v0

    invoke-virtual {v0}, Lbja;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldja$e;->b:Ldja;

    invoke-virtual {v0}, Ldja;->r()Lbja;

    move-result-object v0

    iget v1, p0, Ldja$e;->c:I

    invoke-virtual {v0, v1}, Lbja;->t(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldja$e;->b:Ldja;

    invoke-virtual {v0}, Ldja;->r()Lbja;

    move-result-object v0

    iget v1, p0, Ldja$e;->c:I

    iget-object v2, p0, Ldja$e;->b:Ldja;

    invoke-static {v2}, Ldja;->f(Ldja;)I

    move-result v2

    iget-object v3, p0, Ldja$e;->b:Ldja;

    invoke-virtual {v3}, Ldja;->r()Lbja;

    move-result-object v3

    iget-object v4, p0, Ldja$e;->b:Ldja;

    invoke-static {v4}, Ldja;->f(Ldja;)I

    move-result v4

    invoke-virtual {v3, v4}, Lbja;->h(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lbja;->d(III)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldja$e;->d:Lrka;

    invoke-virtual {v0}, Lrka;->f()Z

    move-result v0

    const-string v1, "TiktokFeedAdController"

    if-nez v0, :cond_0

    iget v0, p0, Ldja$e;->e:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeInsertIfNear isNotValid release "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldja$e;->d:Lrka;

    invoke-virtual {v0}, Lrka;->g()V

    iget-object v0, p0, Ldja$e;->b:Ldja;

    invoke-static {v0}, Ldja;->g(Ldja;)Lzia;

    move-result-object v0

    iget-object p0, p0, Ldja$e;->d:Lrka;

    invoke-virtual {v0, p0}, Lzia;->h(Lrka;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Ldja$e;->b:Ldja;

    invoke-virtual {v0}, Ldja;->r()Lbja;

    move-result-object v0

    iget v2, p0, Ldja$e;->c:I

    iget v3, p0, Ldja$e;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lbja;->f(ILjava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Ldja$e;->e:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeInsertIfNear release "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ldja$e;->d:Lrka;

    invoke-virtual {p0}, Lrka;->g()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldja$e;->d:Lrka;

    iget v2, p0, Ldja$e;->c:I

    invoke-virtual {v0, v2}, Lrka;->h(I)V

    iget v0, p0, Ldja$e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Ldja$e;->b:Ldja;

    invoke-static {v2}, Ldja;->d(Ldja;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Ldja$e;->d:Lrka;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ldja$e;->b:Ldja;

    invoke-static {v0}, Ldja;->g(Ldja;)Lzia;

    move-result-object v0

    iget-object v2, p0, Ldja$e;->d:Lrka;

    invoke-virtual {v0, v2}, Lzia;->h(Lrka;)V

    iget-object v0, p0, Ldja$e;->b:Ldja;

    invoke-virtual {v0}, Ldja;->q()Ldja$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, p0, Ldja$e;->c:I

    invoke-interface {v0, v2}, Ldja$a;->q(I)V

    :cond_2
    iget v0, p0, Ldja$e;->c:I

    iget p0, p0, Ldja$e;->e:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeInsertIfNear insert global="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " milestone="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ldja$e;->a()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
