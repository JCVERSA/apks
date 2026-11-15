.class public Ln$b;
.super Lgf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln;->l(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Switch;Landroid/content/Context;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Ljava/lang/Boolean;Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/widget/Switch;)V
    .locals 0

    iput-object p1, p0, Ln$b;->e:Landroid/widget/Switch;

    invoke-direct {p0}, Lgf7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Ln$b;->e:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method
