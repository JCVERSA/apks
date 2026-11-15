.class public final Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lid4;
    .locals 0

    invoke-static {}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i()Lid4;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$d;

    invoke-direct {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$d;-><init>()V

    invoke-static {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->s(Lid4;)V

    :cond_0
    invoke-static {}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i()Lid4;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "navigation_mode"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public final c()Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;
    .locals 0

    new-instance p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-direct {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;-><init>()V

    return-object p0
.end method

.method public final d(Lid4;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->s(Lid4;)V

    :cond_0
    invoke-static {}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i()Lid4;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$d;

    invoke-direct {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$d;-><init>()V

    invoke-static {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->s(Lid4;)V

    :cond_1
    return-void
.end method
