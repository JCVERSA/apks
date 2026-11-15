.class public Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/webkit/SslErrorHandler;

.field public final synthetic c:Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a$a;->c:Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a$a;->b:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a$a;->b:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->proceed()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
