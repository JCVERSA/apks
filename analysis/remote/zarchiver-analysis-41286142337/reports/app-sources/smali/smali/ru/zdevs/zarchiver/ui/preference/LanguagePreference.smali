.class public Lru/zdevs/zarchiver/ui/preference/LanguagePreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/app/LocaleManager;

.field public final b:Landroid/os/LocaleList;

.field public c:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "locale"

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/app/LocaleManager;

    .line 11
    .line 12
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->a:Landroid/app/LocaleManager;

    .line 13
    .line 14
    const-string p2, "_"

    .line 15
    .line 16
    const-string v0, "-"

    .line 17
    .line 18
    const-string v1, "ar,az,bg,zh_CN,zh_TW,hr,cs,da,en,fr,ka_GE,de,el,hi,hu,in,it,ja,ky,ko,lt,fa,pl,pt_BR,ru,sr,sk,es,th_TH,tr,ug,uk,uz,vi"

    .line 19
    .line 20
    invoke-virtual {v1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->b:Landroid/os/LocaleList;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/LocaleManager;->getApplicationLocales()Landroid/os/LocaleList;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->c:Ljava/util/Locale;

    .line 48
    .line 49
    return-void
.end method

.method public static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "Default"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/Locale;

    .line 7
    .line 8
    const-string v1, "en"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final onBindView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->c:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0}, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->a(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onDialogClosed(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->c:Ljava/util/Locale;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->a:Landroid/app/LocaleManager;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/app/LocaleManager;->setApplicationLocales(Landroid/os/LocaleList;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->c:Ljava/util/Locale;

    .line 27
    .line 28
    invoke-static {p1}, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->a(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->b:Landroid/os/LocaleList;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;-><init>(Landroid/content/Context;Landroid/os/LocaleList;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->c:Ljava/util/Locale;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->indexOf(Ljava/util/Locale;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    new-instance v2, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$a;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$a;-><init>(Lru/zdevs/zarchiver/ui/preference/LanguagePreference;Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    .line 34
    .line 35
    return-void
.end method
