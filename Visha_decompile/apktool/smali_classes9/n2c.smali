.class public final synthetic Ln2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2c;->b:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ln2c;->b:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->S(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;)V

    return-void
.end method
