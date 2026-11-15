.class final Lcom/doman/core/webview/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/webview/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/webview/b;


# direct methods
.method public constructor <init>(Lcom/doman/core/webview/b;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/webview/b$1;->a:Lcom/doman/core/webview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/doman/core/webview/b$1;->a:Lcom/doman/core/webview/b;

    invoke-static {p0}, Lcom/doman/core/webview/b;->a(Lcom/doman/core/webview/b;)V

    return-void
.end method
