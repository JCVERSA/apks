.class public final Lcom/transsion/cloud/share/ShareInfoDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lh27$b;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/share/ShareInfoDialogFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 F2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001GB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0005J/\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0016\u0010\u0012\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00110\u0010\"\u0004\u0018\u00010\u0011H\u0017\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J!\u0010\u0019\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u001cH\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008 \u0010\u0005J\u000f\u0010!\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0005J\u000f\u0010\"\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0005J\u000f\u0010$\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0005J\u000f\u0010&\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008(\u0010\u0005R\u0018\u0010+\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u00109\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00102R\u0018\u0010;\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u00102R\u0018\u0010=\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u00102R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010D\u00a8\u0006H"
    }
    d2 = {
        "Lcom/transsion/cloud/share/ShareInfoDialogFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "Lh27$b;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "<init>",
        "()V",
        "Lzfb;",
        "downloadFile",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "onStart",
        "",
        "eventId",
        "",
        "",
        "args",
        "didReceivedNotification",
        "(I[Ljava/lang/Object;)V",
        "onDestroy",
        "Landroid/content/DialogInterface;",
        "dialog",
        "which",
        "onClick",
        "(Landroid/content/DialogInterface;I)V",
        "K",
        "Lcom/transsion/widgetslib/dialog/d;",
        "F",
        "()Lcom/transsion/widgetslib/dialog/d;",
        "N",
        "L",
        "P",
        "Q",
        "M",
        "I",
        "",
        "E",
        "()Z",
        "J",
        "l",
        "Lcom/transsion/widgetslib/dialog/d;",
        "mDialog",
        "Landroid/widget/LinearLayout;",
        "m",
        "Landroid/widget/LinearLayout;",
        "llShareFrom",
        "Landroid/widget/TextView;",
        "n",
        "Landroid/widget/TextView;",
        "tvLoginHint",
        "Landroid/widget/ImageView;",
        "o",
        "Landroid/widget/ImageView;",
        "ivCover",
        "p",
        "tvFileName",
        "q",
        "tvFileSize",
        "r",
        "tvShareFrom",
        "Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;",
        "s",
        "Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;",
        "fileShareInfo",
        "Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;",
        "t",
        "Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;",
        "fileDownloadUrlInfo",
        "u",
        "a",
        "clouddrive_release"
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
.field public static final u:Lcom/transsion/cloud/share/ShareInfoDialogFragment$a;


# instance fields
.field public l:Lcom/transsion/widgetslib/dialog/d;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

.field public t:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud/share/ShareInfoDialogFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->u:Lcom/transsion/cloud/share/ShareInfoDialogFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic D(Lcom/transsion/cloud/share/ShareInfoDialogFragment;)Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    return-object p0
.end method

.method public static final G(Lcom/transsion/cloud/share/ShareInfoDialogFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->K()V

    return-void
.end method

.method public static final H(Lcom/transsion/cloud/share/ShareInfoDialogFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->K()V

    return-void
.end method

.method public static final O(Lcom/transsion/cloud/share/ShareInfoDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->J()V

    return-void
.end method

.method private final downloadFile()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->t:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadFile fileDownloadUrlInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareInfoDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->t:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/a;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/okdownload/a;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lba0;->b(I)V

    sget-object v2, Ldr9;->a:Ldr9$a;

    invoke-virtual {v2}, Ldr9$a;->a()I

    move-result v2

    iput v2, v0, Lcom/transsion/sniffer_load/okdownload/a;->g:I

    iget-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->t:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileCoverUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    :cond_2
    iput-object v2, v0, Lcom/transsion/sniffer_load/okdownload/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileSize()J

    move-result-wide v2

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    :goto_1
    iput-wide v2, v0, Lcom/transsion/sniffer_load/okdownload/a;->e:J

    iget-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, ""

    :cond_5
    iput-object v2, v0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->t:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->getContentHash()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, v0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    :cond_7
    iput-object v2, v0, Lcom/transsion/sniffer_load/okdownload/a;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFile fileDownloadTag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2, p0, v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->p(Landroid/content/Context;Lba0;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadFile error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    return-void
.end method

.method public static synthetic u(Lcom/transsion/cloud/share/ShareInfoDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->O(Lcom/transsion/cloud/share/ShareInfoDialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcom/transsion/cloud/share/ShareInfoDialogFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->G(Lcom/transsion/cloud/share/ShareInfoDialogFragment;)V

    return-void
.end method

.method public static synthetic w(Lcom/transsion/cloud/share/ShareInfoDialogFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->H(Lcom/transsion/cloud/share/ShareInfoDialogFragment;)V

    return-void
.end method


# virtual methods
.method public final E()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/netdisk/R$string;->visha_share_expired:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/transsion/utils/ToastUtils;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Share has expired for file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ShareInfoDialogFragment"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final F()Lcom/transsion/widgetslib/dialog/d;
    .locals 7

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/netdisk/R$string;->visha_save_to_my_cloud:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/netdisk/R$string;->cancel:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/netdisk/R$string;->visha_high_speed_download:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/netdisk/R$string;->login_now:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getPageHost()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    sget-object v4, Lcom/transsion/cloudcore/cloudapi/impl/a;->a:Lcom/transsion/cloudcore/cloudapi/impl/a;

    invoke-virtual {v4}, Lcom/transsion/cloudcore/cloudapi/impl/a;->i()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v4, v6, v5, v3}, Lg1a;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/transsion/netdisk/R$layout;->dialog_share_info:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/transsion/widgetslib/dialog/d$a;->c(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->l:Lcom/transsion/widgetslib/dialog/d;

    goto :goto_3

    :cond_3
    new-instance v2, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/transsion/netdisk/R$layout;->dialog_share_info:I

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/transsion/widgetslib/dialog/d$a;->c(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->l:Lcom/transsion/widgetslib/dialog/d;

    :goto_3
    iget-object p0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->l:Lcom/transsion/widgetslib/dialog/d;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final I()V
    .locals 3

    const-string v0, "ShareInfoDialogFragment"

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->g(Landroid/app/Activity;)V

    const-string p0, "navigateToLogin"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navigateToLogin error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final J()V
    .locals 28

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "navigateToVideoPlay not login"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShareInfoDialogFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-virtual {v1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a0(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)V

    :cond_2
    new-instance v1, Lcom/transsion/dbdata/beans/VideoCloudData;

    iget-object v2, v0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    const-string v3, ""

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, v2

    goto :goto_1

    :cond_4
    :goto_0
    move-object v6, v3

    :goto_1
    iget-object v2, v0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v7, v2

    goto :goto_3

    :cond_6
    :goto_2
    move-object v7, v3

    :goto_3
    iget-object v2, v0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileSize()J

    move-result-wide v4

    goto :goto_4

    :cond_7
    const-wide/16 v4, 0x0

    :goto_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v2, v0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileCoverUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v18, v2

    goto :goto_6

    :cond_9
    :goto_5
    move-object/from16 v18, v3

    :goto_6
    const v26, 0xfeff1

    const/16 v27, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v27}, Lcom/transsion/dbdata/beans/VideoCloudData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudData;->toPlayVideoData()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    iget-object v2, v0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->t:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    move-object v3, v2

    :cond_b
    :goto_7
    iput-object v3, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareDownloadUrl:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareSource:I

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public final K()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->t:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->u:Lcom/transsion/cloud/share/ShareInfoDialogFragment$a;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->t:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    invoke-virtual {v2, v1, p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$a;->a(Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;)Lcom/transsion/cloud/share/ShareInfoDialogFragment;

    move-result-object p0

    const-string v1, "ShareInfoDialog"

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recreateDialog error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShareInfoDialogFragment"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final L()V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x407

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x408

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public final M()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljz5;->c(Ljava/lang/String;J)V

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v2

    new-instance v5, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v0, v1}, Lcom/transsion/cloud/share/ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1;-><init>(Lcom/transsion/cloud/share/ShareInfoDialogFragment;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lwh1;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    :cond_0
    return-void
.end method

.method public final N()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->l:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    sget v2, Lcom/transsion/netdisk/R$id;->ll_share_from:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->m:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/netdisk/R$id;->tv_login_hint:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->n:Landroid/widget/TextView;

    sget v2, Lcom/transsion/netdisk/R$id;->tv_file_name:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->p:Landroid/widget/TextView;

    sget v2, Lcom/transsion/netdisk/R$id;->tv_file_size:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->q:Landroid/widget/TextView;

    sget v2, Lcom/transsion/netdisk/R$id;->tv_share_from:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->r:Landroid/widget/TextView;

    sget v2, Lcom/transsion/netdisk/R$id;->iv_video_cover:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->m:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->q:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    sget-object v2, Lxkb;->a:Lxkb;

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lxkb;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    sget v2, Lcom/transsion/netdisk/R$string;->visha_share_from:I

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareCreatorName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->o:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    new-instance v0, Lgg9;

    invoke-direct {v0, p0}, Lgg9;-><init>(Lcom/transsion/cloud/share/ShareInfoDialogFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public final P()V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x407

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x408

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public final Q()V
    .locals 3

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->n:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->n:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lwx0;->a:Lwx0$a;

    invoke-virtual {p2}, Lwx0$a;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x407

    if-eq p1, p2, :cond_2

    const/16 p2, 0x408

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lig9;

    invoke-direct {p2, p0}, Lig9;-><init>(Lcom/transsion/cloud/share/ShareInfoDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lhg9;

    invoke-direct {p2, p0}, Lhg9;-><init>(Lcom/transsion/cloud/share/ShareInfoDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->E()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->downloadFile()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->I()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->E()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->M()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "file_share_info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->s:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "file_download_url_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    :cond_1
    iput-object v0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->t:Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->l:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->L()V

    iget-object p0, p0, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->l:Lcom/transsion/widgetslib/dialog/d;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->P()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->N()V

    invoke-virtual {p0}, Lcom/transsion/cloud/share/ShareInfoDialogFragment;->Q()V

    return-void
.end method
