.class public final synthetic Llzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llzb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-boolean p2, p0, Llzb;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Llzb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean p0, p0, Llzb;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->j0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    return-void
.end method
