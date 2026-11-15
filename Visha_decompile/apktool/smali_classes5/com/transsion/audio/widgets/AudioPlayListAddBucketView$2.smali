.class Lcom/transsion/audio/widgets/AudioPlayListAddBucketView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->showAddEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView$2;->this$0:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView$2;->this$0:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->j(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
