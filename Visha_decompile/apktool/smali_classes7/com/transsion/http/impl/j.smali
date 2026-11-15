.class Lcom/transsion/http/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/transsion/http/impl/l;


# direct methods
.method public constructor <init>(Lcom/transsion/http/impl/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/j;->b:Lcom/transsion/http/impl/l;

    iput-object p2, p0, Lcom/transsion/http/impl/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/http/impl/j;->b:Lcom/transsion/http/impl/l;

    iget-object v1, v0, Lcom/transsion/http/impl/l;->c:Lcom/transsion/http/impl/StringCallback;

    iget v0, v0, Lcom/transsion/http/impl/l;->b:I

    iget-object p0, p0, Lcom/transsion/http/impl/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/transsion/http/impl/StringCallback;->E(ILjava/lang/String;)V

    return-void
.end method
