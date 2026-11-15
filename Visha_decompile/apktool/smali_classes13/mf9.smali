.class public final synthetic Lmf9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;

.field public final synthetic b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf9;->a:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;

    iput-object p2, p0, Lmf9;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmf9;->a:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;

    iget-object p0, p0, Lmf9;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->h0(Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
