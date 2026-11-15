.class public final synthetic Li8c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8c;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iput p2, p0, Li8c;->c:I

    iput-boolean p3, p0, Li8c;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li8c;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget v1, p0, Li8c;->c:I

    iget-boolean p0, p0, Li8c;->d:Z

    invoke-static {v0, v1, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->n0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;IZ)V

    return-void
.end method
