.class Lcom/transsion/http/impl/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/transsion/http/impl/o;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/o;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/http/impl/m;->b:Lcom/transsion/http/impl/o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/http/impl/m;->a:Ljava/lang/String;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/http/impl/m;->b:Lcom/transsion/http/impl/o;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/http/impl/o;->d:Lcom/transsion/http/impl/StringCallback;

    .line 4
    .line 5
    iget v2, v0, Lcom/transsion/http/impl/o;->b:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/http/impl/m;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/transsion/http/impl/o;->c:Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/http/impl/StringCallback;->x(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
