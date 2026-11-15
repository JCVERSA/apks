.class public final Lbl3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lbl3$a;

.field public final b:Lbl3$c;

.field public final c:Lad8;


# direct methods
.method public constructor <init>(Lad8;Lbl3$a;Lbl3$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbl3$d;->c:Lad8;

    iput-object p2, p0, Lbl3$d;->a:Lbl3$a;

    iput-object p3, p0, Lbl3$d;->b:Lbl3$c;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbl3$d;->c:Lad8;

    invoke-interface {v0}, Lad8;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lbl3$d;->a:Lbl3$a;

    invoke-interface {p0}, Lbl3$a;->create()Ljava/lang/Object;

    move-result-object v0

    const/4 p0, 0x2

    const-string v1, "FactoryPools"

    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created new "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of p0, v0, Lbl3$b;

    if-eqz p0, :cond_1

    move-object p0, v0

    check-cast p0, Lbl3$b;

    invoke-interface {p0}, Lbl3$b;->getVerifier()Ldod;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ldod;->a(Z)V

    :cond_1
    return-object v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lbl3$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lbl3$b;

    invoke-interface {v0}, Lbl3$b;->getVerifier()Ldod;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldod;->a(Z)V

    :cond_0
    iget-object v0, p0, Lbl3$d;->b:Lbl3$c;

    invoke-interface {v0, p1}, Lbl3$c;->reset(Ljava/lang/Object;)V

    iget-object p0, p0, Lbl3$d;->c:Lad8;

    invoke-interface {p0, p1}, Lad8;->release(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
