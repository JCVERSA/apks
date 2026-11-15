.class public final synthetic Lk2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;

    iput-boolean p2, p0, Lk2c;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lk2c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;

    iget-boolean p0, p0, Lk2c;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;Z)V

    return-void
.end method
