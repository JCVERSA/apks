.class public final synthetic Ll8c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8c;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iput-boolean p2, p0, Ll8c;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ll8c;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget-boolean p0, p0, Ll8c;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Z)V

    return-void
.end method
