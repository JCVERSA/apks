.class public final synthetic Lrb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iput p2, p0, Lrb4;->c:I

    iput p3, p0, Lrb4;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lrb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iget v1, p0, Lrb4;->c:I

    iget p0, p0, Lrb4;->d:I

    invoke-static {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->i(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;II)V

    return-void
.end method
