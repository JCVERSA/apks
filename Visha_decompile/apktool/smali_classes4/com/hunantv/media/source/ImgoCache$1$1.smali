.class Lcom/hunantv/media/source/ImgoCache$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/source/ImgoCache$1;->onResult(ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hunantv/media/source/ImgoCache$1;

.field final synthetic val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

.field final synthetic val$result:I


# direct methods
.method public constructor <init>(Lcom/hunantv/media/source/ImgoCache$1;ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoCache$1$1;->this$1:Lcom/hunantv/media/source/ImgoCache$1;

    iput p2, p0, Lcom/hunantv/media/source/ImgoCache$1$1;->val$result:I

    iput-object p3, p0, Lcom/hunantv/media/source/ImgoCache$1$1;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache$1$1;->this$1:Lcom/hunantv/media/source/ImgoCache$1;

    iget-object v0, v0, Lcom/hunantv/media/source/ImgoCache$1;->this$0:Lcom/hunantv/media/source/ImgoCache;

    iget v1, p0, Lcom/hunantv/media/source/ImgoCache$1$1;->val$result:I

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoCache$1$1;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

    invoke-static {v0, v1, p0}, Lcom/hunantv/media/source/ImgoCache;->access$100(Lcom/hunantv/media/source/ImgoCache;ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V

    return-void
.end method
