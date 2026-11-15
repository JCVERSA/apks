.class public final synthetic Ldb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iput-object p2, p0, Ldb4;->c:Ljava/lang/String;

    iput-object p3, p0, Ldb4;->d:Ljava/lang/String;

    iput-object p4, p0, Ldb4;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ldb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iget-object v1, p0, Ldb4;->c:Ljava/lang/String;

    iget-object v2, p0, Ldb4;->d:Ljava/lang/String;

    iget-object p0, p0, Ldb4;->e:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->e(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
