.class public Lm8$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm8$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lm8$a;


# direct methods
.method public constructor <init>(Lm8$a;)V
    .locals 0

    iput-object p1, p0, Lm8$a$a;->b:Lm8$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 0

    iget-object p0, p0, Lm8$a$a;->b:Lm8$a;

    iget-object p0, p0, Lm8$a;->c:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-virtual {p0, p1}, Lm8$a$a;->a(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    return-void
.end method
