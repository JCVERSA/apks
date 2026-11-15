.class Lcom/avery/subtitle/SubtitleLoader$LocalTask$2;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/avery/subtitle/SubtitleLoader$LocalTask;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask$2;->this$0:Lcom/avery/subtitle/SubtitleLoader$LocalTask;

    iput-object p2, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask$2;->this$0:Lcom/avery/subtitle/SubtitleLoader$LocalTask;

    iget-object v0, v0, Lcom/avery/subtitle/SubtitleLoader$LocalTask;->mCallback:Lcom/avery/subtitle/SubtitleLoader$a;

    iget-object p0, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask$2;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, p0}, Lcom/avery/subtitle/SubtitleLoader$a;->a(Ljava/lang/Exception;)V

    return-void
.end method
