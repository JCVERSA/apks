.class public final Lrkc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfw4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/transsion/playercommon/share/model/SharePlatformInfo;
    .locals 7

    new-instance p0, Lcom/transsion/playercommon/share/model/SharePlatformInfo;

    sget-object v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->WHATSAPP:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    invoke-virtual {v0}, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/transsion/playercommon/share/model/ShareOption;->WHATSAPP:Lcom/transsion/playercommon/share/model/ShareOption;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/playercommon/share/model/SharePlatformInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/transsion/playercommon/share/model/ShareOption;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public b(Landroid/content/Context;Lcom/transsion/playercommon/share/model/ShareContent;Lcom/transsion/playercommon/share/model/ShareOption;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "option"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkf;->a:Lkf;

    invoke-virtual {p2}, Lcom/transsion/playercommon/share/model/ShareContent;->getMimeType()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p3, "text/plain"

    :cond_0
    invoke-virtual {p0, p2, p3}, Lkf;->b(Lcom/transsion/playercommon/share/model/ShareContent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object p2, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->WHATSAPP:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    invoke-virtual {p2}, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "Share to WhatsApp"

    invoke-static {p0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
