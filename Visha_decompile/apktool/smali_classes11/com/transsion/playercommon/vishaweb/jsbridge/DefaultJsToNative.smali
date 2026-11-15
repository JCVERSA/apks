.class public Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "visha_DefaultJsToNative"


# instance fields
.field private mVishaWebActivityWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->lambda$showUploadConfirmDialog$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->lambda$showUploadConfirmDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->mVishaWebActivityWR:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static calculateTotalFileSize(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x40000000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_3

    long-to-double v0, v0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%.2fGB"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/32 v2, 0x100000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_4

    long-to-double v0, v0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%.2fMB"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%.2fKB"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "0KB"

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->showUploadConfirmDialog(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showUploadConfirmDialog$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lvdb;->n(Lec9;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showUploadConfirmDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private showUploadConfirmDialog(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$layout;->dialog_upload_confirm:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$id;->info:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/playercommon/R$string;->visha_upload_log_not_wifi_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/transsion/playercommon/R$id;->tip:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/playercommon/R$string;->visha_upload_log_size:I

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->video_preview_continue:I

    new-instance p2, La22;

    invoke-direct {p2, p3}, La22;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance p2, Lb22;

    invoke-direct {p2}, Lb22;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showUploadConfirmDialog error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_DefaultJsToNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVishaWebActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->mVishaWebActivityWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public jsToNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Lg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;

    invoke-static {p1, p2}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;

    const-string p2, "visha_DefaultJsToNative"

    if-nez p1, :cond_0

    const-string p0, "Default JsToNative,js param is null "

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default JsToNative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getType()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    const/16 v0, 0xd

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->onUbtUpload(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->onMarkPoint(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V

    :goto_0
    iget-object p2, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->mVishaWebActivityWR:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->mVishaWebActivityWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getType()I

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->D0(ILjava/util/Map;)V

    :cond_3
    return-void
.end method

.method public onMarkPoint(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p0

    const-string v0, "event"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "post"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lhb0;->markTrackMap(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onUbtUpload(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V
    .locals 2

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p1

    const-string v1, "isUploadLog"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    sget-boolean p1, Lvdb;->d:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->mVishaWebActivityWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lc07;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;

    invoke-direct {p1, p0, v0}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;-><init>(Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->f(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-static {p0, v0}, Lvdb;->n(Lec9;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_0
    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUbtUpload"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_DefaultJsToNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public setVishaWebActivityWR(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative;->mVishaWebActivityWR:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
