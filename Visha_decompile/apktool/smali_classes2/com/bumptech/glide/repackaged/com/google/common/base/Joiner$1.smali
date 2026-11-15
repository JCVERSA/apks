.class Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner$1;
.super Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;

.field final synthetic val$nullText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner$1;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;

    iput-object p3, p0, Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner$1;->val$nullText:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;-><init>(Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner$1;)V

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner$1;->val$nullText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner$1;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public useForNull(Ljava/lang/String;)Lcom/bumptech/glide/repackaged/com/google/common/base/Joiner;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "already specified useForNull"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
