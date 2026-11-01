.class public Lapp/fast/ssh/dialog/ProxySettings;
.super Ljava/lang/Object;
.source "ProxySettings.java"


# static fields
.field public static final KEY_PARENT_PROXY_HOST:Ljava/lang/String;

.field public static final KEY_PARENT_PROXY_PORT:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u3170"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/dialog/ProxySettings;->KEY_PARENT_PROXY_HOST:Ljava/lang/String;

    const-string/jumbo v0, "\u3171"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/dialog/ProxySettings;->KEY_PARENT_PROXY_PORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/dialog/ProxySettings;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/dialog/ProxySettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c009c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lapp/fast/ssh/dialog/ProxySettings;->view:Landroid/view/View;

    const v2, 0x7f0901ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0901f0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lapp/fast/ssh/dialog/ProxySettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "\u3170"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lapp/fast/ssh/dialog/ProxySettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "\u3171"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "\u3172"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v4, Lapp/fast/ssh/dialog/ProxySettings$1;

    invoke-direct {v4, p0, v2, v3, p1}, Lapp/fast/ssh/dialog/ProxySettings$1;-><init>(Lapp/fast/ssh/dialog/ProxySettings;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;)V

    const-string/jumbo p1, "\u3173"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lapp/fast/ssh/dialog/ProxySettings$2;

    invoke-direct {p1, p0}, Lapp/fast/ssh/dialog/ProxySettings$2;-><init>(Lapp/fast/ssh/dialog/ProxySettings;)V

    const-string/jumbo v2, "\u3174"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/dialog/ProxySettings;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/ProxySettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method
