.class public final synthetic Lqrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lsrg;

.field public final synthetic c:Lstg;


# direct methods
.method public synthetic constructor <init>(Lsrg;Lstg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqrg;->b:Lsrg;

    iput-object p2, p0, Lqrg;->c:Lstg;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqrg;->b:Lsrg;

    iget-object p0, p0, Lqrg;->c:Lstg;

    invoke-static {v0, p0}, Lsrg;->d(Lsrg;Lstg;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
