.class public Lxc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lxc;


# direct methods
.method public constructor <init>(Lxc;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lxc$a;->a:Lxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lxc;Lzc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lxc$a;-><init>(Lxc;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lxc$a;->a:Lxc;

    invoke-static {}, Lxc;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lxc;->f:J

    iget-object v0, p0, Lxc$a;->a:Lxc;

    iget-wide v1, v0, Lxc;->f:J

    invoke-virtual {v0, v1, v2}, Lxc;->g(J)V

    iget-object v0, p0, Lxc$a;->a:Lxc;

    iget-object v0, v0, Lxc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lxc$a;->a:Lxc;

    invoke-static {v0}, Lxc;->c(Lxc;)Lxc$d;

    move-result-object v0

    iget-object p0, p0, Lxc$a;->a:Lxc;

    invoke-static {p0}, Lxc;->b(Lxc;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Lxc$d;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
