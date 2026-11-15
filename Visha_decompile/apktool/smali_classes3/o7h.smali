.class public final synthetic Lo7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lp7h;


# direct methods
.method public synthetic constructor <init>(Lp7h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7h;->b:Lp7h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo7h;->b:Lp7h;

    invoke-static {p0}, Lp7h;->a(Lp7h;)Lq7h;

    move-result-object p0

    return-object p0
.end method
