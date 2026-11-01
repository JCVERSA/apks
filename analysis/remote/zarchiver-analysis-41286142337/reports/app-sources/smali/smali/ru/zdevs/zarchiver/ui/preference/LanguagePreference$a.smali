.class public final Lru/zdevs/zarchiver/ui/preference/LanguagePreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;

.field public final synthetic b:Lru/zdevs/zarchiver/ui/preference/LanguagePreference;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/preference/LanguagePreference;Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$a;->b:Lru/zdevs/zarchiver/ui/preference/LanguagePreference;

    iput-object p2, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$a;->a:Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$a;->a:Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$b;->a(I)Ljava/util/Locale;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference$a;->b:Lru/zdevs/zarchiver/ui/preference/LanguagePreference;

    .line 8
    .line 9
    iput-object p2, v0, Lru/zdevs/zarchiver/ui/preference/LanguagePreference;->c:Ljava/util/Locale;

    .line 10
    .line 11
    const/4 p2, -0x1

    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
