.class public final synthetic Lnb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lnb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->a(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V

    return-void
.end method
