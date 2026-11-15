.class public final synthetic Ler9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lfr9;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lfr9;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ler9;->b:Lfr9;

    iput-object p2, p0, Ler9;->c:Landroid/webkit/WebView;

    iput-object p3, p0, Ler9;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ler9;->b:Lfr9;

    iget-object v1, p0, Ler9;->c:Landroid/webkit/WebView;

    iget-object p0, p0, Ler9;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lfr9;->a(Lfr9;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
