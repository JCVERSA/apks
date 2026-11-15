.class Lcom/hunantv/media/source/ImgoMultiCache$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/source/ImgoMultiCache$1;->onError(Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hunantv/media/source/ImgoMultiCache$1;

.field final synthetic val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/source/ImgoMultiCache$1;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoMultiCache$1$3;->this$1:Lcom/hunantv/media/source/ImgoMultiCache$1;

    iput-object p2, p0, Lcom/hunantv/media/source/ImgoMultiCache$1$3;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoMultiCache$1$3;->this$1:Lcom/hunantv/media/source/ImgoMultiCache$1;

    iget-object v0, v0, Lcom/hunantv/media/source/ImgoMultiCache$1;->this$0:Lcom/hunantv/media/source/ImgoMultiCache;

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoMultiCache$1$3;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;

    invoke-static {v0, p0}, Lcom/hunantv/media/source/ImgoMultiCache;->access$200(Lcom/hunantv/media/source/ImgoMultiCache;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V

    return-void
.end method
