.class public final synthetic Lwxe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk3i;


# instance fields
.field public final synthetic b:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwxe;->b:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lwxe;->b:Landroid/content/SharedPreferences;

    const-string v0, "app_settings_json"

    const-string v1, "{}"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
