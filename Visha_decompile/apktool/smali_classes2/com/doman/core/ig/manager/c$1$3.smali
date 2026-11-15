.class final Lcom/doman/core/ig/manager/c$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/net/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/ig/manager/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/net/p$b<",
        "Lcom/doman/core/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/manager/c$1;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/c$1;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/c$1$3;->a:Lcom/doman/core/ig/manager/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/doman/core/a/h;

    new-instance v0, Lcom/doman/core/ig/manager/c$1$3$1;

    invoke-direct {v0, p0, p1}, Lcom/doman/core/ig/manager/c$1$3$1;-><init>(Lcom/doman/core/ig/manager/c$1$3;Lcom/doman/core/a/h;)V

    invoke-static {v0}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;)V

    return-void
.end method
