.class public final Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u0000 \u00172\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R$\u0010\u0016\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "helper",
        "item",
        "Lzfb;",
        "b",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;)V",
        "",
        "resolution",
        "c",
        "(Ljava/lang/String;)V",
        "o",
        "Ljava/lang/String;",
        "getMResolution",
        "()Ljava/lang/String;",
        "setMResolution",
        "mResolution",
        "p",
        "a",
        "video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final p:Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter$a;


# instance fields
.field public o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;->p:Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/magicvideo/R$layout;->template_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;->o:Ljava/lang/String;

    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$attr;->os_platform_basic_color:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->getResolution()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_template_id:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->getResolution()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;->o:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    sget p2, Lcom/transsion/magicvideo/R$id;->cb_template:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.RadioButton"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;->o:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;)V

    return-void
.end method
