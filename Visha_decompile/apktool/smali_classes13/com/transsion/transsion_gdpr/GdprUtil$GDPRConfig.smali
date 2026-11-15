.class public Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transsion_gdpr/GdprUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GDPRConfig"
.end annotation


# static fields
.field public static final GDPR_STYLE_DIALOG:I = 0x0

.field public static final GDPR_STYLE_PAGE:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private announcementText:Ljava/lang/String;

.field private appIconBitmapConfig:Ljava/lang/String;

.field private appIconBitmapData:[B

.field private appIconBitmapHeight:I

.field private appIconBitmapWidth:I

.field private appIconResId:I

.field private clickPrivacyPolicyText:Ljava/lang/String;

.field private clickUserAgreementText:Ljava/lang/String;

.field private contentText:Ljava/lang/String;

.field private gdprStyle:I

.field private ignoreUserExperience:Z

.field private mIsDelSpaceFromAgree:Z

.field private mIsDelSpaceFromAnnouncement:Z

.field private mIsDelSpaceFromCancel:Z

.field private mIsDelSpaceFromContent:Z

.field private mIsDelSpaceFromTitle:Z

.field private negativeButtonText:Ljava/lang/String;

.field private paddingTop:I

.field private positiveButtonText:Ljava/lang/String;

.field private sloganText:Ljava/lang/String;

.field private titleText:Ljava/lang/String;

.field private useLocalDirection:Z

.field private verticalMargin:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->paddingTop:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->verticalMargin:F

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->gdprStyle:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->paddingTop:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->verticalMargin:F

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->gdprStyle:I

    .line 9
    iput-object p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->titleText:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->contentText:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->announcementText:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->clickUserAgreementText:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->clickPrivacyPolicyText:Ljava/lang/String;

    return-void
.end method

.method private clearAppIconBitmapData()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapData:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapWidth:I

    iput v1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapHeight:I

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapConfig:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnnouncementText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->announcementText:Ljava/lang/String;

    return-object p0
.end method

.method public getAppIconBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapData:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapHeight:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapConfig:Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget v1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapWidth:I

    iget v2, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapHeight:I

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapData:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppIconResId()I
    .locals 0

    iget p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconResId:I

    return p0
.end method

.method public getClickPrivacyPolicyText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->clickPrivacyPolicyText:Ljava/lang/String;

    return-object p0
.end method

.method public getClickUserAgreementText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->clickUserAgreementText:Ljava/lang/String;

    return-object p0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->contentText:Ljava/lang/String;

    return-object p0
.end method

.method public getDelSpaceFromAgree()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->mIsDelSpaceFromAgree:Z

    return p0
.end method

.method public getDelSpaceFromAnnouncement()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->mIsDelSpaceFromAnnouncement:Z

    return p0
.end method

.method public getDelSpaceFromCancel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->mIsDelSpaceFromCancel:Z

    return p0
.end method

.method public getDelSpaceFromContent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->mIsDelSpaceFromContent:Z

    return p0
.end method

.method public getDelSpaceFromTitle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->mIsDelSpaceFromTitle:Z

    return p0
.end method

.method public getDialogWindowVerticalMargin()F
    .locals 0

    iget p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->verticalMargin:F

    return p0
.end method

.method public getGdprStyle()I
    .locals 0

    iget p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->gdprStyle:I

    return p0
.end method

.method public getNegativeButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->negativeButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->positiveButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getSloganText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->sloganText:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->titleText:Ljava/lang/String;

    return-object p0
.end method

.method public getWindowPaddingTop()I
    .locals 0

    iget p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->paddingTop:I

    return p0
.end method

.method public isIgnoreUserExperience()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->ignoreUserExperience:Z

    return p0
.end method

.method public isUseLocalDirection()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->useLocalDirection:Z

    return p0
.end method

.method public setAnnouncementText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->announcementText:Ljava/lang/String;

    return-void
.end method

.method public setAppIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->clearAppIconBitmapData()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapData:[B

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapHeight:I

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconBitmapConfig:Ljava/lang/String;

    iput v1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconResId:I

    return-void
.end method

.method public setAppIconResId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->appIconResId:I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->clearAppIconBitmapData()V

    :cond_0
    return-void
.end method

.method public setClickPrivacyPolicyText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->clickPrivacyPolicyText:Ljava/lang/String;

    return-void
.end method

.method public setClickUserAgreementText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->clickUserAgreementText:Ljava/lang/String;

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->contentText:Ljava/lang/String;

    return-void
.end method

.method public setDelSpaceFromAgree(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->mIsDelSpaceFromAgree:Z

    return-void
.end method

.method public setDelSpaceFromAnnouncement(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->mIsDelSpaceFromAnnouncement:Z

    return-void
.end method

.method public setDelSpaceFromCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->mIsDelSpaceFromCancel:Z

    return-void
.end method

.method public setDelSpaceFromContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->mIsDelSpaceFromContent:Z

    return-void
.end method

.method public setDelSpaceFromTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->mIsDelSpaceFromTitle:Z

    return-void
.end method

.method public setDialogWindowVerticalMargin(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->verticalMargin:F

    return-void
.end method

.method public setGdprStyle(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->gdprStyle:I

    return-void
.end method

.method public setIgnoreUserExperience(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->ignoreUserExperience:Z

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->negativeButtonText:Ljava/lang/String;

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->positiveButtonText:Ljava/lang/String;

    return-void
.end method

.method public setSloganText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->sloganText:Ljava/lang/String;

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->titleText:Ljava/lang/String;

    return-void
.end method

.method public setUseLocalDirection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->useLocalDirection:Z

    return-void
.end method

.method public setWindowPaddingTop(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->paddingTop:I

    return-void
.end method
