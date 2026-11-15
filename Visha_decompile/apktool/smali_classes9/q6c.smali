.class public final synthetic Lq6c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq6c;->b:Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lq6c;->b:Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoRetreatForwardLayout;->hideRetreatOrForwardTip()V

    return-void
.end method
