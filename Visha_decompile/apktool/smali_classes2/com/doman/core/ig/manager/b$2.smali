.class final Lcom/doman/core/ig/manager/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/net/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/net/p$b<",
        "Ljava/util/List<",
        "Lcom/doman/core/a/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/manager/b;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/b$2;->a:Lcom/doman/core/ig/manager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/doman/core/ig/manager/b$2;->a:Lcom/doman/core/ig/manager/b;

    invoke-static {p0, p1}, Lcom/doman/core/ig/manager/b;->a(Lcom/doman/core/ig/manager/b;Ljava/util/List;)V

    return-void
.end method
