.class Ltt/f$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltt/f;->H(Lcom/transsion/transfer/androidasync/p;Lst/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lst/a;

.field final synthetic b:Ltt/f;


# direct methods
.method constructor <init>(Ltt/f;Lst/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltt/f$a;->b:Ltt/f;

    .line 2
    .line 3
    iput-object p2, p0, Ltt/f$a;->a:Lst/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ltt/f$a;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltt/f$a;->b:Ltt/f;

    .line 2
    .line 3
    iput-object p2, v0, Ltt/f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p2, p0, Ltt/f$a;->a:Lst/a;

    .line 6
    .line 7
    invoke-interface {p2, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
