.class public Lapp/fast/ssh/SettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lapp/fast/ssh/SettingsFragment;->isValidIPAddress(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isValidIPAddress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const-string/jumbo v0, "\u2fab"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onCreatePreferences$0(Landroidx/preference/EditTextPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreatePreferences$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .prologue
    const p1, 0x7f150008

    invoke-virtual {p0, p1, p2}, Lapp/fast/ssh/SettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string/jumbo p1, "\u2fac"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lapp/fast/ssh/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/EditTextPreference;

    const-string/jumbo v0, "\u2fad"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lapp/fast/ssh/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    const-string/jumbo v2, "\u2fae"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lapp/fast/ssh/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    new-instance v3, Lapp/fast/ssh/SettingsFragment$1;

    invoke-direct {v3, p0, p2, v1}, Lapp/fast/ssh/SettingsFragment$1;-><init>(Lapp/fast/ssh/SettingsFragment;Landroidx/preference/EditTextPreference;Landroidx/preference/EditTextPreference;)V

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v3, Lapp/fast/ssh/SettingsFragment$2;

    invoke-direct {v3, p0, p2}, Lapp/fast/ssh/SettingsFragment$2;-><init>(Lapp/fast/ssh/SettingsFragment;Landroidx/preference/EditTextPreference;)V

    invoke-virtual {p2, v3}, Landroidx/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v3, Lapp/fast/ssh/SettingsFragment$3;

    invoke-direct {v3, p0, v1}, Lapp/fast/ssh/SettingsFragment$3;-><init>(Lapp/fast/ssh/SettingsFragment;Landroidx/preference/EditTextPreference;)V

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lapp/fast/ssh/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-virtual {p2, v4}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    invoke-virtual {v2}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    const-string v2, ""

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u2faf"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lapp/fast/ssh/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_0

    new-instance p2, Lapp/fast/ssh/SettingsFragment$4;

    invoke-direct {p2, p0}, Lapp/fast/ssh/SettingsFragment$4;-><init>(Lapp/fast/ssh/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string/jumbo p1, "\u2fb0"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lapp/fast/ssh/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p2, Lapp/fast/ssh/SettingsFragment$5;

    invoke-direct {p2, p0, p1}, Lapp/fast/ssh/SettingsFragment$5;-><init>(Lapp/fast/ssh/SettingsFragment;Landroidx/preference/ListPreference;)V

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "\u2fb1"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lapp/fast/ssh/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    const-string/jumbo p2, "\u2fb2"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lapp/fast/ssh/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/EditTextPreference;

    new-instance v0, Lapp/fast/ssh/SettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lapp/fast/ssh/SettingsFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/EditTextPreference;)V

    invoke-virtual {p1, v0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p1}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    new-instance p1, Lapp/fast/ssh/SettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lapp/fast/ssh/SettingsFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, p1}, Landroidx/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "\u2fb3"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lapp/fast/ssh/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p2, Lapp/fast/ssh/SettingsFragment$6;

    invoke-direct {p2, p0, p1}, Lapp/fast/ssh/SettingsFragment$6;-><init>(Lapp/fast/ssh/SettingsFragment;Landroidx/preference/ListPreference;)V

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "\u2fb4"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lapp/fast/ssh/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    const-string/jumbo p2, "\u2fb5"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lapp/fast/ssh/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    new-instance v0, Lapp/fast/ssh/SettingsFragment$7;

    invoke-direct {v0, p0, p2}, Lapp/fast/ssh/SettingsFragment$7;-><init>(Lapp/fast/ssh/SettingsFragment;Landroidx/preference/Preference;)V

    invoke-virtual {p1, v0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p1}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    new-instance p1, Lapp/fast/ssh/SettingsFragment$8;

    invoke-direct {p1, p0}, Lapp/fast/ssh/SettingsFragment$8;-><init>(Lapp/fast/ssh/SettingsFragment;)V

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "\u2fb6"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lapp/fast/ssh/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p2, Lapp/fast/ssh/SettingsFragment$9;

    invoke-direct {p2, p0, p1}, Lapp/fast/ssh/SettingsFragment$9;-><init>(Lapp/fast/ssh/SettingsFragment;Landroidx/preference/ListPreference;)V

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
