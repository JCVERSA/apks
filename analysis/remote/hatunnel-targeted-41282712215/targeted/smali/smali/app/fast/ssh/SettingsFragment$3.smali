.class Lapp/fast/ssh/SettingsFragment$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/SettingsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/SettingsFragment;

.field final synthetic val$secondaryDns:Landroidx/preference/EditTextPreference;


# direct methods
.method constructor <init>(Lapp/fast/ssh/SettingsFragment;Landroidx/preference/EditTextPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/SettingsFragment$3;->this$0:Lapp/fast/ssh/SettingsFragment;

    iput-object p2, p0, Lapp/fast/ssh/SettingsFragment$3;->val$secondaryDns:Landroidx/preference/EditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lapp/fast/ssh/SettingsFragment;->access$000(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/SettingsFragment$3;->this$0:Lapp/fast/ssh/SettingsFragment;

    invoke-virtual {p1}, Lapp/fast/ssh/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "\u2fa4"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    :cond_0
    iget-object p1, p0, Lapp/fast/ssh/SettingsFragment$3;->val$secondaryDns:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method
