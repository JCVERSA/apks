.class public final synthetic Lkf9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw14;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkf9;->a:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;

    return-void
.end method


# virtual methods
.method public final subscribe(Lt14;)V
    .locals 0

    iget-object p0, p0, Lkf9;->a:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;->f0(Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;Lt14;)V

    return-void
.end method
