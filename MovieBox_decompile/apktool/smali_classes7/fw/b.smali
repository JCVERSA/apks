.class public final synthetic Lfw/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lfw/a;


# direct methods
.method public synthetic constructor <init>(Lfw/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfw/b;->a:Lfw/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfw/b;->a:Lfw/a;

    .line 2
    .line 3
    invoke-static {v0}, Lfw/a$b;->a(Lfw/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
