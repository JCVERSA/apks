.class public Lcpd;
.super Lw2d;
.source "SourceFile"


# instance fields
.field public final a:Lmod;


# direct methods
.method public constructor <init>(Lmod;)V
    .locals 0

    invoke-direct {p0}, Lw2d;-><init>()V

    iput-object p1, p0, Lcpd;->a:Lmod;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .line 4
    iget-object p0, p0, Lcpd;->a:Lmod;

    instance-of v0, p0, Lrfd;

    if-eqz v0, :cond_0

    check-cast p0, Lrfd;

    invoke-interface {p0}, Lrfd;->a()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v0

    invoke-virtual {v0}, Lkhd;->t()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcpd;->a:Lmod;

    invoke-interface {v0, p1}, Lmod;->a(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object p0

    invoke-virtual {p0}, Lkhd;->t()Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    return-void
.end method
