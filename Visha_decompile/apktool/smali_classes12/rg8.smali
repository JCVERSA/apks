.class public Lrg8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrg8$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivateRoom_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lrg8;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrg8;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-direct {v0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;-><init>()V

    iput-object v0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    return-void
.end method

.method public synthetic constructor <init>(Lsg8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrg8;-><init>()V

    return-void
.end method

.method public static d()Lrg8;
    .locals 1

    invoke-static {}, Lrg8$a;->a()Lrg8;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;Ltv4;)V
    .locals 0

    iget-object p0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->e(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/util/List;Ltv4;)V
    .locals 0

    iget-object p0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->j(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public g(Luv4;)V
    .locals 1

    iget-object v0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {v0, p1}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->i(Luv4;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->k(Luv4;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/util/List;Ltv4;)V
    .locals 0

    iget-object p0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->m(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->n(Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->o(Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;Lsv4;)V
    .locals 0

    iget-object p0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->p(Ljava/lang/String;Lsv4;)V

    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Lsv4;)V
    .locals 0

    iget-object p0, p0, Lrg8;->a:Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->q(Ljava/lang/String;Ljava/lang/String;Lsv4;)V

    return-void
.end method
