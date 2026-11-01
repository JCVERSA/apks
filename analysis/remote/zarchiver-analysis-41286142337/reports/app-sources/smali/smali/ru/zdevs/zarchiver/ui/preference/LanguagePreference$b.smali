.class public final Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/preference/LanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/LocaleList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "layout_inflater"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/view/LayoutInflater;

    .line 11
    .line 12
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;->a:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;->b:Landroid/os/LocaleList;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/Locale;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;->b:Landroid/os/LocaleList;

    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;->b:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;->b:Landroid/os/LocaleList;

    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;->a:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    const v1, 0x109000f

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b$a;

    .line 14
    .line 15
    invoke-direct {p3}, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b$a;-><init>()V

    .line 16
    .line 17
    .line 18
    const v0, 0x1020014

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 26
    .line 27
    iput-object v0, p3, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b$a;->a:Landroid/widget/CheckedTextView;

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b$a;

    .line 38
    .line 39
    :goto_0
    iget-object p3, p3, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b$a;->a:Landroid/widget/CheckedTextView;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;->a(I)Ljava/util/Locale;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->a(Ljava/util/Locale;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    return-object p2
.end method
