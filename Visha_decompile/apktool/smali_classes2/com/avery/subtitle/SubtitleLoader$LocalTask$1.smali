.class Lcom/avery/subtitle/SubtitleLoader$LocalTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avery/subtitle/SubtitleLoader$LocalTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avery/subtitle/SubtitleLoader$LocalTask;

.field final synthetic val$timedTextObject:Lzna;


# direct methods
.method public constructor <init>(Lcom/avery/subtitle/SubtitleLoader$LocalTask;Lzna;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask$1;->this$0:Lcom/avery/subtitle/SubtitleLoader$LocalTask;

    iput-object p2, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask$1;->val$timedTextObject:Lzna;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask$1;->this$0:Lcom/avery/subtitle/SubtitleLoader$LocalTask;

    iget-object v0, v0, Lcom/avery/subtitle/SubtitleLoader$LocalTask;->mCallback:Lcom/avery/subtitle/SubtitleLoader$a;

    iget-object p0, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask$1;->val$timedTextObject:Lzna;

    invoke-interface {v0, p0}, Lcom/avery/subtitle/SubtitleLoader$a;->b(Lzna;)V

    return-void
.end method
