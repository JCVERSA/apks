.class public Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$a;->b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$a;->b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-static {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->l(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Lcom/transsion/magicvideo/subtitle/widgets/SubtitleTextScrollView;

    move-result-object p0

    const/16 p1, 0x82

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
