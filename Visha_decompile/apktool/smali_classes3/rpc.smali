.class public Lrpc;
.super Li5;
.source "SourceFile"


# static fields
.field public static final c:Lrpc;


# instance fields
.field public b:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrpc;

    invoke-direct {v0}, Lrpc;-><init>()V

    sput-object v0, Lrpc;->c:Lrpc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Li5;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lrpc;->b:Ljava/util/Stack;

    return-void
.end method

.method public static a()Lrpc;
    .locals 1

    sget-object v0, Lrpc;->c:Lrpc;

    return-object v0
.end method


# virtual methods
.method public b()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lrpc;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lrpc;->b:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lrpc;->b:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lrpc;->b:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
