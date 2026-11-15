.class Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->hideTipsUI()V

    return-void
.end method
