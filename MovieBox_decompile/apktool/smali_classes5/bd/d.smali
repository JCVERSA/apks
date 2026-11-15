.class public final synthetic Lbd/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldd/f;

.field public final synthetic b:Ldd/e;


# direct methods
.method public synthetic constructor <init>(Ldd/f;Ldd/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbd/d;->a:Ldd/f;

    .line 5
    .line 6
    iput-object p2, p0, Lbd/d;->b:Ldd/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbd/d;->a:Ldd/f;

    .line 2
    .line 3
    iget-object v1, p0, Lbd/d;->b:Ldd/e;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lbd/e;->b(Ldd/f;Ldd/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
