.class public final synthetic Lkfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic h:Lxh5;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;Lxh5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkfd;->b:I

    iput-object p2, p0, Lkfd;->c:Ljava/lang/String;

    iput p3, p0, Lkfd;->d:I

    iput-boolean p4, p0, Lkfd;->e:Z

    iput p5, p0, Lkfd;->f:I

    iput-object p6, p0, Lkfd;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p7, p0, Lkfd;->h:Lxh5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lkfd;->b:I

    iget-object v1, p0, Lkfd;->c:Ljava/lang/String;

    iget v2, p0, Lkfd;->d:I

    iget-boolean v3, p0, Lkfd;->e:Z

    iget v4, p0, Lkfd;->f:I

    iget-object v5, p0, Lkfd;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lkfd;->h:Lxh5;

    invoke-static/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/g0;->c(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;Lxh5;)V

    return-void
.end method
