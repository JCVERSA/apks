.class public Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final samy:Ljava/util/regex/Pattern;


# instance fields
.field private BwzH:Ljava/lang/Integer;

.field private E:Landroid/net/Uri;

.field private Fco:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private HenB:Ljava/lang/String;

.field private J:Ljava/lang/Float;

.field private b:Ljava/lang/Float;

.field private h:Ljava/lang/String;

.field private jh:Ljava/lang/String;

.field private nkE:Ljava/lang/String;

.field private tG:Ljava/lang/Integer;

.field private v:Landroid/graphics/drawable/Drawable;

.field private xD:I

.field private xz:[I

.field private y:Ljava/lang/String;

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\s*((\\d+)?\\.?(\\d*)?)\\s*([a-zA-Z]+)?\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->samy:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->E:Landroid/net/Uri;

    return-void
.end method

.method public static CFhs()Z
    .locals 2

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string v1, ":p426ad92431036779116d2441"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static HG()I
    .locals 1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method private Jxdg(I)I
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1
.end method

.method private varargs ee([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getPackageName()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v4, v3, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->r(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "mipmap"

    invoke-virtual {v4, v3, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->r(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object p1
.end method

.method private gi(Ljava/lang/String;)[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    aget-object v5, p1, v4

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p1

    :goto_1
    if-ge p1, v1, :cond_2

    aget v4, v2, v3

    aput v4, v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-object v2

    :catchall_0
    :cond_3
    :goto_2
    return-object v0
.end method

.method private varargs i(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p2, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private varargs kg(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->Jxdg(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private mu(Landroid/widget/LinearLayout;)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->iBjB()[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lapp/fast/ssh/ProtectedFastSSH$ExportActivity$2$8;->Gbg:I

    const/4 v2, 0x1

    const/16 v3, 0x100

    invoke-static {v0, v1, v2, v3, v3}, Lapp/fast/ssh/ProtectedFastSSH$ExportActivity$2$8;->Iu([BIZII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x14

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static oiFk(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->oznh()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "31d574550383d8cd9f70a9b22284aee2"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "1024d8aac6da85f43cb9bd36d04045b6"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static oznh()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.hatunnel.plus"

    const-string v3, "app.fast.ssh.ProtectedFastSSH$MainActivity$3"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private qdD()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "crash_activity_ok"

    invoke-direct {p0, v1, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->i(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->y:Ljava/lang/String;

    const-string v0, "<p style=\"text-align: center\">This app cannot run because the environment is not secure and your data may be at risk.</p>"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_activity_2"

    invoke-direct {p0, v1, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->i(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->nkE:Ljava/lang/String;

    const-string v0, "<p style=\"text-align: center\">This app cannot run because it was not installed from an official platform. Please reinstall from an approved vendor (e.g. Google Play).</p>"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_activity_3"

    invoke-direct {p0, v1, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->i(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->Fco:Ljava/lang/String;

    const-string v0, "<p style=\"text-align: center\">This app cannot be run on an emulator. Please use an official device.</p>"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_activity_4"

    invoke-direct {p0, v1, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->i(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->G:Ljava/lang/String;

    const-string v0, "<p style=\"text-align: center\">This app stopped because it is not compatible with your device.<br/>Please try updating the app.</p>"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_activity_5"

    invoke-direct {p0, v1, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->i(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->h:Ljava/lang/String;

    const-string v0, "<p style=\"text-align: center\">This device does not currently meet the security requirements to use <b>{appName}</b>.</p><br/><p style=\"text-align: center\">Please share the QR code below with our support team.</p>"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_activity_6"

    invoke-direct {p0, v1, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->i(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->jh:Ljava/lang/String;

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_activity_ok_link"

    invoke-direct {p0, v1, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->i(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->HenB:Ljava/lang/String;

    const-string v0, "crash_activity_btn_color1"

    const-string v1, "crash_activity_btn_color2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->uwAa([Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->z:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    invoke-direct {p0, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->gi(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->z:[I

    :cond_1
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_activity_btn_text_color"

    invoke-direct {p0, v1, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->kg(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->tG:Ljava/lang/Integer;

    const-string v0, "crash_activity_btn_text_size"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->J:Ljava/lang/Float;

    const-string v0, "crash_activity_bg_color1"

    const-string v1, "crash_activity_bg_color2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->uwAa([Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->xz:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, ""

    invoke-direct {p0, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->gi(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->xz:[I

    :cond_3
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_activity_text_color"

    invoke-direct {p0, v1, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->kg(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->BwzH:Ljava/lang/Integer;

    const-string v0, "crash_activity_text_size"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->b:Ljava/lang/Float;

    const-string v0, "crash_activity_icon"

    const-string v1, ""

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->ee([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->v:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->toxt(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private toxt(Ljava/lang/String;)Ljava/lang/Float;
    .locals 11

    .prologue
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->samy:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "dip"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x5

    goto :goto_0

    :sswitch_1
    const-string v5, "sp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x4

    goto :goto_0

    :sswitch_2
    const-string v5, "px"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_3
    const-string v5, "pt"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v10, 0x2

    goto :goto_0

    :sswitch_4
    const-string v5, "mm"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v10, 0x1

    goto :goto_0

    :sswitch_5
    const-string v5, "in"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    :goto_0
    packed-switch v10, :pswitch_data_0

    return-object v2

    :pswitch_0
    invoke-static {v1, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {v8, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {v9, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {v7, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {v6, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {v3, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0xd25 -> :sswitch_5
        0xda0 -> :sswitch_4
        0xe04 -> :sswitch_3
        0xe08 -> :sswitch_2
        0xe5d -> :sswitch_1
        0x1848b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs uwAa([Ljava/lang/String;)[I
    .locals 8

    .prologue
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "color"

    invoke-virtual {v6, v5, v7, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v5}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->Jxdg(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method private wi(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/16 v0, 0x3f

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private ym()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private zq(I)Ljava/lang/String;
    .locals 1

    .prologue
    const/16 v0, 0x1000

    if-le p1, v0, :cond_0

    and-int/lit16 v0, p1, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->nkE:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method iBjB()[B
    .locals 5

    .prologue
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "4285d58a5e4b19f9fb486bfc7205776b"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "31d574550383d8cd9f70a9b22284aee2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "1024d8aac6da85f43cb9bd36d04045b6"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v1, "\n"

    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    iget-object p1, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->E:Landroid/net/Uri;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->E:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x103000c

    invoke-virtual {p0, p1}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->setTheme(I)V

    invoke-direct {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->qdD()V

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->xz:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->xz:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->HG()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setId(I)V

    iget-object v8, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x18

    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->HG()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setId(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->HenB:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->HenB:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->E:Landroid/net/Uri;

    :cond_1
    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v9, "ddf8c9e7ed5682a14325a08a03d09195"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    iget-object v5, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->jh:Ljava/lang/String;

    const-string v9, "{appName}"

    invoke-direct {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->ym()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->wi(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v9, "31d574550383d8cd9f70a9b22284aee2"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->zq(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->wi(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object v5, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->b:Ljava/lang/Float;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v8, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v5, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->BwzH:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v9, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->z:[I

    if-eqz v9, :cond_6

    array-length v9, v9

    if-lez v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_7

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v12, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->z:[I

    invoke-direct {v9, v11, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :goto_2
    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->HG()I

    move-result v12

    iput v12, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->xD:I

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->y:Ljava/lang/String;

    invoke-direct {p0, v12}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->wi(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v7, :cond_8

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0x1e

    const/16 v9, 0xa

    invoke-virtual {v11, v7, v9, v7, v9}, Landroid/widget/Button;->setPadding(IIII)V

    :cond_8
    iget-object v7, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->J:Ljava/lang/Float;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v11, v10, v7}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_9
    iget-object v7, p0, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->tG:Ljava/lang/Integer;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/widget/Button;->setTextColor(I)V

    :cond_a
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, v6}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->mu(Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v6, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1, v1}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method r(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/ProtectedFastSSH$MainActivity$3;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
