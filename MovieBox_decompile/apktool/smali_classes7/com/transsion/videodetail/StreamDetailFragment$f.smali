.class public final Lcom/transsion/videodetail/StreamDetailFragment$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lgw/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/StreamDetailFragment;->e2(Lcom/transsion/videofloat/bean/FloatActionType;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ldw/a;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->b:Lcom/transsion/videodetail/util/StreamFloatManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/videodetail/util/StreamFloatManager;->r(Ldw/a;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b(Ldw/a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->b:Lcom/transsion/videodetail/util/StreamFloatManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/videodetail/util/StreamFloatManager;->p()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/transsion/videodetail/util/StreamFloatManager;->t(Ldw/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c(Ldw/a;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lgw/a$a;->a(Lgw/a;Ldw/a;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->b:Lcom/transsion/videodetail/util/StreamFloatManager;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/transsion/videodetail/util/StreamFloatManager;->q(Ldw/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
