.class Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$4;->this$0:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$4;->this$0:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->C(Z)V

    return-void
.end method
