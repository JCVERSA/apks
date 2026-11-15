.class public final Ludj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwye;


# instance fields
.field public final synthetic a:Lxye;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzs;Lxye;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Ludj;->a:Lxye;

    iput-object p3, p0, Ludj;->b:Landroid/content/Context;

    iput-object p4, p0, Ludj;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget-object v0, p0, Ludj;->a:Lxye;

    invoke-virtual {v0}, Lxye;->a()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v1

    new-instance v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v2, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    invoke-virtual {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    iget-object v2, v1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v3, p0, Ludj;->b:Landroid/content/Context;

    invoke-static {v3}, Lwyi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Ludj;->c:Landroid/net/Uri;

    invoke-virtual {v1, v3, p0}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lxye;->f(Landroid/app/Activity;)V

    return-void
.end method
