.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/google/firebase/FirebaseCommonKtxRegistrar;",
        "Lcom/google/firebase/components/ComponentRegistrar;",
        "<init>",
        "()V",
        "",
        "Lzb1;",
        "getComponents",
        "()Ljava/util/List;",
        "com.google.firebase-firebase-common"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzb1;",
            ">;"
        }
    .end annotation

    const-class p0, Ld50;

    const-class v0, Lkotlinx/coroutines/c;

    invoke-static {p0, v0}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v1

    invoke-static {v1}, Lzb1;->c(Lvk8;)Lzb1$b;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/Executor;

    invoke-static {p0, v2}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object p0

    invoke-static {p0}, Lk82;->j(Lvk8;)Lk82;

    move-result-object p0

    invoke-virtual {v1, p0}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object p0

    sget-object v1, Lcom/google/firebase/FirebaseCommonKtxRegistrar$a;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$a;

    invoke-virtual {p0, v1}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object p0

    invoke-virtual {p0}, Lzb1$b;->d()Lzb1;

    move-result-object p0

    const-string v1, "build(...)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v3, Lal5;

    invoke-static {v3, v0}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v4

    invoke-static {v4}, Lzb1;->c(Lvk8;)Lzb1$b;

    move-result-object v4

    invoke-static {v3, v2}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v3

    invoke-static {v3}, Lk82;->j(Lvk8;)Lk82;

    move-result-object v3

    invoke-virtual {v4, v3}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;

    invoke-virtual {v3, v4}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object v3

    invoke-virtual {v3}, Lzb1$b;->d()Lzb1;

    move-result-object v3

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Lrf0;

    invoke-static {v4, v0}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v5

    invoke-static {v5}, Lzb1;->c(Lvk8;)Lzb1$b;

    move-result-object v5

    invoke-static {v4, v2}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v4

    invoke-static {v4}, Lk82;->j(Lvk8;)Lk82;

    move-result-object v4

    invoke-virtual {v5, v4}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;

    invoke-virtual {v4, v5}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object v4

    invoke-virtual {v4}, Lzb1$b;->d()Lzb1;

    move-result-object v4

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, Lnfb;

    invoke-static {v5, v0}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v0

    invoke-static {v0}, Lzb1;->c(Lvk8;)Lzb1$b;

    move-result-object v0

    invoke-static {v5, v2}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v2

    invoke-static {v2}, Lk82;->j(Lvk8;)Lk82;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;

    invoke-virtual {v0, v2}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object v0

    invoke-virtual {v0}, Lzb1$b;->d()Lzb1;

    move-result-object v0

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p0, v3, v4, v0}, [Lzb1;

    move-result-object p0

    invoke-static {p0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
