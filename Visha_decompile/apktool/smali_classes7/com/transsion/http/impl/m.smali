.class Lcom/transsion/http/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/transsion/http/impl/o;


# direct methods
.method public constructor <init>(Lcom/transsion/http/impl/o;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/m;->b:Lcom/transsion/http/impl/o;

    iput-object p2, p0, Lcom/transsion/http/impl/m;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/http/impl/m;->b:Lcom/transsion/http/impl/o;

    iget-object v1, v0, Lcom/transsion/http/impl/o;->d:Lcom/transsion/http/impl/StringCallback;

    iget v2, v0, Lcom/transsion/http/impl/o;->b:I

    iget-object p0, p0, Lcom/transsion/http/impl/m;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/http/impl/o;->c:Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p0, v0}, Lcom/transsion/http/impl/StringCallback;->D(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
