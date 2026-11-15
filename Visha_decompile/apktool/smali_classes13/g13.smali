.class public final synthetic Lg13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg13;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lg13;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->u0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
