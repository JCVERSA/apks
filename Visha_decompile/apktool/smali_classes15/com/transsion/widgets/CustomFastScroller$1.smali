.class Lcom/transsion/widgets/CustomFastScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/CustomFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/CustomFastScroller;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$1;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller$1;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomFastScroller;->hide(I)V

    return-void
.end method
