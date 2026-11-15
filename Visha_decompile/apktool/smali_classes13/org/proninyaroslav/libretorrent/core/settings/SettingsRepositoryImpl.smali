.class public Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl$Default;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/SharedPreferences;

.field public c:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->c:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic f0(Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;Lt14;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->j0(Lt14;)V

    return-void
.end method

.method public static synthetic g0(Lt14;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->i0(Lt14;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h0(Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->lambda$observeSettingsChanged$1(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static synthetic i0(Lt14;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0}, Lt14;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0, p2}, Lk93;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$observeSettingsChanged$1(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_ip_filtering:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public B()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_port_range_second:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0xdeb2

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_proxy_address:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public D()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_log_dht_filter:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public E()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enc_out_connections:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public F()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_proxy_requires_auth:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public G()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_port_range_first:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x9088

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public H()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_use_random_port:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public I()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_active_torrents:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public J()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->c:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v3, Lcom/transsion/bt_download/R$string;->pref_key_dir_to_watch:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl$Default;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public K()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_cpu_do_not_sleep:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public L()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_log_size:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2710

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public M()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_anonymous_mode:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public N()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_watch_dir:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public O()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_natpmp:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public P()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_log_portmap_filter:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public Q()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_shutdown_downloads_complete:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public R()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_upload_speed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public S(Z)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_apply_proxy:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public T()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_download_speed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public U()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->c:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v3, Lcom/transsion/bt_download/R$string;->pref_key_save_torrents_in:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl$Default;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public V()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->c:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v2, Lcom/transsion/bt_download/R$string;->pref_key_ip_filtering_file:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl$Default;->c:Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public W()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_auto_manage:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public X()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_connections:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xc8

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public Y()Lr14;
    .locals 1

    new-instance v0, Lkf9;

    invoke-direct {v0, p0}, Lkf9;-><init>(Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;)V

    sget-object p0, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, p0}, Lr14;->b(Lw14;Lio/reactivex/BackpressureStrategy;)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public Z()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_logging:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl$Default;->e:Z

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public a()I
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v2, Lcom/transsion/bt_download/R$string;->pref_key_enc_mode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl$Default;->b(Landroid/content/Context;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public a0()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_save_torrent_files:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->c:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v3, Lcom/transsion/bt_download/R$string;->pref_key_save_torrent_files_in:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl$Default;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_default_trackers_list:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_proxy_type:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget v1, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl$Default;->d:I

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public c0()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_uploads_per_torrent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_dht:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public d0()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;
    .locals 4

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;-><init>()V

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->R()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->m:I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->X()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->f:I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->o()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->g:I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->c0()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->h:I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->l()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->a:I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->e0()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->b:I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->I()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->i:I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->G()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->j:I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->B()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->k:I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->d()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->n:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->e()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->o:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->r()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->p:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->z()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->q:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->O()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->r:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->w()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->s:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->E()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->t:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a()I

    move-result v1

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;->fromValue(I)Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    move-result-object v1

    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->u:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->W()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->v:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->M()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->E:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->t()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->F:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->H()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->N:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->O:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->O:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->q()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->P:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->k0()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->Q:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->c()I

    move-result v1

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;->fromValue(I)Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    move-result-object v1

    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->x:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->C()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->y:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->v()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->z:I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->i()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->A:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->F()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->B:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->C:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->D:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->Z()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->G:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->L()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->H:I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->h()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->I:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->D()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->J:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->x()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->K:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->P()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->L:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->j()Z

    move-result p0

    iput-boolean p0, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->M:Z

    return-object v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_lsd:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public e0()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_active_uploads:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_streaming_hostname:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "127.0.0.1"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_proxy_login:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_log_session_filter:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_proxy_peers_too:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_log_torrent_filter:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final synthetic j0(Lt14;)V
    .locals 2

    new-instance v0, Llf9;

    invoke-direct {v0, p1}, Llf9;-><init>(Lt14;)V

    invoke-interface {p1}, Lt14;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    new-instance v1, Lmf9;

    invoke-direct {v1, p0, v0}, Lmf9;-><init>(Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {v1}, Lio/reactivex/disposables/a;->c(Ld5;)Lrc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lt14;->setDisposable(Lrc2;)V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_streaming_enable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public k0()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_posix_disk_io:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_active_downloads:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_watch_dir_delete_file:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public n()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->c:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v3, Lcom/transsion/bt_download/R$string;->pref_key_move_after_download_in:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl$Default;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_connections_per_torrent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x28

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_streaming_port:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2260

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public q()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_validate_https_trackers:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public r()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_utp:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_move_after_download:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_seeding_outgoing_connections:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_apply_proxy:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public v()I
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_proxy_port:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1f90

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enc_in_connections:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_log_peer_filter:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public y()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_proxy_password:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->b:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_upnp:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
