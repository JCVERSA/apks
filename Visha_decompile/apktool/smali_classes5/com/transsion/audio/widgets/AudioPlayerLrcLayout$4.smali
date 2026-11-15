.class Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->showSearchRemoteLrcDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

.field final synthetic val$artistEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field final synthetic val$titleEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->val$titleEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p3, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->val$artistEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->val$titleEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "vd_audio_lyrics_search_check"

    const-string v0, "songname"

    invoke-static {p2, v0, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->u(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc07;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->A(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateLoadingView()V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    iget-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->val$titleEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->val$artistEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->searchRemoteLyrics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/audio/R$string;->no_network:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    iget-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->val$titleEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;->val$artistEt:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->E(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
