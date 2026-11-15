.class public final synthetic Llf9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lt14;


# direct methods
.method public synthetic constructor <init>(Lt14;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llf9;->a:Lt14;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Llf9;->a:Lt14;

    invoke-static {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->g0(Lt14;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
