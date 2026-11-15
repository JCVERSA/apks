.class public final synthetic Ltsb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltsb;->b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iput-boolean p2, p0, Ltsb;->c:Z

    iput p3, p0, Ltsb;->d:I

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    iget-object v0, p0, Ltsb;->b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-boolean v1, p0, Ltsb;->c:Z

    iget p0, p0, Ltsb;->d:I

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;ZIJ)V

    return-void
.end method
