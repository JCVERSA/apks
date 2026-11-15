.class public abstract Lcom/transsion/transsion_gdpr/GdprUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u200b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    :goto_0
    if-lt p0, v2, :cond_4

    const-string v3, "\uff0c\u3002\uff01\uff1f\uff1b\uff1a\u3001,.!?;:\uff09\u3011\u300b\u300d\u300f%)]}\u00bb\"\'\u201d\u2019"

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p0, -0x1

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v0, v3, p0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const-string v4, "\u2060"

    invoke-virtual {v0, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    return-object p0
.end method

.method public static b()Lid4;
    .locals 1

    invoke-static {}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->L()Lid4;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lid4;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->m0(Lid4;)V

    return-void
.end method

.method public static d(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "privacy_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/app/FragmentManager;)V
    .locals 1

    const-string v0, "privacy_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public static f(Landroid/app/FragmentManager;Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V
    .locals 2

    invoke-static {}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->a0()Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->o0(Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    move-result-object p1

    const-string v0, "privacy_fragment_tag"

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->s0(Landroid/app/FragmentManager;Ljava/lang/String;Z)V

    return-void
.end method

.method public static g(Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V
    .locals 1

    invoke-static {}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->a0()Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->o0(Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    move-result-object p2

    const-string v0, "privacy_fragment_tag"

    invoke-virtual {p2, p0, v0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->s0(Landroid/app/FragmentManager;Ljava/lang/String;Z)V

    return-void
.end method
