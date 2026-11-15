.class public LOooO0OO/OooO0O0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/PalmID$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO0OO/OooO0O0;->c(Lcom/transsion/palmsdk/PalmID$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/palmsdk/PalmID$a;

.field public final synthetic b:LOooO0OO/OooO0O0;


# direct methods
.method public constructor <init>(LOooO0OO/OooO0O0;Lcom/transsion/palmsdk/PalmID$a;)V
    .locals 0

    iput-object p1, p0, LOooO0OO/OooO0O0$a;->b:LOooO0OO/OooO0O0;

    iput-object p2, p0, LOooO0OO/OooO0O0$a;->a:Lcom/transsion/palmsdk/PalmID$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, LOooO0OO/OooO0O0$a;->b:LOooO0OO/OooO0O0;

    iget-object v0, v0, LOooO0OO/OooO0O0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LOooO0OO/OooO0O0$a;->b:LOooO0OO/OooO0O0;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LOooO0OO/OooO0O0;->d(LOooO0OO/OooO0O0;Z)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, LOooO0OO/OooO0O0$a;->a:Lcom/transsion/palmsdk/PalmID$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, LOooO0OO/OooO0O0$a;->b:LOooO0OO/OooO0O0;

    iget-object v0, v0, LOooO0OO/OooO0O0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LOooO0OO/OooO0O0$a;->b:LOooO0OO/OooO0O0;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LOooO0OO/OooO0O0;->d(LOooO0OO/OooO0O0;Z)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, LOooO0OO/OooO0O0$a;->a:Lcom/transsion/palmsdk/PalmID$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/palmsdk/PalmID$a;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
