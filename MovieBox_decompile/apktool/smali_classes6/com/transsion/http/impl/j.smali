.class Lcom/transsion/http/impl/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/transsion/http/impl/l;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/l;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/http/impl/j;->b:Lcom/transsion/http/impl/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/http/impl/j;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/http/impl/j;->b:Lcom/transsion/http/impl/l;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/http/impl/l;->c:Lcom/transsion/http/impl/StringCallback;

    .line 4
    .line 5
    iget v0, v0, Lcom/transsion/http/impl/l;->b:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/http/impl/j;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/transsion/http/impl/StringCallback;->y(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
