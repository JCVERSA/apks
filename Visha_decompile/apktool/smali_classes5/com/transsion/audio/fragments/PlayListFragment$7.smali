.class Lcom/transsion/audio/fragments/PlayListFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/PlayListFragment;->didReceivedNotification(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$7;->this$0:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$7;->this$0:Lcom/transsion/audio/fragments/PlayListFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/audio/fragments/PlayListFragment;->d3(Lcom/transsion/audio/fragments/PlayListFragment;Z)V

    return-void
.end method
