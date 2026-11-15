.class Lcom/transsion/LongClickListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/LongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/LongClickListener;


# direct methods
.method public constructor <init>(Lcom/transsion/LongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/LongClickListener$2;->this$0:Lcom/transsion/LongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/LongClickListener$2;->this$0:Lcom/transsion/LongClickListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/LongClickListener;->mIsLongClick:Z

    invoke-virtual {v0}, Lcom/transsion/LongClickListener;->longClickCallback()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
