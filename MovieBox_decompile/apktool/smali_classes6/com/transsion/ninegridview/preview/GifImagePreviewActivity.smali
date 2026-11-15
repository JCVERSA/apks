.class public final Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lum/a;",
        ">;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b9\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0006*\u0001g\u0018\u0000 j2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001kB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0005J#\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0011\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008!\u0010 J\u0019\u0010$\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010\"H\u0014\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\r\u0010+\u001a\u00020\u0006\u00a2\u0006\u0004\u0008+\u0010\u0005J/\u00102\u001a\u00020\u00062\u0006\u0010-\u001a\u00020,2\u000e\u0010/\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0.2\u0006\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020(H\u0016\u00a2\u0006\u0004\u00084\u0010*J\u000f\u00105\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00085\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00086\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00087\u0010\u0005J\u000f\u00108\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u00088\u0010\u0005J\u0017\u0010;\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010=\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008=\u0010<J%\u0010B\u001a\u00020,2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020,2\u0006\u0010A\u001a\u00020,\u00a2\u0006\u0004\u0008B\u0010CJ%\u0010E\u001a\u00020>2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020D2\u0006\u0010A\u001a\u00020D\u00a2\u0006\u0004\u0008E\u0010FJ%\u0010G\u001a\u00020,2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020,2\u0006\u0010A\u001a\u00020,\u00a2\u0006\u0004\u0008G\u0010CJ\u000f\u0010I\u001a\u00020HH\u0016\u00a2\u0006\u0004\u0008I\u0010JR\u0014\u0010K\u001a\u00020,8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0018\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u001e\u0010R\u001a\n\u0012\u0004\u0012\u00020Q\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0018\u0010T\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0016\u0010V\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010LR\u0016\u0010W\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010LR\u0016\u0010X\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010LR\u0016\u0010Y\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010LR\u0016\u0010Z\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010LR\u0018\u0010\\\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0018\u0010_\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010`R\u0014\u0010b\u001a\u00020a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0018\u0010d\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0018\u0010f\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010eR\u0014\u0010h\u001a\u00020g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010i\u00a8\u0006l"
    }
    d2 = {
        "Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lum/a;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "initView",
        "startEnterTheAnimation",
        "downloadImage",
        "showPageIndex",
        "Ljava/io/File;",
        "file",
        "",
        "url",
        "saveToAlbum",
        "(Ljava/io/File;Ljava/lang/String;)V",
        "getNameFromUrl",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "requestPermission",
        "showSettingDialog",
        "initPlayer",
        "Landroid/view/View;",
        "getItemView",
        "()Landroid/view/View;",
        "Landroid/widget/ImageView;",
        "imageView",
        "computeImageWidthAndHeight",
        "(Landroid/widget/ImageView;)V",
        "Landroid/animation/ValueAnimator;",
        "valueAnimator",
        "addIntoListener",
        "(Landroid/animation/ValueAnimator;)V",
        "addOutListener",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "getViewBinding",
        "()Lum/a;",
        "",
        "isTranslucent",
        "()Z",
        "finishActivityAnim",
        "",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "isAttach",
        "onBackPressed",
        "onResume",
        "onPause",
        "onDestroy",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "",
        "fraction",
        "startValue",
        "endValue",
        "evaluateInt",
        "(FII)I",
        "",
        "evaluateFloat",
        "(FLjava/lang/Number;Ljava/lang/Number;)F",
        "evaluateArgb",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "REQUEST_PERMISSION_STORAGE",
        "I",
        "Lcom/transsion/ninegridview/preview/c;",
        "imagePreviewAdapter",
        "Lcom/transsion/ninegridview/preview/c;",
        "",
        "Lcom/transsion/moviedetailapi/bean/Image;",
        "imageList",
        "Ljava/util/List;",
        "isBuiltInApp",
        "Ljava/lang/Boolean;",
        "currentItemIndex",
        "imageHeight",
        "imageWidth",
        "screenWidth",
        "screenHeight",
        "Lcom/transsion/player/orplayer/f;",
        "mPlayer",
        "Lcom/transsion/player/orplayer/f;",
        "Lcom/transsion/ninegridview/preview/r;",
        "mPageChange",
        "Lcom/transsion/ninegridview/preview/r;",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "pageFrom",
        "Ljava/lang/String;",
        "postId",
        "com/transsion/ninegridview/preview/GifImagePreviewActivity$g",
        "mOnPageChangeCallback",
        "Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;",
        "Companion",
        "a",
        "NineGridView_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final ANIMATE_DURATION:I = 0xc8

.field public static final CURRENT_ITEM:Ljava/lang/String; = "CURRENT_ITEM"

.field public static final Companion:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$a;

.field public static final IMAGE_LIST:Ljava/lang/String; = "image_list"

.field public static final IS_BUILTIN:Ljava/lang/String; = "IS_BUILTIN"

.field private static final PAGE_NAME:Ljava/lang/String; = "gif_image_preview"

.field public static final PICTURE_SAVE:Ljava/lang/String; = "oneroom"

.field public static final PLAY_GIF_AGAIN:I = 0x66

.field public static final POST_ID:Ljava/lang/String; = "POST_ID"

.field public static final REQUEST_PERMISSION_SETTING:I = 0x65


# instance fields
.field private final REQUEST_PERMISSION_STORAGE:I

.field private currentItemIndex:I

.field private final handler:Landroid/os/Handler;

.field private imageHeight:I

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private imagePreviewAdapter:Lcom/transsion/ninegridview/preview/c;

.field private imageWidth:I

.field private isBuiltInApp:Ljava/lang/Boolean;

.field private final mOnPageChangeCallback:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;

.field private mPageChange:Lcom/transsion/ninegridview/preview/r;

.field private mPlayer:Lcom/transsion/player/orplayer/f;

.field private pageFrom:Ljava/lang/String;

.field private postId:Ljava/lang/String;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->Companion:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    iput v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->REQUEST_PERMISSION_STORAGE:I

    .line 7
    .line 8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->isBuiltInApp:Ljava/lang/Boolean;

    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->handler:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mOnPageChangeCallback:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getImageList$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getItemView(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->getItemView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getMPageChange$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Lcom/transsion/ninegridview/preview/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPageChange:Lcom/transsion/ninegridview/preview/r;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$saveToAlbum(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->saveToAlbum(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setCurrentItemIndex$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$showPageIndex(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->showPageIndex()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final addIntoListener(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$b;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final addOutListener(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$c;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->initView$lambda$3(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final computeImageWidthAndHeight(Landroid/widget/ImageView;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    :cond_0
    iget v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->screenHeight:I

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    .line 28
    mul-float/2addr v0, v2

    .line 29
    int-to-float v1, v1

    .line 30
    div-float/2addr v0, v1

    .line 31
    iget v3, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->screenWidth:I

    .line 32
    .line 33
    int-to-float v3, v3

    .line 34
    mul-float/2addr v3, v2

    .line 35
    int-to-float p1, p1

    .line 36
    div-float/2addr v3, p1

    .line 37
    cmpl-float v2, v0, v3

    .line 38
    .line 39
    if-lez v2, :cond_1

    .line 40
    .line 41
    move v0, v3

    .line 42
    :cond_1
    mul-float/2addr v1, v0

    .line 43
    float-to-int v1, v1

    .line 44
    iput v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageHeight:I

    .line 45
    .line 46
    mul-float/2addr p1, v0

    .line 47
    float-to-int p1, p1

    .line 48
    iput p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageWidth:I

    .line 49
    .line 50
    return-void
.end method

.method private final downloadImage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    .line 12
    .line 13
    if-ltz v1, :cond_3

    .line 14
    .line 15
    if-ge v1, v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v0, v2

    .line 30
    :goto_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_2
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v2, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;

    .line 49
    .line 50
    invoke-direct {v2, p0, v0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Lcom/transsion/moviedetailapi/bean/Image;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method private final getItemView()Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lum/a;

    .line 6
    .line 7
    iget-object v0, v0, Lum/a;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->findViewByPosition(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0
.end method

.method private final getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "[?]"

    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v6, 0x6

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v2, p1

    .line 16
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/util/Collection;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, [Ljava/lang/String;

    .line 30
    .line 31
    array-length v2, p1

    .line 32
    const/4 v3, 0x1

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    move v2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v2, v1

    .line 38
    :goto_0
    if-nez v2, :cond_3

    .line 39
    .line 40
    aget-object v4, p1, v1

    .line 41
    .line 42
    const-string p1, "/"

    .line 43
    .line 44
    filled-new-array {p1}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const/4 v8, 0x6

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/util/Collection;

    .line 57
    .line 58
    new-array v2, v1, [Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, [Ljava/lang/String;

    .line 65
    .line 66
    array-length v2, p1

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    move v1, v3

    .line 70
    :cond_2
    if-nez v1, :cond_3

    .line 71
    .line 72
    array-length v0, p1

    .line 73
    sub-int/2addr v0, v3

    .line 74
    aget-object p1, p1, v0

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_3
    return-object v0
.end method

.method private final initPlayer()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/player/ui/ORPlayerView;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/player/config/RenderType;->TEXTURE_VIEW:Lcom/transsion/player/config/RenderType;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/transsion/player/ui/ORPlayerView;-><init>(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/transsion/player/orplayer/f$a;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/transsion/player/orplayer/f$a;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/transsion/player/orplayer/f$a;->a()Lcom/transsion/player/orplayer/f;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/transsion/player/ui/ORPlayerView;->getTextureView()Landroid/view/TextureView;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/f;->setTextureView(Landroid/view/TextureView;)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    .line 25
    .line 26
    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/f;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/transsion/ninegridview/preview/r;

    .line 30
    .line 31
    invoke-direct {v2, v1, v0}, Lcom/transsion/ninegridview/preview/r;-><init>(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPageChange:Lcom/transsion/ninegridview/preview/r;

    .line 35
    .line 36
    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$f;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$f;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/f;->setPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPlayer:Lcom/transsion/player/orplayer/f;

    .line 45
    .line 46
    return-void
.end method

.method private final initView()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->screenWidth:I

    .line 6
    .line 7
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->screenHeight:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "image_list"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v1, v0, Ljava/util/List;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    check-cast v0, Ljava/util/List;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "IS_BUILTIN"

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->isBuiltInApp:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "POST_ID"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->postId:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "CURRENT_ITEM"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    .line 82
    .line 83
    new-instance v0, Lcom/transsion/ninegridview/preview/c;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/transsion/ninegridview/preview/c;->h(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->isBuiltInApp:Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/transsion/ninegridview/preview/c;->g(Ljava/lang/Boolean;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imagePreviewAdapter:Lcom/transsion/ninegridview/preview/c;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lum/a;

    .line 105
    .line 106
    iget-object v0, v0, Lum/a;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imagePreviewAdapter:Lcom/transsion/ninegridview/preview/c;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mOnPageChangeCallback:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->startEnterTheAnimation()V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->showPageIndex()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lum/a;

    .line 134
    .line 135
    iget-object v0, v0, Lum/a;->b:Landroid/view/View;

    .line 136
    .line 137
    new-instance v1, Lcom/transsion/ninegridview/preview/a;

    .line 138
    .line 139
    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/a;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lqi/b;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_2

    .line 150
    .line 151
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_2

    .line 156
    .line 157
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->postId:Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v1, :cond_2

    .line 160
    .line 161
    const-string v2, "post_id"

    .line 162
    .line 163
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->initPlayer()V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method private static final initView$lambda$3(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1d

    .line 4
    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->downloadImage()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->downloadImage()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->requestPermission()V

    .line 32
    .line 33
    .line 34
    :goto_0
    const-string p1, "module_name"

    .line 35
    .line 36
    const-string v0, "save_picture"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->pageFrom:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "page_from"

    .line 45
    .line 46
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x2

    .line 51
    new-array v1, v1, [Lkotlin/Pair;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    aput-object p1, v1, v2

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    aput-object v0, v1, p1

    .line 58
    .line 59
    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->postId:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    const-string v0, "post_id"

    .line 68
    .line 69
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_2
    sget-object p0, Lqi/h;->a:Lqi/h;

    .line 73
    .line 74
    const-string v0, "gif_image_preview"

    .line 75
    .line 76
    invoke-virtual {p0, v0, p1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private final requestPermission()V
    .locals 2

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    .line 3
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->REQUEST_PERMISSION_STORAGE:I

    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final saveToAlbum(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0, p2}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "oneroom"

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 45
    .line 46
    sget p2, Lcom/transsion/ninegridview/R$string;->has_been_saved:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lfh/b$a;->d(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    if-eqz p1, :cond_1

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    sget-object v0, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    .line 57
    .line 58
    const/16 v6, 0x10

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    const-string v4, "oneroom"

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    move-object v1, p1

    .line 65
    move-object v2, p0

    .line 66
    invoke-static/range {v0 .. v7}, Lcom/transsion/ninegridview/helper/FileHelper;->g(Lcom/transsion/ninegridview/helper/FileHelper;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method private final showPageIndex()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lum/a;

    .line 7
    .line 8
    iget-object v1, v1, Lum/a;->e:Landroid/widget/TextView;

    .line 9
    .line 10
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 11
    .line 12
    iget v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    add-int/2addr v2, v3

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v4, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v4, 0x0

    .line 34
    :goto_0
    new-array v5, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    aput-object v2, v5, v6

    .line 38
    .line 39
    aput-object v4, v5, v3

    .line 40
    .line 41
    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "%d/%d"

    .line 46
    .line 47
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v2, "format(...)"

    .line 52
    .line 53
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private final showSettingDialog()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/ninegridview/R$string;->system_settings:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "\""

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget v3, Lcom/transsion/baseui/R$string;->base_app_name:I

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget v3, Lcom/transsion/ninegridview/R$string;->permission_deny_down_tip:I

    .line 64
    .line 65
    const/4 v4, 0x2

    .line 66
    new-array v4, v4, [Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    aput-object v1, v4, v5

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    aput-object v0, v4, v1

    .line 73
    .line 74
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "getString(...)"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v2, Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 84
    .line 85
    invoke-direct {v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    sget v3, Lcom/transsion/ninegridview/R$string;->cancel:I

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    sget v3, Lcom/transsion/ninegridview/R$string;->system_settings:I

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "settings"

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method private final startEnterTheAnimation()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, 0x1f4

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$h;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$h;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lum/a;

    .line 31
    .line 32
    iget-object v1, v1, Lum/a;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final evaluateArgb(FII)I
    .locals 6

    .line 1
    shr-int/lit8 v0, p2, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shr-int/lit8 v1, p2, 0x10

    .line 6
    .line 7
    and-int/lit16 v1, v1, 0xff

    .line 8
    .line 9
    shr-int/lit8 v2, p2, 0x8

    .line 10
    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 12
    .line 13
    and-int/lit16 p2, p2, 0xff

    .line 14
    .line 15
    shr-int/lit8 v3, p3, 0x18

    .line 16
    .line 17
    and-int/lit16 v3, v3, 0xff

    .line 18
    .line 19
    shr-int/lit8 v4, p3, 0x10

    .line 20
    .line 21
    and-int/lit16 v4, v4, 0xff

    .line 22
    .line 23
    shr-int/lit8 v5, p3, 0x8

    .line 24
    .line 25
    and-int/lit16 v5, v5, 0xff

    .line 26
    .line 27
    and-int/lit16 p3, p3, 0xff

    .line 28
    .line 29
    sub-int/2addr v3, v0

    .line 30
    int-to-float v3, v3

    .line 31
    mul-float/2addr v3, p1

    .line 32
    float-to-int v3, v3

    .line 33
    add-int/2addr v0, v3

    .line 34
    shl-int/lit8 v0, v0, 0x18

    .line 35
    .line 36
    sub-int/2addr v4, v1

    .line 37
    int-to-float v3, v4

    .line 38
    mul-float/2addr v3, p1

    .line 39
    float-to-int v3, v3

    .line 40
    add-int/2addr v1, v3

    .line 41
    shl-int/lit8 v1, v1, 0x10

    .line 42
    .line 43
    or-int/2addr v0, v1

    .line 44
    sub-int/2addr v5, v2

    .line 45
    int-to-float v1, v5

    .line 46
    mul-float/2addr v1, p1

    .line 47
    float-to-int v1, v1

    .line 48
    add-int/2addr v2, v1

    .line 49
    shl-int/lit8 v1, v2, 0x8

    .line 50
    .line 51
    or-int/2addr v0, v1

    .line 52
    sub-int/2addr p3, p2

    .line 53
    int-to-float p3, p3

    .line 54
    mul-float/2addr p1, p3

    .line 55
    float-to-int p1, p1

    .line 56
    add-int/2addr p2, p1

    .line 57
    or-int p1, v0, p2

    .line 58
    .line 59
    return p1
.end method

.method public final evaluateFloat(FLjava/lang/Number;Ljava/lang/Number;)F
    .locals 1

    .line 1
    const-string v0, "startValue"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "endValue"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    sub-float/2addr p3, p2

    .line 20
    mul-float/2addr p1, p3

    .line 21
    add-float/2addr p2, p1

    .line 22
    return p2
.end method

.method public final evaluateInt(FII)I
    .locals 1

    .line 1
    int-to-float v0, p2

    .line 2
    sub-int/2addr p3, p2

    .line 3
    int-to-float p2, p3

    .line 4
    mul-float/2addr p1, p2

    .line 5
    add-float/2addr v0, p1

    .line 6
    float-to-int p1, v0

    .line 7
    return p1
.end method

.method public final finishActivityAnim()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, 0x1f4

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$e;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$e;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lum/a;

    .line 31
    .line 32
    iget-object v1, v1, Lum/a;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->getViewBinding()Lum/a;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lum/a;
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lum/a;->c(Landroid/view/LayoutInflater;)Lum/a;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAttach()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "gif_image_preview"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->finishActivityAnim()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x1a

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 15
    .line 16
    invoke-virtual {p1}, Lqi/h;->h()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->pageFrom:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->initView()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lum/a;

    .line 9
    .line 10
    iget-object v0, v0, Lum/a;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mOnPageChangeCallback:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPlayer:Lcom/transsion/player/orplayer/f;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->release()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onLeftButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPlayer:Lcom/transsion/player/orplayer/f;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->REQUEST_PERMISSION_STORAGE:I

    .line 15
    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    array-length p1, p3

    .line 19
    const/4 p2, 0x1

    .line 20
    if-le p1, p2, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    aget p1, p3, p1

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    aget p1, p3, p2

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->downloadImage()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->showSettingDialog()V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPlayer:Lcom/transsion/player/orplayer/f;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onRightButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/transsion/ninegridview/helper/b;->a:Lcom/transsion/ninegridview/helper/b;

    .line 7
    .line 8
    const/16 v0, 0x65

    .line 9
    .line 10
    invoke-virtual {p1, p0, v0}, Lcom/transsion/ninegridview/helper/b;->a(Landroid/app/Activity;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
