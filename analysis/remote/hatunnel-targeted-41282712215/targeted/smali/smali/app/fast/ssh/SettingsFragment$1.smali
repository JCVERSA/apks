.class Lapp/fast/ssh/SettingsFragment$1;
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

.field final synthetic val$primaryDns:Landroidx/preference/EditTextPreference;

.field final synthetic val$secondaryDns:Landroidx/preference/EditTextPreference;


# direct methods
.method constructor <init>(Lapp/fast/ssh/SettingsFragment;Landroidx/preference/EditTextPreference;Landroidx/preference/EditTextPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/SettingsFragment$1;->this$0:Lapp/fast/ssh/SettingsFragment;

    iput-object p2, p0, Lapp/fast/ssh/SettingsFragment$1;->val$primaryDns:Landroidx/preference/EditTextPreference;

    iput-object p3, p0, Lapp/fast/ssh/SettingsFragment$1;->val$secondaryDns:Landroidx/preference/EditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object p1, p0, Lapp/fast/ssh/SettingsFragment$1;->val$primaryDns:Landroidx/preference/EditTextPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object p1, p0, Lapp/fast/ssh/SettingsFragment$1;->val$secondaryDns:Landroidx/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method
