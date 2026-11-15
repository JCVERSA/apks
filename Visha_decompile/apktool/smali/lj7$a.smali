.class public Llj7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrj7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llj7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/palmsdk/PalmID$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/palmsdk/PalmID$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Llj7;


# direct methods
.method public constructor <init>(Llj7;Lcom/transsion/palmsdk/PalmID$a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Llj7$a;->d:Llj7;

    iput-object p2, p0, Llj7$a;->a:Lcom/transsion/palmsdk/PalmID$a;

    iput-object p3, p0, Llj7$a;->b:Ljava/lang/String;

    iput-object p4, p0, Llj7$a;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    const v0, 0x9c77

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Llj7$a;->d:Llj7;

    iget-object p2, p0, Llj7$a;->b:Ljava/lang/String;

    iget-object v0, p0, Llj7$a;->c:Ljava/util/Map;

    iget-object p0, p0, Llj7$a;->a:Lcom/transsion/palmsdk/PalmID$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "PalmNetworkManager token invalid, trying to refresh..."

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object v1, p1, Llj7;->a:Landroid/content/Context;

    invoke-static {v1}, LOooO0OO/OooO0O0;->a(Landroid/content/Context;)LOooO0OO/OooO0O0;

    move-result-object v1

    new-instance v2, Ltj7;

    invoke-direct {v2, p1, p2, v0, p0}, Ltj7;-><init>(Llj7;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/palmsdk/PalmID$a;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v2, p0}, LOooO0OO/OooO0O0;->c(Lcom/transsion/palmsdk/PalmID$a;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Llj7$a;->a:Lcom/transsion/palmsdk/PalmID$a;

    invoke-interface {p0, p1, p2}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Llj7$a;->d:Llj7;

    invoke-static {v0, p1}, Llj7;->b(Llj7;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Llj7$a;->a:Lcom/transsion/palmsdk/PalmID$a;

    invoke-interface {p0, p1}, Lcom/transsion/palmsdk/PalmID$a;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Llj7$a;->a:Lcom/transsion/palmsdk/PalmID$a;

    const p1, 0x9ca8

    const-string v0, "Invalid response format"

    invoke-interface {p0, p1, v0}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
