.class Ltt/c$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltt/c;->J(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lst/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lst/a;

.field final synthetic b:Ltt/c;


# direct methods
.method constructor <init>(Ltt/c;Lst/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltt/c$b;->b:Ltt/c;

    .line 2
    .line 3
    iput-object p2, p0, Ltt/c$b;->a:Lst/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltt/c$b;->a:Lst/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
