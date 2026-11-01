.class Lapp/fast/ssh/SettingsFragment$8;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


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


# direct methods
.method constructor <init>(Lapp/fast/ssh/SettingsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/SettingsFragment$8;->this$0:Lapp/fast/ssh/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    new-instance p1, Lapp/fast/ssh/dialog/ProxySettings;

    iget-object v0, p0, Lapp/fast/ssh/SettingsFragment$8;->this$0:Lapp/fast/ssh/SettingsFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lapp/fast/ssh/dialog/ProxySettings;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method
