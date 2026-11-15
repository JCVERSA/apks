.class public Lp1d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp1d;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/webkit/JsResult;

.field public final synthetic c:Lp1d;


# direct methods
.method public constructor <init>(Lp1d;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lp1d$a;->c:Lp1d;

    iput-object p2, p0, Lp1d$a;->b:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lp1d$a;->b:Landroid/webkit/JsResult;

    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
