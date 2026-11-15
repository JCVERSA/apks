.class final Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;
.super Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionActivityImpl"
.end annotation


# static fields
.field public static b:I = -0x1

.field public static final c:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->c:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;-><init>()V

    return-void
.end method

.method public static synthetic access$700(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->b(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    return-void
.end method

.method public static start(I)V
    .locals 1

    new-instance v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$a;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$a;-><init>(I)V

    sget-object p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->c:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/UtilsTransActivity;->u(Lcom/blankj/utilcode/util/Utils$b;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->b()Lcom/blankj/utilcode/util/PermissionUtils$a;

    return-void

    :cond_0
    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils$a;

    :cond_1
    return-void
.end method

.method public final b(Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->d()Lcom/blankj/utilcode/util/PermissionUtils;

    new-instance v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;-><init>(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    const/4 p0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/PermissionUtils;->a(Lcom/blankj/utilcode/util/PermissionUtils;Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->d()Lcom/blankj/utilcode/util/PermissionUtils;

    invoke-static {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->e(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public dispatchTouchEvent(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Lcom/blankj/utilcode/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityResult(Lcom/blankj/utilcode/util/UtilsTransActivity;IILandroid/content/Intent;)V
    .locals 0
    .param p1    # Lcom/blankj/utilcode/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreated(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/blankj/utilcode/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p2, 0x40010

    invoke-virtual {p0, p2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string p2, "TYPE"

    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 p2, 0x1

    const-string v0, "PermissionUtils"

    if-ne p0, p2, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->d()Lcom/blankj/utilcode/util/PermissionUtils;

    const-string p0, "sInstance is null."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    sput p2, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->b:I

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/PermissionUtils;->f(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p0, p2, :cond_2

    sput p2, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->b:I

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/PermissionUtils;->g(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string/jumbo p0, "type is wrong."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDestroy(Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .locals 2
    .param p1    # Lcom/blankj/utilcode/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->a(I)V

    sput v1, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->b:I

    :cond_0
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onDestroy(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    return-void
.end method

.method public onRequestPermissionsResult(Lcom/blankj/utilcode/util/UtilsTransActivity;I[Ljava/lang/String;[I)V
    .locals 0
    .param p1    # Lcom/blankj/utilcode/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->d()Lcom/blankj/utilcode/util/PermissionUtils;

    return-void
.end method
